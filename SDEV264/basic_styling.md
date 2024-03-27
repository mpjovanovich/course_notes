---
layout: base
title: Basic Styling
course: SDEV264
---

- [Basic Styling](#basic-styling)
  - [Inline Styles](#inline-styles)
  - [Stylesheet Object](#stylesheet-object)

# Basic Styling

[React Native: Styling](https://reactnative.dev/docs/style)

Styles in React are similar to CSS, but not exactly the same.

- Uses a subset of CSS properties and values; not all CSS properties supported.
- Styles are set using `style` attribute of components.
- Style attribute expects JSON object (`{...}` notation).
- No cascading or inheritance.

## Inline Styles

We can create a one-time-use object directly in the `style` attribute.

```jsx
<Text style={{ color: "red", fontSize: 20 }}>Some text</Text>
```

## Stylesheet Object

We can create a stylesheet object and reference it in the `style` attribute.

- More efficient for reusing styles.
- Easier to maintain.
- Better tooling support (e.g. linting and auto-completion).

```jsx
<Text style={styles.importantText}>Some text</Text>;

const styles = StyleSheet.create({
  importantText: {
    color: "red",
    fontSize: 20,
  },
});
```
