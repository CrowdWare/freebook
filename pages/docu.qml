import FlatSiteBuilder 2.0
import TextEditor 1.0
import MarkdownEditor 1.0

Content {
    title: "docu"
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
		&lt;h1&gt;Documentation&lt;/h1&gt;
		&lt;ul class=&quot;breadcrumb&quot;&gt;
			&lt;li&gt;&lt;a href=&quot;index.html&quot;&gt;Home&lt;/a&gt;&lt;/li&gt;
			&lt;li class=&quot;active&quot;&gt;Documentation&lt;/li&gt;
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
                    text: "#### Document Types
&lt;ul class=&quot;nav flex-column&quot;&gt;
  &lt;li class=&quot;nav-item&quot;&gt;
    &lt;a class=&quot;nav-link&quot; href=&quot;app.html&quot;&gt;App&lt;/a&gt;
  &lt;/li&gt;
  &lt;li class=&quot;nav-item&quot;&gt;
    &lt;a class=&quot;nav-link&quot; href=&quot;epub.html#ebook&quot;&gt;Book&lt;/a&gt;
  &lt;/li&gt;
  &lt;li class=&quot;nav-item&quot;&gt;
    &lt;a class=&quot;nav-link&quot; href=&quot;page.html&quot;&gt;Page&lt;/a&gt;
  &lt;/li&gt;
  &lt;li class=&quot;nav-item&quot;&gt;
    &lt;a class=&quot;nav-link&quot; href=&quot;part.html&quot;&gt;Part&lt;/a&gt;
  &lt;/li&gt;
&lt;/ul&gt;


#### Build
&lt;ul class=&quot;nav flex-column&quot;&gt;  
	&lt;li class=&quot;nav-item&quot;&gt;
    	&lt;a class=&quot;nav-link&quot; href=&quot;epub.html&quot;&gt;Ebook (.EPUB)&lt;/a&gt;
  	&lt;/li&gt;
	&lt;li class=&quot;nav-item&quot;&gt;
    	&lt;a class=&quot;nav-link&quot; href=&quot;#&quot;&gt;Browsable Book (.HTML)&lt;/a&gt;
  	&lt;/li&gt;
	&lt;li class=&quot;nav-item&quot;&gt;
    	&lt;a class=&quot;nav-link&quot; href=&quot;#&quot;&gt;Browsable App (.SML)&lt;/a&gt;
  	&lt;/li&gt;
&lt;/ul&gt;"
                }
            }

            Column {
                span: 8

                Markdown {
                    text: "## **Introduction**
You can browse through this documentation using the navigation on the left side. 

We hope you will find useful information here to be able to build your apps easily.

### **SML**
&lt;a href=&quot;sml.html&quot;&gt;SML (Simple Markup Language)&lt;/a&gt; is specially invented to build apps with ease.
You describe the user interface with a simple syntax, have an interactive preview where you can test the app navigation and then you are able to build various of things with it.

### **Document Types**
In NoCodeDesigner you can specify multiple different documents.
The first is **Book** stored in the file *book.sml*, with which you can describe an epub project (ebook).  
Then we have a **Part** stored in files like *home.md* inside the parts folder. This represents a page in an ebook written in the &lt;a href=&quot;markdown.html&quot;&gt;Markdown language&lt;/a&gt;.  
&lt;br&gt;
If you want to create modern ebooks with interactive content then you will use the **App** as your preferred document type.  
**App** stored in the file *app.sml*, with which you can describe a mobile app.  
Then we have a **Page** stored in files like *home.sml* inside the pages folder. This represents a page in a mobile app. It is written in &lt;a href=&quot;sml.html&quot;&gt;Simple Markup Language&lt;/a&gt;.  
&lt;br&gt;
You can see its going up and down with the languages ;-)  
So if you want to write complex books you should use markup.  
And if you want to write simple books you should use markdown.  
Best things is...you can also mix both. So you are able to write books together with someone who prefers the opposit than you do.  
One author is writing texts and the other one is embedding layouts and interactions.

### **OUTPUT**
#### Ebook
The initial goal of NoCode was to be able to build ebooks (.epub), which you can then sell on Amazon for example.
Because of the fact that you cannot display all the nice possible content like audio, video and 3D objects we decided to additionally build an ebook as native Android app, but still EPUB can be created.

#### HTML
You can publish the whole project on a web server and then you are able to load the project with a standard web browser.  
You only have to host your HTML files on a web server. You can also host them ob Github Pages for free.

#### Dynamic Web Apps
You can publish the whole project on a web server and then you are able to load the project with the NoCodeBrowser.  
In this case you don&#x27;t only have the possibility to test the app on your phone, you can also deliver your app to your customers and employees using this technology.  
This means zero deployment. You only have to host your project files on a web server. You can also host them ob Github Pages for free.

"
                }
            }
        }
    }
}
