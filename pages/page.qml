import FlatSiteBuilder 2.0
import TextEditor 1.0
import MarkdownEditor 1.0

Content {
    title: "Page"
    menu: "default"
    author: "Olaf"
    keywords: "android,app,no code"
    layout: "default"
    date: "2024-10-10"

    Section {
        fullwidth: true

        Text {
            text: "&lt;header id=&quot;page-title&quot;&gt;
	&lt;div class=&quot;container&quot;&gt;
		&lt;h1&gt;Page&lt;/h1&gt;
		&lt;ul class=&quot;breadcrumb&quot;&gt;
			&lt;li&gt;&lt;a href=&quot;index.html&quot;&gt;Home&lt;/a&gt;&lt;/li&gt;
			&lt;li&gt;&lt;a href=&quot;docu.html&quot;&gt;Documentation&lt;/a&gt;&lt;/li&gt;
			&lt;li class=&quot;active&quot;&gt;Page&lt;/li&gt;
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
                    text: "## Page
The page is the main document in all apps.  
&lt;br&gt;
All apps are loading the home page when they are started. That&#x27;s also the reason why this page can not be renamed or be deleted.  
&lt;br&gt;
For more information about how to write a page have a look at the &lt;a href=&quot;sml.html&quot;&gt;SML definition&lt;/a&gt; &lt;a href=&quot;sml.html&quot;&gt;here&lt;/a&gt;."
                }
            }
        }
    }
}
