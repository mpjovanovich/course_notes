---
layout: base
title: State Management for Web Applications
course: SDEV255
---

- [State Management](#state-management)
  - [HTTP Cache](#http-cache)
  - [JavaScript: Web Storage](#javascript-web-storage)
    - [Description](#description)
    - [Use Cases](#use-cases)
    - [Examples](#examples)
  - [Cookies](#cookies)
    - [Description](#description-1)
    - [Use Cases](#use-cases-1)
    - [Why the Bad Rap?](#why-the-bad-rap)
      - [Privacy concerns](#privacy-concerns)
      - [Security Concerns](#security-concerns)
      - [Performance Concerns](#performance-concerns)
      - [So uh... Should I Accept Cookies?](#so-uh-should-i-accept-cookies)
    - [Examples](#examples-1)
  - [Session Storage](#session-storage)

<figure>
    <span>
        <img src="https://opendoorsorganizing.com/wp-content/uploads/2020/08/Portfolio-Cover-Shot-Before-3.jpg" style="width: 60%">
    </span>
</figure>

# State Management

**State** is the condition of a system / application at a specific time.

_Dev tip:_ 👌

- **Premature optimization** is a common way to waste development time. Do not attempt to optimize performance until you have data to show that it is necessary.

## HTTP Cache

<figure>
    <span>
        <img src="https://developer.mozilla.org/en-US/docs/Web/HTTP/Caching/type-of-cache.png" style="">
    </span>
</figure>

[HTTP Caching](https://developer.mozilla.org/en-US/docs/Web/HTTP/Caching)

[Google: Performance Best Practices](https://developers.google.com/web/fundamentals/performance/optimizing-content-efficiency/http-caching)

> All HTTP requests that the browser makes are first routed to the browser cache to check whether there is a valid cached response that can be used to fulfill the request. If there's a match, the response is read from the cache, which eliminates both the network latency and the data costs that the transfer incurs.

- Caching behavior is controlled by HTTP headers.
- Usually defaults from web server are sufficient.
- Not something that devs typically use directly.

_Dev tip:_ 👌

- Use the "Disable cache" option browser developer tools to see how your site behaves without caching.
- If page isn't updating when you make changes, try a hard refresh (Ctrl + F5).

## JavaScript: Web Storage

[Web Storage API](https://developer.mozilla.org/en-US/docs/Web/API/Web_Storage_API)

### Description

**Purpose:** Used for storing larger amounts of data (up to 5MB per origin) that is specific to the client and does not need to be sent to the server.

**Size:** About 5MB of data per origin.

**Scope:** Not sent to the server. Lower overhead for network traffic.

**Lifetime:** Persists after browser is closed.

**Access:** Accessible only client-side, via JavaScript.

**Security:** Not vulnerable to XSS attacks - never sent in web request so it cannot be intercepted.

### Use Cases

- User preferences / personalization (more data than cookies)
- Private data (that doesn't need to be sent to the server)
- Cached data
- Form data persistence
- Offline web apps

### Examples

_Dev tip:_ 👌

You can use the "Storage" or "Application" tab in the browser developer tools to view local storage.

```javascript
// Set a value
localStorage.setItem("username", "Jennifer Beebop");

// Get a value
let username = localStorage.getItem("username");
console.log(username);
```

## Cookies

<figure>
    <span>
        <img src="https://www.immaculatebaking.com/wp-content/uploads/2012/09/bigcookie.jpg" style="">
    </span>
    <figcaption>
        World's Largest Cookie
    </figcaption>
</figure>

[HTTP Cookies](https://developer.mozilla.org/en-US/docs/Web/HTTP/Cookies)

### Description

**Purpose:** Store small pieces of data that need to be sent back to the server with subsequent requests.

**Size:** About 4KB of data per cookie.

**Scope:** Sent to server, so available to back end / server side of app.

**Lifetime:** Can have expiration date or be linked to session, which expires when browser is closed.

**Access:** Can be accessed and set both server-side (in HTTP headers) and client-side (via JavaScript).

**Security:** Can be vulnerable to cross-site scripting (XSS) attacks if not properly secured.

**_Do not store sensitive data in cookies._**

### Use Cases

- Retaining user login for duration of session
- User preferences / personalization
- Shopping cart / temporary data
- Analytics / tracking
- Session management (we'll cover session below)

### Why the Bad Rap?

#### Privacy concerns

- Cross-site tracking: Building a profile of a user's browsing habits.
- Sale of data: Data collected by cookies can be sold to third parties.

[ITP 2.1: Why you won’t make your advertising targets, but will finally understand how cookies work](https://www.deptagency.com/insight/itp-2-1-why-you-wont-make-your-advertising-targets-but-will-finally-understand-how-cookies-work/)

- Good explanation of how cookies are used.

[The Future of Privacy on the way to a Cookieless World](https://www.waste-creative.com/future-of-privacy-on-the-way-to-a-cookieless-world)

- See the timeline.

#### Security Concerns

- [OWASP: Cross Site Request Forgery (CSRF)](https://owasp.org/www-community/attacks/csrf)

- [BrightSec: CSRF](https://brightsec.com/blog/cross-site-request-forgery-csrf/)

#### Performance Concerns

- Overhead of sending cookies with every request.

#### So uh... Should I Accept Cookies?

Historical cases for cookie abuse have mostly been addressed by modern browsers and privacy laws.

E.g: Domain and path restrictions, SameSite attribute

### Examples

Can set a cookie on the server side with PHP (or other server-side languages).

Can set a cookie on the client side with JavaScript.

_Dev tip:_ 👌

- You can use the "Storage" or "Application" tab in the browser developer tools to view cookies.

- You can use the `$_COOKIE` superglobal in PHP to access cookies.

**Setting a cookie with PHP**

[php: setcookie](https://www.php.net/manual/en/function.setcookie.php)

```php
<?php
// 3600ms = 1 hour
// '/' means the cookie is available in the entire website
setcookie('username', 'Bobby Beebop', time() + 3600, '/');
?>
```

**Deleting a cookie with PHP**

```php
<?php
// To delete - set the expiration date to a time in the past
setcookie('username', 'Bobby Beebop', time() - 3600, '/');
?>
```

## Session Storage

... Will cover next class ...
