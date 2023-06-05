CREATE DATABASE IF NOT EXISTS app;
USE app;

-- Tabla de usuarios
CREATE TABLE IF NOT EXISTS user (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  email VARCHAR(50) NOT NULL,
  contrasena VARCHAR(100) NOT NULL,
  UNIQUE (nombre),
  UNIQUE (email)
);

-- Tabla de tareas
CREATE TABLE IF NOT EXISTS task (
  id INT AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(100) NOT NULL,
  description TEXT,
  user_id INT,
  fecha_creacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  fecha_actualizacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  FOREIGN KEY (user_id) REFERENCES user(id)
);
