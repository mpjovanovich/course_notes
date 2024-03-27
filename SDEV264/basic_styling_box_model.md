---
layout: base
title: Basic Styling
course: SDEV264
---

- [Device Specific Rendering](#device-specific-rendering)
- [Basic Styling](#basic-styling)
  - [Inline Styles](#inline-styles)
  - [Stylesheet Object](#stylesheet-object)
  - [Inheritance](#inheritance)
  - [Finding List of Supported Styles](#finding-list-of-supported-styles)
- [The Box Model](#the-box-model)
  - [Relevant Styles](#relevant-styles)
  - [Rounded Corners](#rounded-corners)

# Device Specific Rendering

You cannot know what the app will actually look like on a device until you run it on that device.

For large projects, no choice but to test on multiple devices.

For snippet testing and proof of concepts, current best workflow (that I know of):

- Create snippet on https://snack.expo.dev
- Launch iPhone simulator
- Open Android emulator on local machine, login to expo, open project

# Basic Styling

[React Native: Styling](https://reactnative.dev/docs/style)

Styles in React are similar to CSS, but not exactly the same.

- Uses a subset of CSS properties and values; not all CSS properties supported.
- Styles are set using `style` attribute of components.
- Style attribute expects JSON object (`{...}` notation).
- Limited style inheritance.

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

## Inheritance

[Snack: StyleInheritance](https://snack.expo.dev/@mpjovanovich/styleinheritance)

Only some styles are inherited from parent to child components, e.g:

- color
- font and alignment attributes
  - fontSize
  - fontWeight
  - fontFamily
  - fontStyle
  - textAlign
  - justifyContent

## Finding List of Supported Styles

See the documentation, e.g.: [React Native: View Style Props](https://reactnative.dev/docs/view-style-props)

Left side menu has core components.

Right side menu has properties that can be set for style (style props).

# The Box Model

From outermost to innermost:

Margin > Border > Padding > Content

<figure>
    <span>
        <img src="https://www.simplilearn.com/ice9/free_resources_article_thumb/CSS-Box-Model.png" style="width: 80%;">
    </span>
</figure>

## Relevant Styles

[Snack: SimpleBox](https://snack.expo.dev/@mpjovanovich/simplebox)

## Rounded Corners

[Snack: SimpleBox-RoundedCorners](https://snack.expo.dev/@mpjovanovich/simplebox-roundedcorners)
