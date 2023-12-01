---
layout: base
title: PHP - POST
course: SDEV255
---

- [POST](#post)
  - [POST (vs GET)](#post-vs-get)
    - [Security](#security)
    - [Data Format](#data-format)
    - [Summary: Which to Use?](#summary-which-to-use)
  - [Verifying that a Form was Submitted](#verifying-that-a-form-was-submitted)
  - [PHP POST Array](#php-post-array)
  - [Verifying that a Form was Submitted](#verifying-that-a-form-was-submitted-1)
  - [The Redirect After POST (RAP) Pattern](#the-redirect-after-post-rap-pattern)
    - [Pattern](#pattern)
    - [Benefits:](#benefits)
    - [Example](#example)
      - [Pages](#pages)
      - [Flow](#flow)
      - [Code](#code)

# POST

A POST request is used to send data to a server to create or update a resource.

## POST (vs GET)

### Security

|                       | GET | POST |
| --------------------- | --- | ---- |
| Variables in URL      | Yes | No   |
| Caching               | Yes | No   |
| Encryption with HTTPS | No  | Yes  |

### Data Format

|                 | GET             | POST           |
| --------------- | --------------- | -------------- |
| Data Size Limit | 2048 characters | No limit       |
| Data Type       | Text only       | Text or binary |

### Summary: Which to Use?

|                      | GET | POST |
| -------------------- | --- | ---- |
| Data Retrieval       | Yes | No   |
| Persistent URLs      | Yes | No   |
| Presentation Changes | Yes | No   |
| Sensitive Data       | No  | Yes  |
| File Uploads         | No  | Yes  |
| Application Changes  | No  | Yes  |

_GET_

- Data retrieval
  - Searching
  - Navigating
- Persistent URLs
  - Bookmarks
  - Sharing
- Change presentation (Safe operations)
  - Sorting
  - Filtering
  - Pagination

_POST_

- Data creation or modification
  - Form submissions
  - File uploads
- Change application state (Unsafe operations)
  - Database updates
  - File management
  - Email
  - Authentication
  - Session management
  - Logging

## Verifying that a Form was Submitted

- Use `$_SERVER['REQUEST_METHOD']` to verify the request method.
- This ensures that the form is only processed when the form is submitted.

```php
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // We will only get here if the form was submitted.
}
```

## PHP POST Array

PHP automatically creates an associative array called `$_POST` that contains the form data. The array keys are the `name` attributes of the form elements.

```php
<?php
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    echo $_POST['name'] . <br />;
    echo $_POST['age'] . <br />;
}
?>
```

```html
<form action="process.php" method="POST">
  <input type="text" name="name" />
  <input type="text" name="age" />
  <input type="submit" value="Submit" />
</form>
```

## Verifying that a Form was Submitted

- Use `$_SERVER['REQUEST_METHOD']` to verify the request method.
- This ensures that the form is only processed when the form is submitted.

```php
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // We will only get here if the form was submitted.
}
```

## The Redirect After POST (RAP) Pattern

### Pattern

1. User submits form.
2. Server processes form data.
3. Server issues redirect response.
4. User browser makes GET request to redirect URL.
5. Server responds with result page.

### Benefits:

- Prevents duplicate form submissions if page refreshed.
- Clean URL in browser address bar.
- Separates form processing from form presentation.

### Example

#### Pages

We will use three pages:

1. `index.php` - Form page.
2. `process.php` - Process form data.
3. `result.php` - Display result.

#### Flow

- From form page, submit to process page.
- If errors, redirect back to form page with error message.
- If no errors, redirect to result page.

#### Code

**index.php**

```php
<?php
    // Display validation errors if any were set.
    if (isset($_GET['error'])) {
        echo $_GET['error'];
    }
?>
<form action="result.php" method="POST">
  <input type="text" name="name" />
  <input type="submit" value="Submit" />
</form>
```

**process.php**

```php
<?php
/* *****************************************************************
 * REDIRECT TO FORM IF NOT POST
* *****************************************************************/
// Users should not be able to access this page directly (via GET)
if ($_SERVER['REQUEST_METHOD'] !== 'POST') {
    header('Location: index.php');
    exit();
}

/* *****************************************************************
 * DO VALIDATION
* *****************************************************************/
$error = '';

// We can check for errors in many ways - for this example we'll
// assume that we've populated this error variable with a string if
// there is an error...

/* *****************************************************************
 * REDIRECT TO FORM IF ERRORS
* *****************************************************************/
if ($error) {
    header('Location: index.php?error=' . $error);
    exit;
}

/* *****************************************************************
 * PROCEED TO RESULT PAGE
* *****************************************************************/
header('Location: result.php?name=' . $_POST['name']);
exit;
```

**result.php**

```php
<h1>SUCCESS!</h1>
<p>
  Welcome,
  <?php echo $_GET['name']; ?>
</p>
```
