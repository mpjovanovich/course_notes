

# This is an h1

- [This is an h1](#this-is-an-h1)
  - [This is an h2](#this-is-an-h2)
    - [This is an h3](#this-is-an-h3)

___

<!-- 
    Use img HTML tag instead of markdown. Markdown isn't flexible enough - need to be able to resize images quickly.
    Not sure why the transform is leaving original size bounding box, but can probably fix with CSS. 
-->

<!-- The wrapper span is needed to allow the image to be resized... who knows why. -->
<span style="display: inline-block;">
    <img src="https://img.freepik.com/premium-vector/vector-illustration-hand-drawn-realistic-sketch-pangolin-isolated-white-background_231873-577.jpg" class="center" style="width: 40%">
</span>

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