import FlatSiteBuilder 2.0
import TextEditor 1.0
import MarkdownEditor 1.0
import ImageEditor 1.0

Content {
    title: "Designer"
    menu: "default"
    author: "Olaf"
    keywords: "android,app,no code"
    layout: "default"
    date: "2024-10-05"

    Section {
        fullwidth: true

        Text {
            text: "&lt;header id=&quot;page-title&quot;&gt;
	&lt;div class=&quot;container&quot;&gt;
		&lt;h1&gt;Designer&lt;/h1&gt;
		&lt;ul class=&quot;breadcrumb&quot;&gt;
			&lt;li&gt;&lt;a href=&quot;index.html&quot;&gt;Home&lt;/a&gt;&lt;/li&gt;
			&lt;li class=&quot;active&quot;&gt;Designer&lt;/li&gt;
		&lt;/ul&gt;
	&lt;/div&gt;
&lt;/header&gt;"
        }
    }

    Section {

        Row {

            Column {
                span: 12

                Markdown {
                    text: "# Designer
The designer is currently still a prototype, but it already has quite a bit to offer.  
For example, you can see any changes you make in the SML (**S**imple **M**arkup **L**anguage) immediately in the preview.  

If you use buttons to navigate to other pages, this navigation already works in the preview as well.  

However, videos are only displayed as thumbnails here."
                }
            }
        }
    }

    Section {

        Row {

            Column {
                span: 12

                Image {
                    src: "desktop.png"
                }
            }
        }
    }

    Section {
        cssclass: "parallax margin-top80"
        style: "background-image: url('assets/images/natur.jpg');"
        attributes: "data-stellar-background-ratio='0.7'"

        Row {

            Column {
                span: 12

                Text {
                    text: "&lt;div class=&quot;container&quot;&gt;
	&lt;div class=&quot;row animation_fade_in&quot;&gt;
		&lt;div class=&quot;col-md-6&quot;&gt;&lt;/div&gt;
		&lt;div class=&quot;col-md-6&quot;&gt;
			&lt;div class=&quot;white-row&quot;&gt;
				&lt;h4&gt;Become a &lt;strong&gt;Designer&lt;/strong&gt;&lt;/h4&gt;
				&lt;p class=&quot;lead&quot;&gt;
				 	With our help, you can also become an app designer. You don&#x27;t need to learn programming or study computer science.
				&lt;/p&gt;
			&lt;/div&gt;
		&lt;/div&gt;
	&lt;/div&gt;
&lt;/div&gt;"
                    adminlabel: "Prallanx"
                }
            }
        }
    }

    Section {

        Row {

            Column {
                span: 12

                Markdown {
                    text: "&lt;p class=&quot;p-3&quot;&gt;&lt;/p&gt;
# SML"
                    adminlabel: "SML"
                }
            }
        }

        Row {

            Column {
                span: 6

                Markdown {
                    text: "```qml
Page {
	backgroundColor: &quot;#0000ßß&quot; 
	color: &quot;#ffffFF&quot; 
	padding: &quot;8&quot;

	Column {
		padding: &quot;8&quot;

		Markdown {
			color: &quot;#888888&quot;
			text: &quot;Lorem ipsum dolor&quot;
		}
	}
}
```"
                }
            }

            Column {
                span: 6

                Markdown {
                    text: "SML stands for **S**imple **M**arkup **L**anguage and its similar to QML (Qt Markup Language). 

An app is divided into pages. The user can later navigate from page to page,  
either by tapping a button or tapping a link.  
Or with a so-called pager, which allows you to swipe the pages left or right.  

Each page then gets a so-called element to identify what type of file it is.
In the case of the page, this is **Page**. The content of the element is surrounded by the characters **{** and **}**.
"
                }
            }
        }

        Row {

            Column {
                span: 12

                Markdown {
                    text: "
An attribute like the one above, backgroundColor (background color), is assigned a value in quotes with the “=” sign.
In this case, the string “#0000FF” represents the hexadecimal value for a color.
Such a color value consists of the character “#” followed by three hexadecimal values for the color components R (red), G (green), and B (blue).
The values range from “00” (0) to “FF” (255).
If a hexadecimal value is prefixed to the three color values, it denotes the transparency, with “00” being fully transparent and “FF” being fully opaque. 

The value “color” here represents the text color, and “padding” refers to the inner spacing. The value padding=&quot;8&quot; means that all spacings (top, bottom, left, and right) are set to 8 dp (density-independent pixels). For padding=&quot;8 16 20 4&quot;, each value corresponds to top, right, bottom, and left, respectively.
So, top is 8, right is 16, bottom is 20, and left is 4.
"
                }
            }
        }

        Row {

            Column {
                span: 12

                Markdown {
                    text: "&lt;p class=&quot;p-3&quot;&gt;&lt;/p&gt;
# Layouts
To arrange elements within the page, layouts such as **Row** and **Column** are used.
"
                    adminlabel: "Layouts"
                }
            }
        }

        Row {

            Column {
                span: 3

                Markdown {
                    text: "With the **Row**, the elements are arranged in columns from left to right."
                }
            }

            Column {
                span: 3

                Markdown {
                    text: "```qml
Row {
    Text { 
		text: &quot;left column&quot; 
	}
	Text { 
		text: &quot;right column&quot; 
	}
}
```"
                    adminlabel: "Row"
                }
            }

            Column {
                span: 3

                Markdown {
                    text: "With **Column**, the elements are arranged in rows from top to bottom."
                }
            }

            Column {
                span: 3

                Markdown {
                    text: "```qml
Column {
    Text { text: &quot;upper row&quot; }
	Text { text: &quot;lower row&quot; }
}
```"
                    adminlabel: "Column"
                }
            }
        }

        Row {

            Column {
                span: 12

                Markdown {
                    text: "&lt;p class=&quot;p-3&quot;&gt;&lt;/p&gt;
# Elements
"
                    adminlabel: "Elements"
                }
            }
        }

        Row {

            Column {
                span: 3

                Markdown {
                    text: "```qml
Text {
	text: &quot;Lorem ipsum dolor&quot;
}
```"
                    adminlabel: "Text"
                }
            }

            Column {
                span: 3

                Markdown {
                    text: "Normal text can be represented using the **Text** element."
                }
            }

            Column {
                span: 3

                Markdown {
                    text: "```qml
Markdown {
	text: &quot;
		# Header
		Lorem ipsum
		- List item
		- List item
		&quot;
}
```"
                    adminlabel: "Markdown Element"
                }
            }

            Column {
                span: 3

                Markdown {
                    text: "With **Markdown**, formatted text can be represented."
                }
            }
        }

        Row {

            Column {
                span: 3

                Markdown {
                    text: "Buttons are defined using the **Button** element.  
The **label** attribute specifies what text should be displayed on the button, and **link** defines what happens when the user clicks the button.  
In this case, the **about** page will be opened."
                }
            }

            Column {
                span: 3

                Markdown {
                    text: "```qml
Button {
	label: &quot;About&quot;
	link: &quot;page:about&quot;
}
```"
                    adminlabel: "Button"
                }
            }

            Column {
                span: 3

                Markdown {
                    text: "The **Video** element can be used to display a video that is part of the project and has been stored in the assets directory.  
The **src** attribute specifies the video file, in this case, &quot;beach.mp4,&quot; and the **height** attribute defines the height of the video in dp (device pixels)."
                }
            }

            Column {
                span: 3

                Markdown {
                    text: "```qml
Video { 
	src: &quot;beach.mp4&quot; 
	height: &quot;120&quot;
}
```"
                    adminlabel: "Video"
                }
            }
        }

        Row {

            Column {
                span: 12

                Markdown {
                    text: "These are just a few of the available elements and attributes. A documentation for this will be provided later.  
For now, we will focus on implementing the most important features first.

And since this is an open-source project, I hope that a few more developers will join in to complete the rest. ;-)"
                }
            }
        }
    }

    Section {

        Row {

            Column {
                span: 12

                Markdown {
                    text: "&lt;p class=&quot;p-3&quot;&gt;&lt;/p&gt;
# Markdown"
                    adminlabel: "Mardown Syntax"
                }
            }
        }

        Row {

            Column {
                span: 4

                Markdown {
                    text: "```qml
Markdown { 
	text: &quot;
		# Heading 1
		## Heading 2
		### Heading 3
		#### Heading 4
		##### Heading 5
		###### Heading 6
		*Line 2*
		**Line 3**
		***Line 4***
		(c) (tm) (r) &amp;gt; &amp;amp; &amp;lt;
		(C) (TM) (R)
		~~this is strikethrough~~
		&quot;
}
```"
                }
            }

            Column {
                span: 4

                Markdown {
                    text: "
With the help of Markdown, a language used by platforms like GitHub, Reddit, Stack Overflow, and Trello to format text,  
you can easily and quickly input text.

For example, the # symbol introduces a heading (&amp;lt;H1&amp;gt;).  
If you prepend the line with two ## symbols, it creates a subheading (&amp;lt;H2&amp;gt;), and so on, up to &amp;lt;H6&amp;gt;."
                    adminlabel: "Syntax"
                }
            }

            Column {
                span: 4

                Image {
                    src: "markdown_output.png"
                }
            }
        }
    }

    Section {

        Row {

            Column {
                span: 12

                Markdown {
                    text: "

Willst Du ein Wort *kursiv* darstellen, dann stellst du es innerhalb von zwei * Zeichen.  
Willst Du ein Wort **fett** darstellen, dann stellst du es innerhalb von zwei mal ** Zeichen.  
***Fett und kursiv*** wird dadurch erreicht, dass du eine´oder mehrere Wörter innerhalb von zwei mal *** Zeichen stellst.  
Wenn Du den Text &lt;del&gt;durchgestrichen&lt;/del&gt; darstellen möchtest, benutzt du zwei ~~ Zeichen vor und zwei Zeichen hinter dem Wort."
                }
            }
        }
    }

    Section {

        Row {

            Column {
                span: 12

                Text {
                    text: "&lt;style&gt;
.nx {
    color: #61BEA6;
}

.s2 {
    color: #BE896F;
}

.k {
    color: #A0D4FC;
}

/* Hintergrundfarbe für den &lt;pre&gt;-Tag */
pre {
    background-image: none;
   
}

pre .p {
    color: #f2c307;; 
}

&lt;/style&gt;"
                    adminlabel: "Style"
                }
            }
        }
    }
}
