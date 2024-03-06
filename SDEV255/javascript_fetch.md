---
layout: base
title: JavaScript Fetch API
course: SDEV255
---

- [JavaScript Fetch API](#javascript-fetch-api)
  - [Advantages Over Full Page Reload:](#advantages-over-full-page-reload)
  - [Return Types](#return-types)
  - [Typical Fetch API Usage](#typical-fetch-api-usage)

# JavaScript Fetch API

The **Fetch API** is way to make HTTP requests in JavaScript using promises.

- Send data to a server
- Retrieve data from a server

## Advantages Over Full Page Reload:

- Lower network overhead due to smaller payload (data sent)
- Can be used to update part of the DOM
- User doesn't see page reload so it feels like an "application"
- If no UI changes are needed, response can be processed in the background (e.g. database update)

## Return Types

The fetch promise will resolve with a [Response](https://developer.mozilla.org/en-US/docs/Web/API/Response) object that represents an HTTP response. From there we must convert:

- **text()** - returns a promise that resolves with the response as text
- **json()** - returns a promise that resolves with the response as JSON
- **blob()** - returns a promise that resolves with the response as a Blob (binary data)

## Typical Fetch API Usage

Simple static webscrape:

```javascript
// Make a request to the url.
const url = "https://mpjovanovich.github.io/course_notes/SDEV255/";
fetch(url)
  .then((httpResponse) => {
    // "httpResponse" will be a "Response" object.
    // Convert it to text with the "text" function.
    return httpResponse.text();
  })
  // The "text" function was async, so wait for it to finish.
  // "pageText" is a string, so log it.
  .then((pageText) => {
    console.log(pageText);
  });
```

Fetch some JSON:

... in our lab we will fetch JSON and update the page with it ...
