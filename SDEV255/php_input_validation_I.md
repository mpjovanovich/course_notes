---
layout: base
title: PHP - Input Validation I
course: SDEV255
---

# Common Techniques

## Check for Presence

- isset()
  - returns `true` if the variable exists and is not `null`
- array_key_exists()
  - returns `true` if the key exists in the array
- empty()
  - returns `true` if the variable is empty

```php
if (isset($_GET['name'])) {
    // do something
}
```
