# sqlrunner

🛠️ A lightweight utility to run `.sql` files using GORM. Supports both individual SQL files and directories containing multiple SQL files. Automatically disables foreign key checks for smooth execution of schema and data initialization scripts.

---

## ✨ Features

- ✅ Run a single `.sql` file or an entire directory of `.sql` files
- ✅ Multi-statement support (splits SQL content by `;`)
- ✅ Automatically disables/enables foreign key checks
- ✅ Removes Windows line endings (`\r`) for cross-platform compatibility
- ✅ Sorted execution order when running multiple SQL files

---

## 📦 Installation

```bash
go get github.com/BarnabyCharles/sqlrunner
