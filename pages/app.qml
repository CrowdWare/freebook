import FlatSiteBuilder 2.0
import TextEditor 1.0
import MarkdownEditor 1.0

Content {
    title: "app"
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
		&lt;h1&gt;App&lt;/h1&gt;
		&lt;ul class=&quot;breadcrumb&quot;&gt;
			&lt;li&gt;&lt;a href=&quot;index.html&quot;&gt;Home&lt;/a&gt;&lt;/li&gt;
			&lt;li&gt;&lt;a href=&quot;docu.html&quot;&gt;Documentation&lt;/a&gt;&lt;/li&gt;
			&lt;li class=&quot;active&quot;&gt;App&lt;/li&gt;
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


#### App Properties
&lt;ul class=&quot;nav flex-column&quot;&gt;  
	&lt;li class=&quot;nav-item&quot;&gt;
    	&lt;a class=&quot;nav-link&quot; href=&quot;#app&quot;&gt;smlVersion&lt;/a&gt;
  	&lt;/li&gt;
  	&lt;li class=&quot;nav-item&quot;&gt;
    	&lt;a class=&quot;nav-link&quot; href=&quot;#app&quot;&gt;name&lt;/a&gt;
  	&lt;/li&gt;
 	&lt;li class=&quot;nav-item&quot;&gt;
    	&lt;a class=&quot;nav-link&quot; href=&quot;#app&quot;&gt;icon&lt;/a&gt;
  	&lt;/li&gt;
 	&lt;li class=&quot;nav-item&quot;&gt;
    	&lt;a class=&quot;nav-link&quot; href=&quot;#app&quot;&gt;id&lt;/a&gt;
  	&lt;/li&gt;
&lt;/ul&gt;

"
                }
            }

            Column {
                span: 8

                Markdown {
                    text: "## App
An app represents a modern ebook or even a mobile app.  
An app in our case consists of several pages where the user can navigate from one to another.  
The navigation between these pages can be done by clicking a button or a link.  
An app can be installed on Android today and maybe later on iOS as well.
An app consists not only on text and images, it can also host videos, interactive 3D objects, buttons and sound.  
&lt;br&gt;
Later we can add other elements based on user requests as well. The screen is the limit. In other words, &quot;We can display all pixels that you can imagine&quot;.

## Creation
In order to create such an app you can create a new project and check the app option. Then all necesarry files and folders will be created for you.  
&lt;br&gt;
If you already have created a project without choosing the app option you can do the following. Find the project folder on your harddrive. 
Add the folder pages inside this folder and add the file app.sml into the root folder of the project.

In the pages folder add a file with the name home.sml. This will be your first page. In the home.sml add content like 
```sml
Page {
  padding: &quot;8&quot;
    
  Text {
    text: &quot;Hello world!&quot;
  }  
}
```

The content of the app.sml will look as follows.
```sml
App {
  name: &quot;MyApp&quot;
  icon: &quot;icon.png&quot;
  id: &quot;com.example.myapp&quot;
  smlVersion: &quot;1.1&quot;

}
```
&lt;a id=&quot;app&quot;&gt;&lt;/a&gt;
## App
| Property  | Description  | Default |
|------------|------------|------------|
| **smlVersion**| This is the version the programm is using internally. This used to be able to read files from older versions also. In this case 1.1 is used which means the grammar is at version 1 and   | 1.1|
| **name**   | The name or title of the app or book. |  |
| **id**| Is is a unique identifier the mobile app. Sample: com.example.myapp| |
| **icon**| The icon of the app for the mobile desktop and the splash screen. | icon.png |


"
                }
            }
        }
    }
}
