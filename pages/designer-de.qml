import FlatSiteBuilder 2.0
import TextEditor 1.0
import MarkdownEditor 1.0
import ImageEditor 1.0

Content {
    title: "Designer"
    menu: "default-de"
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
			&lt;li&gt;&lt;a href=&quot;index-de.html&quot;&gt;Startseite&lt;/a&gt;&lt;/li&gt;
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
Der Designer ist derzeit noch ein Prototyp, der aber schon so einiges auf dem Kasten hat.  
Du kannst zum Beispiel jede Änderung, die Du im **SML** (**S**imple **M**arkup **L**anguage) vornimmst, sofort in der Vorschau sehen.  

Wenn Du Buttons verwendest, um zu anderen Seiten zu navigieren, dann funktioniert diese Navigation bereits auch in der Vorschau.  

Videos werden hier allerdings nur als Thumbnail angezeigt.
"
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
				&lt;h4&gt;Werd auch Du zum &lt;strong&gt;Designer&lt;/strong&gt;&lt;/h4&gt;
				&lt;p class=&quot;lead&quot;&gt;
				 	Mit unser Hilfe kannst auch Du zum App-Designer werden. Du mußt weder Programmieren lernen noch Informatik studieren.
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
                    adminlabel: "SML"
                }
            }

            Column {
                span: 6

                Markdown {
                    text: "**SML** steht für **S**imple **M**arkup **L**anguage und ist verwandt mit QML (Qt Markup Language).  
  
Eine App ist in Seiten (Pages) eingeteilt. 
Der User kann später in der App von Seite zu Seite navigieren.   
Entweder mit einem Tap auf einen Button oder das tappen eines Links.  
Oder mit einem sogenannten Pager, mit dem man die Seiten nach links oder rechts wischen kann.  

Jede Seite fängt mit **Page** an.  
Der Inhalt der Page wird zwischen die geschweiften Klammern **{** und **}** gesetzt.
"
                }
            }
        }

        Row {

            Column {
                span: 12

                Markdown {
                    text: "

Ein Attribut wie oben backgroundColor (Hintergrundfarbe) wird mit dem Zeichen &quot;:&quot; ein Wert in Hochkomma bzw. Anführungszeichen zugewiesen. 
In diesem Fall die Zeichenkette &quot;#0000ßß&quot; was den Hexadezimalwert für eine Farbe darstellt.  
So eine Farbwert setzt sich aus dem Zeichen &quot;#&quot; und drei Hexadezimalwerten für die Farbwerte R (rot), G (gelb) und B(blau) zusammen. 
Die Werte haben einen Bereich von &quot;00&quot; (0) bis &quot;FF&quot; (255).  
Stellt man den drei Farbwerte noch einen Hexwert voran, so bezeichnet dieser die Transparenz &quot;00&quot; unsichtbar bis &quot;ff&quot; vollständig sichtbar.  

Der Wert &quot;color&quot; steht hier für die Textfarbe und &quot;padding&quot; für die inneren Abstände.  Der Wert padding: &quot;8&quot; bedeutet, das alle Abstände (oben, unten, link und rechts) auf
8 dp (dichteunabhängige Pixel) eingestellt sind. Bei padding: &quot;8 16 20 4&quot; steht jeder Wert für oben, rechts, unten, links.  
Also oben 8, rechts 16, unten 20 und links 4."
                    adminlabel: "Page"
                }
            }
        }

        Row {

            Column {
                span: 12

                Markdown {
                    text: "&lt;p class=&quot;p-3&quot;&gt;&lt;/p&gt;
# Layouts
Um Elemente innerhalb der Seite anzuordnen benutzt man Layouts wie zum Beipiel **Row** und **Column**.  
"
                    adminlabel: "Layouts"
                }
            }
        }

        Row {

            Column {
                span: 3

                Markdown {
                    text: "Mit der **Row** werden die Elemente innerhalb von links nach rechts in Spalten angeordnet."
                }
            }

            Column {
                span: 3

                Markdown {
                    text: "```qml
Row {
    Text { 
		text: &quot;Linke Spalte&quot; 
	}
	Text { 
		text: &quot;Rechte Spalte&quot; 
	}
}
```"
                    adminlabel: "Row"
                }
            }

            Column {
                span: 3

                Markdown {
                    text: "Mit Column werden die Elemente innerhalb von oben nach unten in Zeilen angeordnet."
                }
            }

            Column {
                span: 3

                Markdown {
                    text: "```qml
Column {
    Text { 
		text: &quot;Obere Zeile&quot; 
	}
	Text { 
		text: &quot;Untere Zeile&quot; 
	}
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
# Elemente
"
                    adminlabel: "Elemente"
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
                    text: "Normalen Text kann man mit dem Element **Text** darstellen."
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
                    adminlabel: "Markdown"
                }
            }

            Column {
                span: 3

                Markdown {
                    text: "Mit **Markdown** kann man formatierten Text darstellen."
                }
            }
        }

        Row {

            Column {
                span: 3

                Markdown {
                    text: "Schaltflächen definiert man mit dem Element **Button**.  
Das Attribut **label** definiert welcher Text im Button angezeigt werden soll und **link** definiert, was passieren soll, 
wenn der Nutzer den Button anklickt.  
In diesem Fall wird die Seite **about** geöffnet."
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
                    text: "Mit dem Element **Video** kann man ein Video anzeigen, das Bestandteil des Projektes ist und im Verzeichnis assets abgelegt wurde.  
Das Attribut **src** definiert die Videodatei hier &quot;beach.mp4&quot; und das Attribut **height** definiert die Höhe des Videos in dp (device pixel)."
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
                    text: "Dies sind nur ein paar der verfügbaren Elemente und Attribute. Dafür wird es dann später eine Dokumentation geben.  
Wir beschränken uns hier nun erst einmal darauf, das wichtigste zuerst zu implementieren.  

Und da dies ein Open Source Projekt ist, hoffe ich, das sich noch ein paar Entwickler einfinden werden, die den Rest erledigen ;-)"
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
                    adminlabel: "Markdown Syntax"
                }
            }
        }

        Row {

            Column {
                span: 4

                Markdown {
                    text: "```qml
Markdown { text: &quot;
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
&quot;}
```
"
                }
            }

            Column {
                span: 4

                Markdown {
                    text: "Mit der Hilfe von Markdown, einer Sprache die zum Beispiel von GitHub, Reddit, Stack Overflow und Trello genutzt wird, um Text zu formatieren,
kannst Du sehr einfach und schnell Text eingeben.

Mit dem Zeichen # leitest Du zum Beispiel eine Überschrift (&amp;lt;H1&amp;gt;) ein.  
Stellst Du der Zeile zwei ## dieser Zeichen voran, so wird ein Untertitel (&amp;lt;H2&amp;gt;) erzeugt und so weiter bis &amp;lt;H6&amp;gt;.  "
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
                    adminlabel: "Syntax markdown"
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
