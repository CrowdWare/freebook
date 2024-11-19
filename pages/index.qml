import FlatSiteBuilder 2.0
import RevolutionSlider 1.0
import TextEditor 1.0
import MarkdownEditor 1.0
import ImageEditor 1.0

Content {
    title: "NoCode"
    menu: "default"
    author: "Olaf"
    layout: "default"
    date: "2021-02-04"

    Section {
        fullwidth: true

        RevolutionSlider {
            fullwidth: true

            Slide {
                src: "/Users/user/SourceCode/Shift/assets/images/happypeople.png"
                adminlabel: "HappyPeople"
            }

            Slide {
                src: "/Users/art/SourceCode/WebSites/NoCode/assets/images/NoCode.png"
                adminlabel: "Gull"
            }
        }
    }

    Section {

        Row {

            Column {
                span: 12

                Text {
                    text: "&lt;h1&gt;
	&lt;strong&gt;Welcome&lt;/strong&gt; to FreeBook
&lt;/h1&gt;
&lt;p&gt;FreeBook is a project from &lt;a href=&quot;https://www.crowdware.at&quot;&gt;CrowdWare&lt;/a&gt;&lt;/p&gt;

"
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
##Vision

The original idea behind FreeBook was to create interactive eBooks that not only integrate videos, sound, and interactions but also incorporate 3D animations for tutorials, for example.
From this idea, a new way of software development and distribution has emerged.
We use the technology we are familiar with from websites and embed it into native applications.
And we do this on every platform.

###The End of Browser Wars

If you’ve been around as long as our founder, you know the issues that unfortunately still persist today.
Back then, just like now, there were many different browsers.
Every major company was eager to make its browser the standard. So we had Netscape Navigator, Internet Explorer, Safari, Firefox, Opera, Chrome, and others.
So far, none have prevailed, and as a programmer, you feel it, as you had to support all browsers, which often made the source code look quite chaotic."
                }
            }
        }

        Row {

            Column {
                span: 6

                Markdown {
                    text: "
#### Here is a simple example 
```html
.box {
  -webkit-border-radius: 10px; /* Chrome and Safari */
  -moz-border-radius: 10px; /* Firefox */
  -ms-border-radius: 10px; /* Internet Explorer */
  border-radius: 10px; /* standard property */
}
```"
                    adminlabel: "Beispiel css"
                }
            }

            Column {
                span: 6
            }
        }
    }

    Section {
        cssclass: "parallax margin-top80"
        style: "background-image: url('assets/images/natur2.jpg');"
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
				&lt;h4&gt;&lt;strong&gt;We are&lt;/strong&gt;&lt;/h4&gt;
				&lt;p class=&quot;lead&quot;&gt;
				 	the change...
				&lt;/p&gt;
			&lt;/div&gt;
		&lt;/div&gt;
	&lt;/div&gt;
&lt;/div&gt;"
                    adminlabel: "Parallax"
                }
            }
        }
    }

    Section {
        cssclass: "container margin-top80"

        Row {

            Column {
                span: 6

                Image {
                    src: "desktop.png"
                    link: "designer.html"
                    animation: "slideInLeft"
                    animation_type: "Sliding Entrances"
                }
            }

            Column {
                span: 6

                Markdown {
                    text: "##Easy to Use

Currently, the full range of features is not yet available, but you can already create an app for Android in a simple way,
without any programming knowledge, without having to compile the app, and without the hassle of publishing the app in the Play Store.

Just write a bit of SML (**S**imple **M**arkup **L**anguage), preview the app, try it out interactively, and publish it.  
Later there will also be a drag-and-drop designer, if you are bored to hack in text.

The app is instantly available online, and you and anyone else to whom you send the corresponding link can admire and work with this app using NoCodeBrowser."
                }
            }
        }
    }

    Section {

        Row {

            Column {
                span: 12

                Text {
                    text: "&lt;!-- CALLOUT --&gt;
&lt;div class=&quot;bs-callout text-center styleBackground&quot;&gt;
	&lt;h3&gt;Do you want to have the &lt;strong&gt;APP&lt;/strong&gt; for the desktop and start creating something NEW?&lt;a href=&quot;https://github.com/CrowdWare/FreeBookDesigner/releases&quot; target=&quot;_self&quot; class=&quot;btn btn-primary btn-lg&quot;&gt;DOWNLOAD&lt;/a&gt;&lt;/h3&gt;
&lt;/div&gt;

&lt;div class=&quot;bs-callout text-center styleBackground&quot;&gt;
	&lt;h3&gt;Do you want to have the &lt;strong&gt;APP&lt;/strong&gt; for Android and start reading books?&lt;a href=&quot;https://github.com/CrowdWare/FreeBookReader/releases&quot; target=&quot;_self&quot; class=&quot;btn btn-primary btn-lg&quot;&gt;DOWNLOAD&lt;/a&gt;&lt;/h3&gt;
&lt;/div&gt;
&lt;!-- /CALLOUT --&gt;"
                    adminlabel: "callout"
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
# Roadmap
- 2024 Launch of the FreeBookDesigner for MacOS, Windows, Linux, and Web
- 2024 Launch of the FreeBookReader for Android
- 2025 Launch of the FreeBookReader for iOS

## Feedback
Your feedback is crucial for all these features, as we only want to integrate what our customers truly want.  
We will introduce a feature rating system where you can suggest new features, and other users can vote for them.  
Features that are most requested by customers will be prioritized for development and implementation.
"
                    adminlabel: "Roadmap"
                }
            }
        }
    }

    Section {
        cssclass: "parallax margin-top80"
        style: "background-image: url('assets/images/natur3.jpg');"
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
				&lt;h4&gt;We need &lt;strong&gt;YOU&lt;/strong&gt;&lt;/h4&gt;
				&lt;p class=&quot;lead&quot;&gt;
					to bring something new to the world!
				 
				&lt;/p&gt;
			&lt;/div&gt;
		&lt;/div&gt;
	&lt;/div&gt;
&lt;/div&gt;"
                    adminlabel: "Parallanx"
                }
            }
        }
    }
}
