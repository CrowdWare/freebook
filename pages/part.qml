import FlatSiteBuilder 2.0
import TextEditor 1.0
import MarkdownEditor 1.0

Content {
    title: "part"
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
		&lt;h1&gt;Part&lt;/h1&gt;
		&lt;ul class=&quot;breadcrumb&quot;&gt;
			&lt;li&gt;&lt;a href=&quot;index.html&quot;&gt;Home&lt;/a&gt;&lt;/li&gt;
			&lt;li&gt;&lt;a href=&quot;docu.html&quot;&gt;Documentation&lt;/a&gt;&lt;/li&gt;
			&lt;li class=&quot;active&quot;&gt;Part&lt;/li&gt;
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

#### TODO
&lt;ul class=&quot;nav flex-column&quot;&gt;  
  	&lt;li class=&quot;nav-item&quot;&gt;
    	&lt;a class=&quot;nav-link&quot; href=&quot;#&quot;&gt;TODO&lt;/a&gt;
  	&lt;/li&gt;
&lt;/ul&gt;"
                }
            }

            Column {
                span: 8

                Markdown {
                    text: "## Part

A part is just a simple Markdown file. It contains the book content of one page of the book.  
&lt;br&gt;
Find details about &lt;a href=&quot;markdown.html&quot;&gt;Markdown&lt;/a&gt; &lt;a href=&quot;markdown.html&quot;&gt;here. &lt;/a&gt;."
                }
            }
        }
    }
}
