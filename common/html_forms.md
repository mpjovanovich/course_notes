---
layout: base
title: HTML Forms
course: common
---

- [HTML Forms](#html-forms)
  - [Purpose](#purpose)
  - [Form Attributes](#form-attributes)
    - [Action](#action)
    - [Method](#method)
  - [Child Elements](#child-elements)
    - [Fieldset and Legend](#fieldset-and-legend)
    - [Label](#label)
      - [Explicit Label](#explicit-label)
      - [Implicit Label](#implicit-label)
    - [Input](#input)
      - [Button Inputs](#button-inputs)
      - [Multivalued Inputs](#multivalued-inputs)
        - [Checkbox Selection](#checkbox-selection)
        - [Select and Radio Button Selection](#select-and-radio-button-selection)
      - [Text Inputs](#text-inputs)
      - [Date and Time Inputs](#date-and-time-inputs)
      - [Numeric Inputs](#numeric-inputs)
      - [Other Inputs](#other-inputs)
  - [Form Constraints](#form-constraints)
  - [Autocomplete](#autocomplete)
  - [Styling Forms](#styling-forms)
    - [Selecting Input Elements by Type](#selecting-input-elements-by-type)
    - [Psuedo-Classes](#psuedo-classes)
      - [Focus](#focus)
      - [Invalid vs User-invalid](#invalid-vs-user-invalid)
  - [Form Design](#form-design)
  - [Demo - Tying it All Together](#demo---tying-it-all-together)

# HTML Forms

## Purpose

- Used to collect user input.
- All input that is a child of a `<form>` element will be submitted.
- A page may have multiple forms.

## Form Attributes

### Action

- The `action` attribute specifies where to send the form-data on submit.
- Data is sent to action page when the user clicks on the submit button.

```html
<form action="action_page.php" method="POST">
  <label> First Name: </label>
  <input type="text" id="firstname" name="firstname" value="Mouse" />
  <br /><br />
  <input type="submit" value="Submit" />
</form>
```

### Method

- The `method` attribute specifies how to send form-data.
- Can be set to `GET` or `POST`.

## Child Elements

### Fieldset and Legend

- The `<fieldset>` element is used to group related data in a form.
- The `<legend>` element defines a caption for the `<fieldset>` element.

```html
<form action="action_page.php" method="POST">
  <fieldset>
    <legend>Personal Information:</legend>
    <!-- form items here> -->
  </fieldset>
</form>
```

### Label

- The `<label>` element defines a label for an `<input>` element.
- Every form element should have a label.

#### Explicit Label

- The `for` attribute of the `<label>` element should be equal to the `id` attribute of the `<input>` element to bind them together.

```html
<label for="firstname">First Name: </label>
<input type="text" id="firstname" name="firstname" value="Mouse" />
```

#### Implicit Label

- The `<label>` element can be wrapped around the `<input>` element to bind them together.
- If done this way:
  - The `for` attribute is not needed.
  - The hit area for the label is larger.

```html
<label>First Name: <input type="text" name="firstname" value="Mouse" /></label>
```

### Input

- Reference [Text: Collecting Form Data](http://localhost/phpbook/section_b/c06/collecting-form-data.php)
- This tag is self-closing.
- The `type` attribute specifies the type of input element to display.
- The `name` attribute is what is sent to the server.

```html
<input type="[type]" name="first-name" ... />
```

#### Button Inputs

| Type     | Description                                                           |
| -------- | --------------------------------------------------------------------- |
| `button` | Clickable button (mostly used with a JavaScript to activate a script) |
| `image`  | Sets an image as the submit button                                    |
| `reset`  | Reset button                                                          |
| `submit` | Submit button                                                         |

#### Multivalued Inputs

| Type       | Description    |
| ---------- | -------------- |
| `checkbox` | Checkbox       |
| `radio`    | Radio button   |
| `select`   | Drop-down list |

##### Checkbox Selection

- The `value` attribute specifies the value to be sent to the server.
- The `checked` attribute specifies that the checkbox should be pre-selected when the page loads.
  - Can just write `checked` (no attribute value needed).

```html
<form action="action_page.php" method="POST">
  <input type="checkbox" id="vehicle1" name="vehicle1" value="Bike" />
  <label for="vehicle1"> I have a bike</label><br />
  <input type="checkbox" id="vehicle2" name="vehicle2" value="Car" checked />
  <label for="vehicle2"> I have a car</label><br />
  <input type="submit" value="Submit" />
</form>
```

##### Select and Radio Button Selection

- The `value` attribute specifies the value to be sent to the server.
- The `selected` attribute specifies that an option should be pre-selected when the page loads.
  - Can just write `selected` (no attribute value needed).

```html
<form action="action_page.php" method="POST">
  <label for="attending">Attending:</label>
  <select id="attending" name="attending">
    <option value="yes" selected>Yes</option>
    <option value="no">No</option>
    <option value="maybe" selected>Maybe</option>
  </select>
  <br /><br />
  <input type="submit" value="Submit" />
</form>
```

#### Text Inputs

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

#### Date and Time Inputs

| Type             | Description                                                                                            |
| ---------------- | ------------------------------------------------------------------------------------------------------ |
| `date`           | Date control for entering a date (year, month, and day)                                                |
| `datetime`       | Date and time control (year, month, day, hour, minute, second, and fraction of a second (no time zone) |
| `datetime-local` | Date and time control (year, month, day, hour, minute, second, and fraction of a second (no time zone) |
| `month`          | Month and year control (no time zone)                                                                  |
| `time`           | Control for entering a time (no time zone)                                                             |
| `week`           | Week and year control (no time zone)                                                                   |

#### Numeric Inputs

| Type     | Description                 |
| -------- | --------------------------- |
| `number` | Field for entering a number |
| `range`  | Slider control              |

#### Other Inputs

| Type     | Description        |
| -------- | ------------------ |
| `color`  | Color picker       |
| `hidden` | Hidden input field |

## Form Constraints

- Constraints may be specified using attributes.
- If a constraint is violated, the browser will prevent the form from being submitted.

| Constraint  | Description                                                                       |
| ----------- | --------------------------------------------------------------------------------- |
| `required`  | Specifies that the input field is required (must be filled out)                   |
| `pattern`   | Specifies a regular expression against which to validate the value of the         |
| `minlength` | Specifies the minimum number of characters allowed in an input field              |
| `maxlength` | Specifies the maximum number of characters allowed in an input field              |
| `min`       | Specifies the minimum value for an input field with type="number" or type="range" |
| `max`       | Specifies the maximum value for an input field with type="number" or type="range" |

## Autocomplete

- If `autocomplete` is set to on, the browser will automatically complete values based on the user's previous input.
- Can be set at the form or input level.

## Styling Forms

### Selecting Input Elements by Type

- The `type` attribute can be used to select all inputs of a certain type.

```css
input[type="radio"] {
  /* styles here */
}
```

### Psuedo-Classes

#### Focus

- The `:focus` pseudo-class is applied when the user clicks on an input element.
- Can be used to style the element when it is in focus.

```css
input:focus,
select:focus,
textarea:focus {
  border: 2px solid black;
  background: #fff;
}
```

#### Invalid vs User-invalid

- Validity is determined by constraint attributes.
- `:invalid` applied when the user has provided invalid input.
  - Will show elements as invalid on page load.
- `:user-invalid` applied when the user has provided invalid input.
  - Will not show elements as invalid on page load.
  - Not yet supported by all browsers.

```css
input:user-invalid {
  border: 2px solid red;
}
```

## Form Design

A few best practices:

- Use a `<label>` for every `<input>`.
- Use a `<fieldset>` and `<legend>` to group related data.
- Required fields should be marked as such.
- Use the `placeholder` attribute to provide an example of the expected input where helpful.
- Forms should contain only a single column.
- Labels should go above the input.
  - [Label Placement in Forms](https://www.uxmatters.com/mt/archives/2006/07/label-placement-in-forms.php)
- Buttons should use a cursor pointer.
- Don't rely on color alone to indicate required fields.

## Demo - Tying it All Together

<p class="codepen" data-height="300" data-default-tab="html,result" data-slug-hash="eYxQrwE" data-user="Mike-Jovanovich" style="height: 300px; box-sizing: border-box; display: flex; align-items: center; justify-content: center; border: 2px solid; margin: 1em 0; padding: 1em;">
  <span>See the Pen <a href="https://codepen.io/Mike-Jovanovich/pen/eYxQrwE">
  Fun With Forms</a> by Mike Jovanovich (<a href="https://codepen.io/Mike-Jovanovich">@Mike-Jovanovich</a>)
  on <a href="https://codepen.io">CodePen</a>.</span>
</p>
<script async src="https://cpwebassets.codepen.io/assets/embed/ei.js"></script>
```
