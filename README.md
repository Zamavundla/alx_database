# Project Name: MySQL Basics

## Requirements

### General
- **Recommended editors:** Visual Studio Code
- All files will be executed on Ubuntu 20.04 LTS using MySQL 5.7 (version 5.7.8-rc)
- All files should end with a new line
- All SQL queries should have a comment just before (i.e. syntax above)
- All files should start with a comment describing the task
- All SQL keywords should be in uppercase (SELECT, WHERE...)
- A `README.md` file, at the root of the project folder, is mandatory
- The length of your files will be tested using `wc`

### Comments for your SQL file:
Example:
```sql
-- Retrieve the 3 first students in the Batch ID=3
SELECT id, name FROM students WHERE batch_id = 3 ORDER BY created_at DESC LIMIT 3;
```

## How to Install MySQL on Ubuntu 20.04 LTS

1. Add the MySQL repository:
   ```
   echo 'deb http://repo.mysql.com/apt/ubuntu/ trusty mysql-5.7-dmr' | sudo tee -a /etc/apt/sources.list
   ```

2. Update package information:
   ```
   sudo apt-get update
   ```

3. Install MySQL Server 5.7:
   ```
   sudo apt-get install mysql-server-5.7
   ```

4. Check MySQL version:
   ```
   mysql --version
   ```

5. Connect to your MySQL server:
   ```
   mysql -hlocalhost -uroot -p
   ```

   Note: Don't forget your root password.

6. Start MySQL service:
   ```
   service mysql start
   ```

## Running MySQL in a Docker Container

1. Use "container-on-demand" to run MySQL:
   - Ask for container Ubuntu 20.04 - Python 3.4
   - Connect via SSH or use the Web terminal

2. In the container, start MySQL before using it:
   ```
   service mysql start
   ```

3. Use the following command to execute SQL scripts on the database:
   ```
   cat your_script.sql | mysql -uroot -p your_database
   ```

## Important Notes

- The provided root credentials in the container are: root/root

## Authors

ALX Team 
Intro to Software Engineering 20hrs
Student Zamavunla Duze


