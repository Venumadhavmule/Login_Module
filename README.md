# Login Module

This repository contains a simple **Login and Registration** module developed using **JSP**, **Servlets**, **HTML**, **CSS**, **MySQL**, and **Java**. It allows users to register, log in, and maintain session management for authentication purposes.

## Screenshots

| **Login Page**         | **Registration Page**   |
|------------------------|-------------------------|
| ![Login Screenshot](src/main/Screenshots/login.png)   | ![Registration Screenshot](src/main/Screenshots/registration.png) |

<!-- | **Welcome Page**       | **About Us Page**       |
|------------------------|-------------------------|
| ![Welcome Screenshot](path/to/welcome_screenshot.png) | ![About Us Screenshot](path/to/aboutus_screenshot.png) | -->

## Features

- **User Registration**: New users can register by providing their details.
- **User Login**: Registered users can log in using their credentials.
- **Session Management**: After login, user sessions are managed to ensure secure authentication.
- **Logout**: Users can securely log out, and their session will be invalidated.
- **Password Hashing**: User passwords are stored securely using hashing techniques.

## Tech Stack

- **Frontend**: HTML, CSS
- **Backend**: JSP, Servlets, Java
- **Database**: MySQL
- **Session Management**: Java Servlets (using HttpSession)

## Prerequisites

Before you begin, ensure you have met the following requirements:

- You have installed Java JDK 8 or above.
- You have installed Apache Tomcat Server 9.0 or above.
- You have MySQL installed and running.

## Getting Started

Follow these instructions to set up and run the project on your local machine.

### 1. Clone the repository

```bash
git clone https://github.com/Venumadhavmule/Login_Module.git
cd login-module
```

### 2. Set up MySQL Database

- Open MySQL and run the following SQL commands to create the database and user table:

```sql
CREATE DATABASE login_db;

USE login_db;

CREATE TABLE members (
    id INT NOT NULL AUTO_INCREMENT,
    firstname VARCHAR(50),
    lastname VARCHAR(50),
    email VARCHAR(100),
    username VARCHAR(50) NOT NULL,
    password VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);
```

### 3. Configure Database Connection

Update the database connection details in the file: `src/com/db/DBConnection.java`

```java
private static final String URL = "jdbc:mysql://localhost:3306/login_db";
private static final String USER = "your_mysql_username";
private static final String PASSWORD = "your_mysql_password";
```

### 4. Deploy on Apache Tomcat

- Place the project in your Tomcat `webapps` folder.
- Start the Apache Tomcat server and visit:

```
http://localhost:8080/login-module/
```

### 5. Register and Login

- Go to the registration page (`Register.html`) to create a new account.
- After successful registration, log in using your credentials via the `login.jsp` page.
- Once logged in, the system will maintain a session, and you will be redirected to the `welcome.jsp` page.

## Project Structure

```bash
login-module/
│
├── src/
│   ├── com/
│   │   ├── controller/
│   │   │   ├── Login.java
│   │   │   ├── Logout.java
│   │   │   ├── Register.java
│   │   │
│   │   ├── dao/
│   │   │   ├── LoginDao.java
│   │   │   └── RegistDao.java
│   │   │
│   │   ├── model/
│   │   │   └── Member.java
│   │   │
│   │   └── db/
│   │       └── DBConnection.java
│   │
├── webapp/
│   ├── META-INF/
│   ├── WEB-INF/
│   │   └── web.xml
│   ├── Register.html
│   ├── Register.jsp
│   ├── login.jsp
│   ├── welcome.jsp
│   ├── aboutus.jsp
│   ├── videos.jsp
│   └── css/
│       ├── logStyle.css
│       └── regStyle.css
│
└── README.md
```
