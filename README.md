# 🐳 MySQL + phpMyAdmin + React + Docker Setup Guide

---

## 🚀 Run Project

```bash
./run.sh
````

---

## 🌐 Access URLs

* **phpMyAdmin:** [http://localhost:8080/](http://localhost:8080/)
* **React Demo App:** [http://localhost:3000/](http://localhost:3000/)
* **MySQL:** [http://localhost:3306/](http://localhost:3306/) (not browser accessible)

> MySQL is accessed via phpMyAdmin or container terminal (see below)

---

# 🛑 Stop Containers

## Stop containers (keep data)

```bash
docker compose down
```

### Explanation:

* Containers are removed ❌
* Database data is still preserved ✅ (stored in volume)

---

## Stop containers + delete database

```bash
docker compose down -v
```

### Explanation:

* Volume is deleted ❌
* All database data is lost ❌
* Fresh reset on next start

---

# 🖥️ Access Container Terminal

## MySQL container terminal

```bash
docker exec -it mysql8 bash
```

## phpMyAdmin container terminal

```bash
docker exec -it phpmyadmin sh
```

---

# 📋 List Running Containers

```bash
docker ps
```

---

# ⚙️ MySQL Configuration (.env)

Edit `.env` file:

```env
MYSQL_ROOT_PASSWORD=rootpassword
MYSQL_DATABASE=test_database_name
MYSQL_USER=admin
MYSQL_PASSWORD=admin123

DB_PORT=3306
PMA_PORT=8080
```

---

## 🧠 Explanation

* `PMA` = phpMyAdmin
* phpMyAdmin is a web-based interface to manage MySQL databases

---

# 🔄 After Changing Database Name

If you change database configuration:

```bash
docker compose down -v
docker compose up
```

---

# 🧹 Rebuild Docker Images (clean build)

```bash
docker compose build --no-cache
```

### Explanation:

* Rebuilds all images from scratch
* Ignores Docker cache
* Useful when fixing build issues

---

# ⚛️ Frontend Requirements

Make sure these files exist:

```text
frontend/Dockerfile
frontend/.dockerignore
```

---

# 📌 Summary

| Command                           | Description                 |
| --------------------------------- | --------------------------- |
| `docker compose up`               | Start all services          |
| `docker compose down`             | Stop containers (keep data) |
| `docker compose down -v`          | Stop + delete database      |
| `docker compose build --no-cache` | Full rebuild                |
| `docker ps`                       | Show running containers     |

---

# Notes

* MySQL data is stored in Docker volume
* phpMyAdmin is only a UI layer
* React runs separately in its own container

---


