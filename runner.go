package sqlrunner

import (
	"fmt"
	"os"
	"path/filepath"
	"sort"
	"strings"

	"gorm.io/gorm"
)

// RunSQLFile Execute a single SQL file (supporting multiple statements)
func RunSQLFile(db *gorm.DB, filePath string) error {
	content, err := os.ReadFile(filePath)
	if err != nil {
		return fmt.Errorf("failed to read SQL file %s: %w", filePath, err)
	}
	return runSQLText(db, string(content))
}

// RunSQLDir All.sql files in the RunSQLDir execution directory (sorted by file name)
func RunSQLDir(db *gorm.DB, dirPath string) error {
	files, err := filepath.Glob(filepath.Join(dirPath, "*.sql"))
	if err != nil {
		return fmt.Errorf("failed to read SQL dir %s: %w", dirPath, err)
	}
	if len(files) == 0 {
		return fmt.Errorf("no SQL files found in dir: %s", dirPath)
	}
	sort.Strings(files)

	for _, file := range files {
		if err := RunSQLFile(db, file); err != nil {
			return fmt.Errorf("error executing %s: %w", file, err)
		}
	}
	return nil
}

// runSQLText Internal general processing logic
func runSQLText(db *gorm.DB, sqlText string) error {
	// Clean up the carriage return in Windows
	sqlText = strings.ReplaceAll(sqlText, "\r", "")

	db.Exec("SET FOREIGN_KEY_CHECKS = 0;")
	defer db.Exec("SET FOREIGN_KEY_CHECKS = 1;")

	statements := strings.Split(sqlText, ";")
	for _, stmt := range statements {
		stmt = strings.TrimSpace(stmt)
		if stmt == "" {
			continue
		}
		if err := db.Exec(stmt).Error; err != nil {
			return fmt.Errorf("failed to execute SQL: %w\nSQL: %s", err, stmt)
		}
	}
	return nil
}
