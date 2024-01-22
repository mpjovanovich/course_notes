---
layout: base
title: JavaScript - Events
course: SDEV255
---

- [Events](#events)
  - [Intro](#intro)
  - [Common Events](#common-events)
  - [Listening for Events](#listening-for-events)
    - [Inline Event Handlers](#inline-event-handlers)
    - [Property Event Handlers](#property-event-handlers)
    - [AddEventListener Method](#addeventlistener-method)
  - [Setting the Event Handler Function](#setting-the-event-handler-function)
    - [Named Functions](#named-functions)
    - [Anonymous Functions](#anonymous-functions)
  - [DOMContentLoaded - Waiting for the Document to Load](#domcontentloaded---waiting-for-the-document-to-load)
  - [The Event Object](#the-event-object)

# Events

## Intro

- Events are actions that happen in the browser that can be detected by JavaScript.
- Events can be used to trigger functions.
- Events can be attached to elements in the DOM.

## Common Events

- DOMContentLoaded: Fired when the DOM is fully loaded and ready to be manipulated.
- Unload: Fired when a page is about to be unloaded (e.g., when navigating to a different page).
- Load: Fired when a resource (e.g., an image) finishes loading.
- Focus: Triggered when an element receives focus.
- Blur: Fired when an element loses focus.
- Click: Fired when an element is clicked.
- Contextmenu: Fired when the context menu (right-click menu) is requested.
- Mouseover: Triggered when the mouse pointer enters an element.
- Mouseout: Fired when the mouse pointer leaves an element.
- Mouseenter: Similar to mouseover, but doesn't bubble and doesn't trigger when entering child elements.
- Mouseleave: Similar to mouseout, but doesn't bubble and doesn't trigger when leaving child elements.
- Change: Triggered when the value of an input element changes.
- Input: Fired when an input element's value changes. Works for various form elements, including text inputs and textareas.
- Keydown: Fired when a key is pressed down.
- Keyup: Triggered when a key is released.
- Keypress: Fired when a key is pressed.
- Resize: Triggered when the window or an element is resized.
- Submit: Fired when a form is submitted.

## Listening for Events

An **event listener** or **event handler** (same thing) is a function that is triggered when a specific event happens.

A dome node may **register** an event listener, which is then **subscribed** to that event.

### Inline Event Handlers

```html
<button onclick="alert('CLICK!')">Click Me</button>
```

### Property Event Handlers

```javascript
const myButton = document.getElementById("myButton");
myButton.onclick = () => {
  alert("CLICK!");
};
```

### AddEventListener Method

This is the preferred way to add event listeners.

```javascript
const myButton = document.getElementById("myButton");
myButton.addEventListener("click", () => {
  alert("CLICK!");
});
```

## Setting the Event Handler Function

We have a couple of options for setting the event handler function. Both work fine.

### Named Functions

- Predefined function that is called when the event happens.
- Useful for when the function is used in multiple places.

```javascript
const myButton = document.getElementById("myButton");
myButton.addEventListener("click", handleClick);

function handleClick() {
  alert("CLICK!");
}
```

### Anonymous Functions

- Function that is defined when the event happens.
- Useful for when the function is only used in one place.
- Typically uses **arrow function** syntax.

```javascript
const myButton = document.getElementById("myButton");
myButton.addEventListener("click", () => {
  alert("CLICK!");
});
```

Arrow functions are a shorthand way of defining functions:

```javascript
// Regular function:
function handleClick() {
  alert("CLICK!");
}

// Arrow function:
() => {
  alert("CLICK!");
};

// Regular function with parameters:
function handleClick(message) {
  alert(message);
}

// Arrow function with parameters:
(message) => {
  alert(message);
};
```

## DOMContentLoaded - Waiting for the Document to Load

- JavaScript code may execute before the DOM is fully loaded (all HTML elements are in place).
- If you try to access an element that doesn't exist, you'll get an error.
- This includes adding event listeners to elements that don't exist yet.
- The **DOMContentLoaded** event is fired when the DOM is fully loaded and ready to be manipulated.

```html
<ul>
  <li>Apple</li>
  <li>Orange</li>
  <li>Cherry</li>
</ul>
```

```javascript
// Try removing the DOMContentLoaded event listener and see what happens.
document.addEventListener("DOMContentLoaded", () => {
  const colorMapping = {
    apple: "green",
    cherry: "red",
    orange: "orange",
  };
  const listItems = document.getElementsByTagName("li");

  for (let i = 0; i < listItems.length; i++) {
    const current_text = listItems[i].textContent.toLowerCase();
    if (colorMapping.hasOwnProperty(current_text)) {
      listItems[i].style.color = colorMapping[current_text];
    }
  }
});
```

## The Event Object

- When an event happens, the browser creates an **event object**.
- The event object contains information about the event.
- The event object is often named `e` or `event` by convention.
- We can use the `e.target` property to get the element that triggered the event.

```javascript
const myButton1 = document.getElementById("myButton1");
const myButton2 = document.getElementById("myButton2");
myButton1.addEventListener("click", printTarget);
myButton2.addEventListener("click", printTarget);

function printTarget(e) {
  console.log(e.target);
}
```
