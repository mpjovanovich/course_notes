---
layout: base
title: Intro to Full Stack Development
course: SDEV255
---

- [What is a Web Application?](#what-is-a-web-application)
  - [The Client-Server Model](#the-client-server-model)
  - [Request / Response Cycle](#request--response-cycle)
    - [Front-end vs. Back-end](#front-end-vs-back-end)
    - [Hardware Components and Tiered Architectures](#hardware-components-and-tiered-architectures)
    - [Web Design vs. Web Development](#web-design-vs-web-development)
- [Development Environments](#development-environments)
  - [Local Development Environment](#local-development-environment)
- [Technology Stack](#technology-stack)
  - [The XAMPP Stack - What We Will Use](#the-xampp-stack---what-we-will-use)
    - [Web Browser](#web-browser)
    - [JavaScript](#javascript)
    - [Apache](#apache)
    - [PHP](#php)
    - [MariaDB](#mariadb)
    - [SQL](#sql)
    - [Summary of the Stack](#summary-of-the-stack)

# What is a Web Application?

A web application is a program that:

- Runs on a web server
- May be accessed through a web browser, mobile app, desktop app
- Can have multiple instances (copies of the app) running at the same time
- May be accessed by multiple users at the same time

## The Client-Server Model

<figure>
    <span>
        <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/c/c9/Client-server-model.svg/1200px-Client-server-model.svg.png" style="">
    </span>
    <figcaption>
        <a href="https://en.wikipedia.org/wiki/Client%E2%80%93server_model">Client-server model</a>
    </figcaption>                   
</figure>

## Request / Response Cycle

**Protocols** are standardized ways of encoding and transmitting data.

Components of the web application communicate with each other these protocols.

- HTTP = **HyperText Transfer Protocol**
  - The protocol used to transfer web pages.
- HTTPS = **HyperText Transfer Protocol Secure**
  - Uses SSL/TLS to encrypt the connection.

We will see how to use these requests and responses to build web applications later.

<figure>
    <span>
        <img src="https://bytesofgigabytes.com/IMAGES/Networking/HTTPcommuncation/http%20communication.png" style="">
    </span>
    <figcaption>
        <a href=""></a>
    </figcaption>
</figure>

### Front-end vs. Back-end

**Front-end** code runs on the client.

- Usually in a browser.
- Sometimes in a mobile app.
- Sometimes in a desktop app that makes web calls to fetch/store data.

**Back-end** code runs on the server.

- Web server / application server.
- Database server.

### Hardware Components and Tiered Architectures

<figure>
    <span>
        <img src="https://docs.aws.amazon.com/images/whitepapers/latest/serverless-multi-tier-architectures-api-gateway-lambda/images/image2.png" style="">
    </span>
    <figcaption>
        <a href=""></a>
    </figcaption>
</figure>

<p class="demo">Demo:</p>

Whiteboard basic architectural models for three-tier web applications...

### Web Design vs. Web Development

When looking through job postings know that:

**Web designer** is responsible for the look and feel of a website, usually front-end code.

- HTML
- CSS
- JavaScript
- Photoshop
- Illustrator
- etc.

**Web developer / software developer** is responsible for the functionality of the website, usually back-end code.

- JavaScript
- PHP
- SQL
- etc.

# Development Environments

A live web application may have several "copies" of itself running.

We call each copy an **instance** of the application.

The context in which the application is running is called the **environment**.

- Development
- Testing
- Staging
- Production

<p class="demo">Demo:</p>

Firebase app - can change local dev copy without affecting deployed instance.

## Local Development Environment

A **local development environment** is a place to write and test code. It turns your local machine into a web server.

_local_ = on your computer

# Technology Stack

A **technology stack** is a set of programs that work together to provide a service. Typically comprised of:

- A programming language
- A web server
- A database server
- A framework
- etc.

**_Examples:_**

- LAMP
  - Linux
  - Apache
  - MySQL
  - PHP
- MEAN
  - MongoDB
  - Express
  - Angular
  - Node.js
- MERN
  - MongoDB
  - Express
  - React
  - Node.js

## The XAMPP Stack - What We Will Use

<figure class="left">
    <span>
        <img src="https://www.apachefriends.org/images/xampp-logo-ac950edf.svg" >
    </span>
</figure>

XAMPP is multiple programs that work together to provide a local development environment.

This is the recommended stack for this class for practicing on your home computer.

- X = Cross-platform (not limited to a particular OS)
- A = Apache
- M = MariaDB
- P = PHP
- P = Perl

### Web Browser

Our web apps should work in all major browsers.

### JavaScript

<figure class="left">
    <span>
        <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/6/6a/JavaScript-logo.png/768px-JavaScript-logo.png" style="width: 20%;">
    </span>
</figure>

- JavaScript is (clasically) a **client-side** programming language.
- Client side code runs in the browser.
- Does not make a round trip to the server to run code.

### Apache

<figure class="left">
    <span>
        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcREo476xT8nc-rNy8Ov3FDHElDBcCL5PReEsiEmBPyxEnhJC1ij-kUrvmTmr1KuY_5M324&usqp=CAU" style="">
    </span>
</figure>

- Apache is a **web server**.
- A web server is a program that listens for requests from clients and sends responses.

### PHP

<figure class="left">
    <span>
        <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/2/27/PHP-logo.svg/800px-PHP-logo.svg.png" style="width: 30%;">
    </span>
</figure>

PHP = **PHP: Hypertext Preprocessor**

- PHP is a **server-side** programming language.
- The program that runs PHP is called the **PHP interpreter**.
- The PHP interpreter runs on a web server.

### MariaDB

- MariaDB is a **database server**.
- Just like a web server, but fetches data from DB instead of files.
- Predecessor to MySQL.
  - MySQL is owned by Oracle.
  - MariaDB is open source.

### SQL

SQL = **Structured Query Language**

- SQL is a **language** for interacting with databases.
- SQL is used to create, read, update, and delete data in a database.
- SQL is not a database or a database database server; SQL interacts with a database server.

### Summary of the Stack

XAMPP:

| Component                 | What is it? | Where does it run? | Client or Server? |
| ------------------------- | ----------- | ------------------ | ----------------- |
| Browser                   | A program   | Operating system   | Client            |
| JavaScript                | A language  | Browser            | Client            |
| Apache (web server)       | A program   | Operating system   | Server            |
| PHP Interpreter           | A program   | Web server         | Server            |
| PHP                       | A language  | PHP Interpreter    | Server            |
| MariaDB (database server) | A program   | Operating system   | Server            |
| SQL                       | A language  | Database server    | Server            |

<p class="demo">Review:</p>

- What comprises the "application" the developer writes relative to the stack, vs. what's the infrastructure that's just chosen?
