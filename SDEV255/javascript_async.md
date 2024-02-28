---
layout: base
title: Asynchronous JavaScript
course: SDEV255
---

- [Asynchronous Code](#asynchronous-code)
  - [Blocking Code](#blocking-code)
    - [I/O Bound](#io-bound)
    - [CPU Bound](#cpu-bound)
    - [Async to the Rescue](#async-to-the-rescue)
  - [Asynchronous Code in JavaScript](#asynchronous-code-in-javascript)
    - [Promise](#promise)
    - [Then](#then)
      - [Examples](#examples)

# Asynchronous Code

**Syncronous** code is executed in sequence - each statement waits for the previous one to finish.

**Asynchronous** code does not guarantee the order of execution.

Async is not JS specific. It is a programming concept that is used in many languages.

## Blocking Code

We refer to a long running operation as a **blocking operation**. Code that comes after the operation is blocked from executing until the operation is complete.

Blocking operations are considered to be either **I/O bound** or **CPU bound**.

### I/O Bound

Waiting for input/output operations to complete.

- Reading a file from disk
- Making a network request
- Waiting for a database query to return

### CPU Bound

Waiting for the CPU to complete a task.

- Performing a complex calculation
- Rendering a large image
- Processing a large amount of data

### Async to the Rescue

Async code is used to avoid blocking operations by allowing other code to execute while the operation is pending (waiting to complete).

- **Performance** - Other tasks can be performed while waiting
- **Responsiveness** - User interface remains responsive while waiting

## Asynchronous Code in JavaScript

General pattern is to:

- Create a promise function to start the long running task.
- Create a `then` method to handle the result of the long running task when finished.

### Promise

JS uses the [promise](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Promise) object to implement async code.

- Return from function and continue with other code while the long function is working.
- Value that is returned is a promise object.
- Promise can be in one of three states:
  - Pending
  - Fulfilled
  - Rejected

### Then

The `then` method is used to handle the result of a promise, much like an event listener.

- Accepts a callback function that is called when the promise function is completed (resolved).
- Can be chained to handle multiple promises.

#### Examples

**Simulate an I/O or CPU bound operation.**

We're mostly concerned with consuming promises, but here's an example of a function that returns a promise.

```javascript
function longRunningOperation(processName) {
  return new Promise((resolve) => {
    // Print the start message
    console.log(`Starting ${processName}`);

    // Get a random number between 1 and 3
    const waitTime = Math.floor(Math.random() * 3 + 1);

    // Wait for the random number of seconds
    setTimeout(resolve, 1000 * waitTime);
  });
}
```

**Example: Run an async operation to avoid blocking**

```javascript
// Kick off the long running operation
const p1 = "Process A";
longRunningOperation(p1).then(() => console.log(`Finished ${p1}`));

// Do other work while waiting
console.log("Doing other work...");
console.log("Doing even more work...");
```

**Example: Run several async operations**

```javascript
const p1 = "Process A";
longRunningOperation(p1).then(() => console.log(`Finished ${p1}`));

const p2 = "Process B";
longRunningOperation(p2).then(() => console.log(`Finished ${p2}`));

const p3 = "Process C";
longRunningOperation(p3).then(() => console.log(`Finished ${p3}`));
```

**Example: Chain several async operations**

```javascript
const p1 = "Process A";
longRunningOperation(p1)
  .then(() => {
    const p2 = "Process B";
    return longRunningOperation(p2);
  })
  .then(() => {
    const p3 = "Process C";
    return longRunningOperation(p3);
  })
  .then(() => console.log(`Finished all processes.`));
```

**xample: Returning a value**

The `then` method can also return a value.

```javascript
function chainedWorkFunction(value) {
  return new Promise((resolve) => {
    // Print the original value
    console.log(`Value = ${value}`);

    // Add one to the value to simulate useful work
    value++;

    // Return the value with resolve
    resolve(value);
  });
}

// Call it once...
chainedWorkFunction(1).then((result) => console.log(`Final value: ${result}`));

// Call it several times.
// First call
chainedWorkFunction(1)
  // Second call
  .then((result) => {
    return chainedWorkFunction(result);
  })
  // Third call
  .then((result) => {
    return chainedWorkFunction(result);
  })
  // Print result
  .then((result) => {
    console.log(`Final value: ${result}`);
  });
```
