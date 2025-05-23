package runner

import (
	"gorm.io/driver/mysql"
	"gorm.io/gorm"
	"testing"
)

func TestRunSQLFile(t *testing.T) {
	dsn := "root:123456@(127.0.0.1:3306)/talk?charset=utf8mb4&parseTime=True&loc=Local"
	db, err := gorm.Open(mysql.Open(dsn), &gorm.Config{})
	if err != nil {
		panic(err)
	}
	err = RunSQLFile(db, "../user.sql")
	if err != nil {
		t.Fatal(err)
		return
	}
	t.Log("success")
}
