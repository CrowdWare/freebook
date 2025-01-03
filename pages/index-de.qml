import FlatSiteBuilder 2.0
import RevolutionSlider 1.0
import TextEditor 1.0
import MarkdownEditor 1.0
import ImageEditor 1.0

Content {
    title: "FreeBook"
    menu: "default-de"
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
	&lt;strong&gt;Willkommen&lt;/strong&gt; bei FreeBook
&lt;/h1&gt;
&lt;p&gt;FreeBook ist ein Projekt von &lt;a href=&quot;https://www.crowdware.at&quot;&gt;CrowdWare&lt;/a&gt;&lt;/p&gt;

"
                }
            }
        }

        Row {

            Column {
                span: 12

                Markdown {
                    text: "

## Vision
Die Idee hinter FreeBook ist es, interaktive Ebooks zu erstellen mit denen man nicht nur Videos, Sound und Interaktionen integrieren kann, sondern auch 3D Animationen, für Tutorials zum Beispiel, einbinden kann.

Aus dieser Idee ist nun eine von Software für den Desktop entstanden, mit der Du einfach und schnell Dein eigenes Buch erstellen kannst.
"
                    adminlabel: "Vision"
                }
            }
        }

        Row {

            Column {
                span: 12

                Image {
                    src: "pitch.gif"
                }
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
				&lt;h4&gt;&lt;strong&gt;Wir sind&lt;/strong&gt;&lt;/h4&gt;
				&lt;p class=&quot;lead&quot;&gt;
				 	der Wandel...
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
                    link: "designer-de.html"
                    animation: "slideInLeft"
                    animation_type: "Sliding Entrances"
                }
            }

            Column {
                span: 6

                Markdown {
                    text: "
## Einfach zu nutzen

Du kannst mittels Markdown ganz einfach Texte schreiben und formatieren.

Mit einem Klick erstellst Du Dein eigenes Ebook, welches Du u.a. auf Amazon (KDP) und Tolino Media anbieten kannst.


## Eigene App
Willst Du ein modernes Ebook inklusive Videos, YouTube Video, Interaktion, Buttons, klickbare Bilder und 3D Animationen, dann kannst Du dies auf einfache Weise mittels
SML (**S**imple **M**arkup **L**anguage) schreiben, die App in der Vorschau begutachten, interaktiv ausprobieren und veröffentlichen.  
Später gibt es dann auch einen Drag and Drop Designer, wenn Du keine Lust haben solltest, Text einzugeben.

Die App ist sofort online verfügbar und Du und jeder andere, den du einen entsprechenden Link sendest, kann diese App mit FreeBookReader lesen. "
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
	&lt;h3&gt;Willst Du die &lt;strong&gt;APP&lt;/strong&gt; für den Desktop haben und anfangen NEUES zu schaffen?&lt;a href=&quot;https://github.com/CrowdWare/FreeBookDesigner/releases&quot; target=&quot;_blank&quot; class=&quot;btn btn-primary btn-lg&quot;&gt;DOWNLOAD&lt;/a&gt;&lt;/h3&gt;
&lt;/div&gt;
&lt;div class=&quot;bs-callout text-center styleBackground&quot;&gt;
	&lt;h3&gt;Willst Du die &lt;strong&gt;APP&lt;/strong&gt; für Android haben und anfangen Bücher zu lesen?&lt;a href=&quot;https://github.com/CrowdWare/FreeBookReader/releases&quot; target=&quot;_blank&quot; class=&quot;btn btn-primary btn-lg&quot;&gt;DOWNLOAD&lt;/a&gt;&lt;/h3&gt;
&lt;/div&gt;

&lt;!-- /CALLOUT --&gt;

"
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
                    text: "# Roadmap
- 2025 Bereitstellung des NoCodeDesigners für Windows und Linux
- 2025 Bereitstellung des NoCodeBrowsers für iOS

## NoCodeDesigner
- Drag&#x27;n&#x27;drop Design Panel
- One-Click-Bereitstellung einer App als .APK (Android) und .IPO (iOS) (kann dann im App- bzw Play Store veröffentlicht werden, eigene AppId)

## Feedback
Für all diese Features ist natürlich ihr Feedback von großer Wichtigkeit, denn wie wollen nur das integrieren, was unsere Kunden auch wirklich wollen.  
Wir werden diesbezüglich ein Feature-Rating einführen. Da können sie neue Features vorschlagen und andere Nutzer können ihre Stimme dafür abgeben.  
Features, die vo den meisten Kunden gewünscht werden, werden wir prioritär behandeln und implementieren."
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
				&lt;h4&gt;Die Welt braucht &lt;strong&gt;Deine Bücher&lt;/strong&gt;&lt;/h4&gt;
				&lt;p class=&quot;lead&quot;&gt;
				 	damit noch mehr Menschen informiert werden.
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

    Section {
    }
}
