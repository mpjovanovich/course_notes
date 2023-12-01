---
layout: base
title: PHP -  Super Global Arrays
course: SDEV255
---

- [PHP: Super Global Arrays](#php-super-global-arrays)
  - [Use](#use)
    - [SERVER](#server)
    - [ENV](#env)
    - [Covered Elsewhere](#covered-elsewhere)
  - [Avoid](#avoid)
    - [REQUEST](#request)
    - [GLOBALS](#globals)

# PHP: Super Global Arrays

PHP provides a number of **superglobal arrays** that are available in all scopes throughout a script.

They are used just like any other associative array.

```php
<?php
echo $_SERVER['HTTP_HOST'];
?>
```

We will address many of these as their own topics. This topic will summarize the rest.

| Array       | Description                                           |
| ----------- | ----------------------------------------------------- |
| `$GLOBALS`  | References all variables available in global scope    |
| `$_COOKIE`  | HTTP Cookies                                          |
| `$_ENV`     | Environment variables                                 |
| `$_FILES`   | HTTP File Upload variables                            |
| `$_GET`     | HTTP GET variables                                    |
| `$_POST`    | HTTP POST variables                                   |
| `$_REQUEST` | Combined values of `$_GET`, `$_POST`, and `$_COOKIE`. |
| `$_SERVER`  | Server and execution environment information          |
| `$_SESSION` | Session variables                                     |

## Use

### SERVER

Some elements in the array:

| Element                       | Description                                                                                     |
| ----------------------------- | ----------------------------------------------------------------------------------------------- |
| `$_SERVER['HTTP_HOST']`       | Contents of the Host: header from the current request, if there is one.                         |
| `$_SERVER['HTTP_REFERER']`    | The address of the page (if any) which referred the user agent to the current page.             |
| `$_SERVER['HTTP_USER_AGENT']` | Contents of the User-Agent: header from the current request, if there is one.                   |
| `$_SERVER['PHP_SELF']`        | The filename of the currently executing script, relative to the document root.                  |
| `$_SERVER['QUERY_STRING']`    | The query string, if any, via which the page was accessed.                                      |
| `$_SERVER['REMOTE_ADDR']`     | The IP address from which the user is viewing the current page.                                 |
| `$_SERVER['REQUEST_METHOD']`  | Which request method was used to access the page; i.e. 'GET', 'HEAD', 'POST', 'PUT'.            |
| `$_SERVER['SCRIPT_FILENAME']` | The absolute pathname of the currently executing script.                                        |
| `$_SERVER['SCRIPT_NAME']`     | Contains the current script's path. This is useful for pages which need to point to themselves. |
| `$_SERVER['SERVER_NAME']`     | The name of the server host under which the current script is executing.                        |
| `$_SERVER['SERVER_PORT']`     | The port on the server machine being used by the web server for communication.                  |

### ENV

- In production environment, environment variables are often set in **configuration files**
  - Apache
    - `.htaccess`
- Allows you to keep sensitive information separate from your application code.

.htaccess file:

```apache
SetEnv DB_USER "username"
SetEnv DB_PASS "password"
```

PHP file:

```php
<?php
$databaseUser = $_ENV['DB_USER'];
$databasePassword = $_ENV['DB_PASS'];
?>
```

### Covered Elsewhere

- `$_COOKIE`
- `$_FILES`
- `$_GET`
- `$_POST`
- `$_SESSION`

## Avoid

_Unless you have a good reason to use them._

### REQUEST

- `$_REQUEST` is a combination of the `$_GET`, `$_POST`, and `$_COOKIE` variables.
- Avoid using `$_REQUEST`; we should know where our data is coming from.

### GLOBALS

- Contains a reference to every variable which is currently available within the global scope of the script.
- Avoid using `$GLOBALS`; we should know where our data is coming from.
