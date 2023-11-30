---
layout: base
title: PHP - POST
course: SDEV255
---

<!-- Understanding PHP POST
VI. Practical Examples and Use Cases
A. Building a Simple Form-Handling PHP Script
	1. Creating a Form
	2. Processing Form Data with PHP
B. Handling File Uploads
	1. HTML File Input Element
	2. Server-Side Handling of Uploaded Files

VII. Best Practices for PHP POST
A. Avoiding Direct Output of POST Data
B. Importance of HTTPS for Secure Data Transmission
C. Handling Form Submission Errors
D. Implementing CSRF Protection

VIII. Real-World Application Considerations
A. Interaction with Databases
1. Inserting POST Data into a Database
2. Prepared Statements for Security
B. User Authentication and Authorization
1. Handling Login Forms with POST
2. Protecting Sensitive Operations -->

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

## PHP POST Array

PHP automatically creates an associative array called `$_POST` that contains the form data.

```php
<?php
// http://localhost:8080/test.php
echo $_POST['name']; // John
echo $_POST['age']; // 42
```

## Verify POST Request

- Use `$_SERVER['REQUEST_METHOD']` to verify the request method.
- This ensures that the form is only processed when the form is submitted.

````php
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    // Handle POST request
    ```
````

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

```php
<?php
// http://localhost:8080/test.php
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    // Handle POST request
    header('Location: http://localhost:8080/test.php');
    exit;
}
```

### Error Handling

- If there is an error, the server can redirect back to the form page with an error message.
- The form page can then display the error message.

#### Querystring Method

**index.php**

- Display the form.
- Display validation errors if any.

```php
<?php
    // Display validation errors if any
    if (isset($_GET['error'])) {
        echo $_GET['error'];
    }
?>
```

```html
<form action="result.php" method="POST">
  <input type="text" name="name" />
  <input type="submit" value="Submit" />
</form>
```

**process.php**

- Process the form data.

```php
<?php
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    if (empty($_POST['name'])) {
        $error = 'Name is required';
    }
    // Redirect back to form page if there is an error
    if ($error) {
        header('Location: test.php?error=1');
        exit;
    }

    // ... do something with the form data ...

    // Redirect to the result page
    header('Location: result.php?name=' . $_POST['name']);
    exit;
} else {
    // Redirect to the form if accessed directly without submission
    header('Location: index.php');
    exit();
}
```

**result.php**

- Display the name from the querystring.

```html
<p>
  Name:
  <?php echo $_GET['name']; ?>
</p>
```

#### Session Method

We will see how to handle errors using the session array later.

...................................................

... Reference ...

[Text: Validate Form Using Filters](http://localhost/phpbook/section_b/c06/validate-form-using-filters.php)
