import FlatSiteBuilder 2.0
import TextEditor 1.0
import MarkdownEditor 1.0

Content {
    title: "markdown"
    menu: "default"
    author: "Olaf"
    keywords: "android,app,no code"
    layout: "default"
    date: "2024-10-30"

    Section {
        fullwidth: true

        Text {
            text: "&lt;header id=&quot;page-title&quot;&gt;
	&lt;div class=&quot;container&quot;&gt;
		&lt;h1&gt;Markdown&lt;/h1&gt;
		&lt;ul class=&quot;breadcrumb&quot;&gt;
			&lt;li&gt;&lt;a href=&quot;index.html&quot;&gt;Home&lt;/a&gt;&lt;/li&gt;
			&lt;li&gt;&lt;a href=&quot;docu.html&quot;&gt;Documentation&lt;/a&gt;&lt;/li&gt;
			&lt;li class=&quot;active&quot;&gt;Markdown&lt;/li&gt;
		&lt;/ul&gt;
	&lt;/div&gt;
&lt;/header&gt;"
        }
    }

    Section {

        Row {

            Column {
                span: 4

                Markdown {
                    text: "#### Documentation
&lt;ul class=&quot;nav flex-column&quot;&gt;
  &lt;li class=&quot;nav-item&quot;&gt;
    &lt;a class=&quot;nav-link&quot; href=&quot;docu.html&quot;&gt;Home&lt;/a&gt;
  &lt;/li&gt;
&lt;/ul&gt;

#### Markdown
&lt;ul class=&quot;nav flex-column&quot;&gt;  
  	&lt;li class=&quot;nav-item&quot;&gt;
    	&lt;a class=&quot;nav-link&quot; href=&quot;#header&quot;&gt;Header&lt;/a&gt;
  	&lt;/li&gt;
	  	&lt;li class=&quot;nav-item&quot;&gt;
    	&lt;a class=&quot;nav-link&quot; href=&quot;#styling&quot;&gt;Styling&lt;/a&gt;
  	&lt;/li&gt;
  	&lt;li class=&quot;nav-item&quot;&gt;
    	&lt;a class=&quot;nav-link&quot; href=&quot;#links&quot;&gt;Links&lt;/a&gt;
  	&lt;/li&gt;
  	&lt;li class=&quot;nav-item&quot;&gt;
    	&lt;a class=&quot;nav-link&quot; href=&quot;#images&quot;&gt;Images&lt;/a&gt;
  	&lt;/li&gt;
  	&lt;li class=&quot;nav-item&quot;&gt;
    	&lt;a class=&quot;nav-link&quot; href=&quot;#chars&quot;&gt;Special characters&lt;/a&gt;
  	&lt;/li&gt;
&lt;/ul&gt;"
                }
            }

            Column {
                span: 8

                Markdown {
                    text: "# Markdown Documentation

Markdown is a lightweight markup language that provides a simple syntax for formatting text. It is widely used for writing documentation, README files, and online content. 
This guide explains the current Markdown features supported in NoCodeDesigner.

## Features Implemented

&lt;a id=&quot;header&quot;&gt;&lt;/a&gt;
### 1. Headers

Headers in Markdown allow you to define section titles and headings. They are created using the `#` symbol, with the number of `#` symbols corresponding to the header level. 
For example:

```
# Header 1
## Header 2
### Header 3
#### Header 4
```

- **Usage**: Headers help organize content into sections and subsections.
- **Syntax**: Place `#` at the beginning of a line, followed by a space and the header text.
- **Levels**: Markdown supports up to six header levels, from `#` (largest) to `######` (smallest).

**Example:**

```
# Main Header
## Subheader
### Sub-subheader
```

&lt;a id=&quot;styling&quot;&gt;&lt;/a&gt;
### 2. Text Styling

Markdown provides various options for styling text, such as bold, italic, and strikethrough. These styles help to emphasize important parts of the text.

- **Bold**: Use double asterisks `**text**` or double underscores `__text__` to make text bold.

```
**This is bold text**
```

- **Italic**: Use a single asterisk `*text*` or a single underscore `_text_` for italics.

```
*This is italic text*
```

- **Strikethrough**: Use double tildes `~~text~~` for strikethrough text.

```
~~This text is crossed out~~
```

&lt;a id=&quot;links&quot;&gt;&lt;/a&gt;
### 3. Hyperlinks

Markdown also allows the creation of hyperlinks, which link to external or internal content. Use square brackets `[]` for the link text and parentheses `()` for the URL.

**Syntax:**

```
[Link Text](https://example.com)
```

**Example:**

```
For more information, visit the [Markdown Guide](https://www.markdownguide.org).
```

&lt;a id=&quot;images&quot;&gt;&lt;/a&gt;
### 4. Images

Images can be embedded in Markdown similarly to hyperlinks, with an exclamation mark `!` at the beginning, followed by the alt text in square brackets `[]` and the image 
URL in parentheses `()`.

**Syntax:**

```
![Alt Text](https://example.com/image.jpg)
```

**Example:**

```
![Markdown Logo](https://markdown-here.com/img/icon256.png)
```

&lt;a id=&quot;chars&quot;&gt;&lt;/a&gt;
### 5. Special Characters
We have implemented some of the possible special characters.  
(c) renders a &amp;copy;  copyright symbol  
(r) renders a &amp;reg; registered brand symbol  
(tm) renders a &amp;trade; trademark symbol  

**Example:**
```
(c) 2024 your name
(r) Your brand
Your product(tm) 
```


### Example Document

Here is a combined example showing the use of headers, styling, hyperlinks, and images:

```
# Welcome to Markdown

**Markdown** is a lightweight markup language that can be used to *format text*, ~~cross out text~~, add [links](https://www.example.com), and display images!

![Markdown Logo](https://markdown-here.com/img/icon256.png)
```

---

This page provides a basic overview of the currently supported Markdown features. For more complex formatting or additional options, future updates may include 
extended Markdown features. If you want to use additional feature like lists, tables, codeblocks or the like, then please start a feature request. 
We really want to implement everything whats needed by most of our users."
                }
            }
        }
    }
}
