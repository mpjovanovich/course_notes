---
layout: base
title: Layouts and Alignment
course: SDEV264
---

<!-- [Layouts and Alignment](#layouts-and-alignment)
  - [Safe Area](#safe-area)
https://reactnavigation.org/docs/handling-safe-area
  - [Flexbox](#flexbox)
    - [Flex Direction](#flex-direction)
    - [Justify Content](#justify-content)
    - [Align Items](#align-items)
    - [Flex Wrap](#flex-wrap)

    - flexbox is the CONTAINER
    - the things in it are FLEX ITEMS
    - main axis vs cross axis
    - relative widths (flex: 1, e.g. take up 1/4 of screen)...

    - The outermost container of App.tsx _is a flexbox container_...
    - That is why we can use `flex: 1` on the View component to make it take up the whole screen.

    - To center actual text use textAlign and textAlignVertical (as opposed to justifyContent and alignItems)
-->

- [Layouts and Alignment](#layouts-and-alignment)
  - [Flexbox](#flexbox)
    - [Alignment](#alignment)
    - [Demos](#demos)

# Layouts and Alignment

## Flexbox

<figure>
    <span>
        <img src="https://res.cloudinary.com/practicaldev/image/fetch/s---3gDSFf1--/c_limit%2Cf_auto%2Cfl_progressive%2Cq_auto%2Cw_880/https://dev-to-uploads.s3.amazonaws.com/i/fsln7je4ax7ft3er28hh.png" style="width: 90%;">
    </span>
</figure>

Flexbox comes from CSS. It describes a way of setting up a layout.

- The parent is the **flex container**.
- The children are **flex items**.

In React Native, the View component is treated as a flex container. Child items, e.g. Text, are flex items.

**Main Axis** is the direction in which the flex items are laid out. The default is horizontal.

**Cross Axis** is the perpendicular direction to the main axis.

### Alignment

For a flex container:

- `justifyContent` aligns items along the main axis.
- `alignItems` aligns items along the cross axis.

See: [W3Schools: CSS align-items](https://www.w3schools.com/cssref/playdemo.php?filename=playcss_align-items)

See: [W3Schools: CSS justify-content](https://www.w3schools.com/cssref/playdemo.php?filename=playcss_justify-content)

For a Text component:

- `textAlign` aligns text along the main axis.
- `textAlignVertical` aligns text along the cross axis.

### Demos

[Snack: FlexboxDemo](https://snack.expo.dev/@mpjovanovich/flexboxdemo)

[Snack: FlexboxDemo-FlexItemRelativeSize](https://snack.expo.dev/@mpjovanovich/flexboxdemo-flexitemrelativesize)

[Snack: AlignmentDemo](https://snack.expo.dev/@mpjovanovich/alignmentdemo)

[Snack: NestedFlexbox](https://snack.expo.dev/@mpjovanovich/nestedflexbox)
