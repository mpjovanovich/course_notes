---
layout: base
title: JavaScript - Manipulating the DOM
course: SDEV255
---

- [Manipulating the DOM](#manipulating-the-dom)
  - [Document Object Model (DOM)](#document-object-model-dom)
  - [DOM Tree](#dom-tree)
  - [Getting Elements from the DOM](#getting-elements-from-the-dom)
    - [By ID](#by-id)
    - [By CSS Selector](#by-css-selector)
      - [Selecting Elements by ID:](#selecting-elements-by-id)
      - [Selecting Elements by Class:](#selecting-elements-by-class)
      - [Selecting Elements by Tag Name:](#selecting-elements-by-tag-name)
      - [Selecting Nested Elements:](#selecting-nested-elements)
    - [Getting Children of an Element](#getting-children-of-an-element)
  - [Modifying HTML Elements](#modifying-html-elements)
    - [Changing Element Text:](#changing-element-text)
    - [Changing Element Style:](#changing-element-style)
    - [Changing Element Attributes:](#changing-element-attributes)
  - [Adding and Removing Elements](#adding-and-removing-elements)
  - [CSS vs JavaScript](#css-vs-javascript)

# Manipulating the DOM

## Document Object Model (DOM)

The **Document Object Model (DOM)** represents the HTML document as a tree of objects in memory.

We can change the DOM using JavaScript to manipulate the HTML document without reloading the page.

The underlying HTML file is not changed, but the DOM is updated to reflect the changes.

## DOM Tree

The DOM is a tree of objects that represent the HTML document.

The tree is made up of **nodes**, which have properties and methods that we can use to manipulate them.

The root node of the tree is the `document` object.

See: [Using the Document Object Model](https://developer.mozilla.org/en-US/docs/Web/API/Document_object_model/Using_the_Document_Object_Model#what_is_a_dom_tree)

```html
<html lang="en">
  <head>
    <title>My Document</title>
  </head>
  <body>
    <h1>Header</h1>
    <p>Paragraph</p>
  </body>
</html>
```

<figure>
    <span>
        <img src="https://developer.mozilla.org/en-US/docs/Web/API/Document_object_model/Using_the_Document_Object_Model/using_the_w3c_dom_level_1_core-doctree.jpg" style="">
    </span>
    <figcaption>
        <a href=""></a>
    </figcaption>
</figure>

## Getting Elements from the DOM

### By ID

**document.getElementById()**

- Used to select a single element from the DOM.
- Takes an HTML ID as an argument.
- Returns the element with the matching ID.

```javascript
// Selects the HTML element with the ID 'header'
const header = document.getElementById("header");
```

### By CSS Selector

**document.querySelector()**

- Used to select a single element from the DOM.
- Takes a CSS selector as an argument.
- Returns the first element that matches the selector.
- If no element matches the selector, returns `null`.

#### Selecting Elements by ID:

```javascript
// Selects the HTML element with the ID 'header'
const header = document.querySelector("#header");
```

#### Selecting Elements by Class:

```javascript
// Selects all HTML elements with the class 'btn'
const buttons = document.querySelectorAll(".btn");
```

#### Selecting Elements by Tag Name:

```javascript
// Selects all <p> elements on the page
const paragraphs = document.querySelectorAll("p");
```

#### Selecting Nested Elements:

```javascript
// Selects the <h2> element inside an <article>
const articleTitle = document.querySelector("article h2");
```

### Getting Children of an Element

**element.children**

- Returns a collection of all the child elements of the element.
- Returns an empty collection if the element has no children.

```javascript
// Fetch the parent element:
const article = document.querySelector("article");

// Fetch the children of the parent element:
const articleChildren = article.children;

// We can loop through this collection to access each child element:
articleChildren.forEach((child) => {
  console.log(child);
});
```

## Modifying HTML Elements

### Changing Element Text:

```javascript
const paragraph = document.getElementById("paragraph");

// Change the text:
paragraph.textContent = "This is new content.";
```

### Changing Element Style:

The style property of a node has properties for each CSS style.

```javascript
const someDiv = document.getElementById("someDiv");

// Change color:
someDiv.style.color = "red";

// Hide an element:
someDiv.style.display = "none";
```

### Changing Element Attributes:

```javascript
// Change the href attribute of a link:
const someLink = document.getElementById("someLink");
someLink.href = "https://www.google.com";
```

## Adding and Removing Elements

**document.createElement()**

Creates a new element.

**element.appendChild()**

Adds a new child element to the end of the element.

```javascript
// Create a new paragraph element:
const newParagraph = document.createElement("p");

// Set the text and ID of the new paragraph:
newParagraph.textContent = "This is a new paragraph.";
newParagraph.id = "myParagraph";

// Add the new paragraph to the article:
const article = document.querySelector("#myArticle");
article.appendChild(newParagraph);
```

**element.removeChild()**

Removes a child element from the element.

```javascript
// Fetch the article and paragraph elements:
const article = document.querySelector("#myArticle");
const paragraph = document.querySelector("#myParagraph");

// Remove the paragraph from the article:
article.removeChild(paragraph);
```

## CSS vs JavaScript

CSS is used to style the page, while JavaScript is used to add functionality to the page.

Generally, if you can do something with CSS you should use CSS.
