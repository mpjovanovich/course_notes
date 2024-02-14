---
layout: base
title: PHP - Redirect After POST
course: SDEV255
---

- [The Redirect After POST (RAP) Pattern](#the-redirect-after-post-rap-pattern)
  - [Pattern](#pattern)
  - [Benefits:](#benefits)
  - [Example](#example)
  - [Pages](#pages)
  - [Flow](#flow)
  - [Code](#code)

# The Redirect After POST (RAP) Pattern

## Pattern

1. User submits form.
2. Server processes form data.
3. Server issues redirect response.
4. User browser makes GET request to redirect URL.
5. Server responds with result page.

## Benefits:

- Prevents duplicate form submissions if page refreshed.
- Clean URL in browser address bar.
- Separates form processing from form presentation.

## Example

## Pages

We will use three pages:

1. `index.php` - Form page.
2. `process.php` - Process form data.
3. `result.php` - Display result.

## Flow

- From form page, submit to process page.
- If errors, redirect back to form page with error message.
- If no errors, redirect to result page.

## Code

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
