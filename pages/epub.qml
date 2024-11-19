import FlatSiteBuilder 2.0
import TextEditor 1.0
import MarkdownEditor 1.0

Content {
    title: "Epub"
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
		&lt;h1&gt;EPUB&lt;/h1&gt;
		&lt;ul class=&quot;breadcrumb&quot;&gt;
			&lt;li&gt;&lt;a href=&quot;index.html&quot;&gt;Home&lt;/a&gt;&lt;/li&gt;
			&lt;li&gt;&lt;a href=&quot;docu.html&quot;&gt;Documentation&lt;/a&gt;&lt;/li&gt;
			&lt;li class=&quot;active&quot;&gt;EPUB&lt;/li&gt;
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
    	&lt;a class=&quot;nav-link&quot; href=&quot;markdown.html#header&quot;&gt;Header&lt;/a&gt;
  	&lt;/li&gt;
	  	&lt;li class=&quot;nav-item&quot;&gt;
    	&lt;a class=&quot;nav-link&quot; href=&quot;markdown.html#styling&quot;&gt;Styling&lt;/a&gt;
  	&lt;/li&gt;
  	&lt;li class=&quot;nav-item&quot;&gt;
    	&lt;a class=&quot;nav-link&quot; href=&quot;markdown.html#images&quot;&gt;Images&lt;/a&gt;
  	&lt;/li&gt;
  	&lt;li class=&quot;nav-item&quot;&gt;
    	&lt;a class=&quot;nav-link&quot; href=&quot;markdown.html#links&quot;&gt;Links&lt;/a&gt;
  	&lt;/li&gt;
  	&lt;li class=&quot;nav-item&quot;&gt;
    	&lt;a class=&quot;nav-link&quot; href=&quot;markdown.html#chars&quot;&gt;Special characters&lt;/a&gt;
  	&lt;/li&gt;
&lt;/ul&gt;

#### Ebook Properties
&lt;ul class=&quot;nav flex-column&quot;&gt;  
	&lt;li class=&quot;nav-item&quot;&gt;
    	&lt;a class=&quot;nav-link&quot; href=&quot;#ebook&quot;&gt;smlVersion&lt;/a&gt;
  	&lt;/li&gt;
  	&lt;li class=&quot;nav-item&quot;&gt;
    	&lt;a class=&quot;nav-link&quot; href=&quot;#ebook&quot;&gt;name&lt;/a&gt;
  	&lt;/li&gt;
  	&lt;li class=&quot;nav-item&quot;&gt;
    	&lt;a class=&quot;nav-link&quot; href=&quot;#ebook&quot;&gt;version&lt;/a&gt;
  	&lt;/li&gt;	
  	&lt;li class=&quot;nav-item&quot;&gt;
    	&lt;a class=&quot;nav-link&quot; href=&quot;#ebook&quot;&gt;theme&lt;/a&gt;
  	&lt;/li&gt;
  	&lt;li class=&quot;nav-item&quot;&gt;
    	&lt;a class=&quot;nav-link&quot; href=&quot;#ebook&quot;&gt;creator&lt;/a&gt;
  	&lt;/li&gt;
  	&lt;li class=&quot;nav-item&quot;&gt;
    	&lt;a class=&quot;nav-link&quot; href=&quot;#ebook&quot;&gt;language&lt;/a&gt;
  	&lt;/li&gt;
&lt;/ul&gt;

#### Part Properties
&lt;ul class=&quot;nav flex-column&quot;&gt;  
	&lt;li class=&quot;nav-item&quot;&gt;
    	&lt;a class=&quot;nav-link&quot; href=&quot;#&quot;&gt;src&lt;/a&gt;
  	&lt;/li&gt;
&lt;/ul&gt;

"
                }
            }

            Column {
                span: 8

                Markdown {
                    text: "## EPUB
Epub3 is the actual ebook format.
It consists of xhtml, images, stylesheets and toc (table of contents).
The ebook is just a folder with all the above files zipped to a .epub file.

## Creation
To create such an epub archieve you have to create a new project using the NoCodeDesigner and choose **book** as one of the options.
Then all necesarry file and folders will be created for you.

If you already have created a project without choosing the **book** option you can do the following.
Find the project folder on your harddrive. Add the folder **parts** inside this folder and add the file **book.sml** into the root folder of the project. 

In the parts folder add a file with the name *home.sml*. This will be your first page.
Add markdown content like 
```md
# Title
Lorem ipsum dolor
```

The content of the *book.sml* will look as follows.
```sml
Ebook {
  smlVersion: &quot;1.1&quot;
  name: &quot;Your book title&quot;
  version: &quot;1.0&quot;
  theme: &quot;Epub3&quot;
  creator: &quot;Your name&quot;
  language: &quot;en&quot;

  Part {
    src: &quot;home.md&quot;
  }
}
```

&lt;a id=&quot;ebook&quot;&gt;&lt;/a&gt;
## Ebook
| Property  | Description  | Default |
|------------|------------|------------|
| **smlVersion**| This is the version the programm is using internally. This used to be able to read files from older versions also. In this case 1.1 is used which means the grammar is at version 1 and   | 1.1|
| **name**   | The name or title of the book. |  |
| **version**| The version of the book| |
| **theme**| This is the template name to render the epub content.| Epub3 |
| **creator**| Your name or the name of the author.| |
| **language**| The language of the book. At the moment we support **en** for english and **de** for German.| en |


"
                }
            }
        }
    }
}
