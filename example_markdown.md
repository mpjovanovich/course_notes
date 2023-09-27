---
layout: base
title: Example Markdown
---
<!-- This is called the "yaml frontmatter". Nothing can go before it. -->

<!-- base.html will add title from above as an h1 here.> -->

<!-- 
    Use img HTML tag instead of markdown. Markdown isn't flexible enough - need to be able to resize images quickly.
    Not sure why the transform is leaving original size bounding box, but can probably fix with CSS. 
-->

<!-- Template -->
<figure>
    <span>
        <img src="" style="width: 100%">
    </span>
    <figcaption>
        <a href="">Some Link to Something, remove anchor if not needed</a>
    </figcaption>
</figure>

<!-- The wrapper span is needed to allow the image to be resized... who knows why. -->
<figure>
    <span>
        <img src="https://img.freepik.com/premium-vector/vector-illustration-hand-drawn-realistic-sketch-pangolin-isolated-white-background_231873-577.jpg" style="width: 35%">
    </span>
    <figcaption>
        <a href="">Some Link to Something</a>
    </figcaption>
</figure>

___

Link to VS code extension: [Markdown All in One](https://github.com/yzhang-gh/vscode-markdown)

We can manually add line breaks with a backslash, as in the below:

> This is a block quote. \
This is line two of the same block quote. \
--Some Author

We can do code snippets with the following syntax:

```python
## Declare and initialize three integer variables.
a = 0
x = 1
print( f'The value of a is: {a}, and the value of x is: {x}' )
```

## This is an h2

Some text.

### This is an h3

Some more text

* First level list Item A
    * Second level list Item A
        * Third level list Item A
        * Third level list Item B
        * Third level list Item C
    * Second level list Item B

1. This is a numbered list.
1. This is a numbered list.
1. This is a numbered list.


**This is just bold text.**

_This is italicized text._

~~This is strikethrough text.~~

<!-- *Must have tabindex set for css focus to work -->
<div class="spoiler_outer" tabindex="999">
  <p>What's a spoiler question?</p>
  <p class="spoiler_placeholder"></p>
  <div class="spoiler_inner">
    <p>One that has a spoiler answer.</p>
  </div>
<div>

| Table Head 1 | Table Head 2 |
| :---- | :---- |
| Content 1 | Content 2 |

