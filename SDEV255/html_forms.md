---
layout: base
title: HTML Forms
course: SDEV255
---

- [HTML Forms](#html-forms)
  - [Objectives](#objectives)
  - [Purpose](#purpose)
  - [Form Attributes](#form-attributes)
    - [Action](#action)
    - [Method](#method)
    - [Name and ID](#name-and-id)
  - [Input Types](#input-types)
    - [Button Inputs](#button-inputs)
    - [Multivalued Inputs](#multivalued-inputs)
      - [Checkbox Selection](#checkbox-selection)
    - [Text Inputs](#text-inputs)
    - [Date and Time Inputs](#date-and-time-inputs)
    - [Numeric Inputs](#numeric-inputs)
    - [Other Inputs](#other-inputs)
  - [Disabled and Read-Only Inputs](#disabled-and-read-only-inputs)

# HTML Forms

## Objectives

<!-- - Describe the purpose of HTML forms
- Create a form using HTML
- Describe the purpose of the `action` and `method` attributes
- Describe the purpose of the `name` attribute
- Describe the purpose of the `value` attribute
- Describe the purpose of the `type` attribute
- Describe the purpose of the `placeholder` attribute
- Describe the purpose of the `required` attribute
- Describe the purpose of the `disabled` attribute
- Describe the purpose of the `readonly` attribute
- Describe the purpose of the `autocomplete` attribute
- Describe the purpose of the `autofocus` attribute
- Describe the purpose of the `multiple` attribute
- Describe the purpose of the `size` attribute
- Describe the purpose of the `maxlength` attribute
- Describe the purpose of the `min` and `max` attributes -->

## Purpose

- Used to collect user input.
- All input that is a child of a `<form>` element will be submitted.
- A page may have multiple forms.

## Form Attributes

### Action

- The `action` attribute specifies where to send the form-data on submit.
- Data is sent to action page when the user clicks on the submit button.

```html
<form action="/action_page.php">
  <label> First Name: </label>
  <input type="text" id="firstname" name="firstname" value="Mouse" />
  <br /><br />
  <input type="submit" value="Submit" />
</form>
```

### Method

- The `method` attribute specifies how to send form-data.
- Can be set to `GET` or `POST`.

### Name and ID

- The `name` attribute is used to identify form data after it is submitted.
  - Required for all form elements.
- The `id` attribute is used to identify form data in JavaScript and CSS.
  - Allows `label` elements to be associated with form data via `for` attribute.

```html
<form action="/action_page.php">
  <label for="firstname">First Name: </label>
  <input type="text" id="firstname" name="firstname" value="Mouse" />
  <input type="submit" value="Submit" />
</form>
```

## Input Types

- Reference [Text: Collecting Form Data](http://localhost/phpbook/section_b/c06/collecting-form-data.php)

- The `type` attribute specifies the type of input element to display.

```html
<input type="[type]" ... />
```

### Button Inputs

| Type     | Description                                                           |
| -------- | --------------------------------------------------------------------- |
| `button` | Clickable button (mostly used with a JavaScript to activate a script) |
| `image`  | Sets an image as the submit button                                    |
| `reset`  | Reset button                                                          |
| `submit` | Submit button                                                         |

### Multivalued Inputs

| Type       | Description    |
| ---------- | -------------- |
| `checkbox` | Checkbox       |
| `radio`    | Radio button   |
| `select`   | Drop-down list |

#### Checkbox Selection

- The `value` attribute specifies the value to be sent to the server.
- The `checked` attribute specifies that the checkbox should be pre-selected when the page loads.
  - Can just write `checked` (no attribute value needed).

```html
<form action="/action_page.php">
  <input type="checkbox" id="vehicle1" name="vehicle1" value="Bike" />
  <label for="vehicle1"> I have a bike</label><br />
  <input type="checkbox" id="vehicle2" name="vehicle2" value="Car" checked />
  <label for="vehicle2"> I have a car</label><br />
  <input type="submit" value="Submit" />
</form>
```

### Text Inputs

| Type       | Description                                                   |
| ---------- | ------------------------------------------------------------- |
| `email`    | Field for an e-mail address                                   |
| `file`     | File-select field and a "Browse..." button (for file uploads) |
| `password` | Password field                                                |
| `search`   | Text field for entering a search string                       |
| `tel`      | Field for entering a telephone number                         |
| `text`     | Single-line text field (default width is 20 characters)       |
| `textarea` | Multi-line text input control                                 |
| `url`      | Field for entering a URL                                      |

### Date and Time Inputs

| Type             | Description                                                                                            |
| ---------------- | ------------------------------------------------------------------------------------------------------ |
| `date`           | Date control for entering a date (year, month, and day)                                                |
| `datetime`       | Date and time control (year, month, day, hour, minute, second, and fraction of a second (no time zone) |
| `datetime-local` | Date and time control (year, month, day, hour, minute, second, and fraction of a second (no time zone) |
| `month`          | Month and year control (no time zone)                                                                  |
| `time`           | Control for entering a time (no time zone)                                                             |
| `week`           | Week and year control (no time zone)                                                                   |

### Numeric Inputs

| Type     | Description                 |
| -------- | --------------------------- |
| `number` | Field for entering a number |
| `range`  | Slider control              |

### Other Inputs

| Type     | Description        |
| -------- | ------------------ |
| `color`  | Color picker       |
| `hidden` | Hidden input field |

## Disabled and Read-Only Inputs
