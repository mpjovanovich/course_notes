---
layout: base
title: Core Components
course: SDEV264
---

- [Core Components](#core-components)
  - [View](#view)
  - [StatusBar](#statusbar)

# Core Components

```jsx
<View>
  <Text>Some text</Text>
</View>
```

## View

- Container for other components
- Corresponds to a `div` element
- Can be used to group other components
- Can be used as a wrapper for styling

## StatusBar

- Can be used to set styles for the status bar (usually at the top of the screen)
- If not included, device will use default settings for the platform

```jsx
<StatusBar backgroundColor="#00BBDD" translucent={true} />
```
