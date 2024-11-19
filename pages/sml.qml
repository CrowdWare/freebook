import FlatSiteBuilder 2.0
import TextEditor 1.0
import MarkdownEditor 1.0

Content {
    title: "sml"
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
		&lt;h1&gt;SML&lt;/h1&gt;
		&lt;ul class=&quot;breadcrumb&quot;&gt;
			&lt;li&gt;&lt;a href=&quot;index.html&quot;&gt;Home&lt;/a&gt;&lt;/li&gt;
			&lt;li&gt;&lt;a href=&quot;docu.html&quot;&gt;Documentation&lt;/a&gt;&lt;/li&gt;
			&lt;li class=&quot;active&quot;&gt;SML&lt;/li&gt;
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

#### SML
&lt;ul class=&quot;nav flex-column&quot;&gt;  
  	&lt;li class=&quot;nav-item&quot;&gt;
    	&lt;a class=&quot;nav-link&quot; href=&quot;#elements&quot;&gt;Elements&lt;/a&gt;
  	&lt;/li&gt;
  	&lt;li class=&quot;nav-item&quot;&gt;
    	&lt;a class=&quot;nav-link&quot; href=&quot;#layout&quot;&gt;Layout&lt;/a&gt;
  	&lt;/li&gt;
&lt;/ul&gt;"
                }
            }

            Column {
                span: 8

                Markdown {
                    text: "# Simple Markup Language (SML) Documentation for Designers

## Overview
Simple Markup Language (SML) is a user-friendly markup language designed for creating structured documents, particularly for interactive eBooks and mobile applications. 
SML allows designers to define content layout and properties using a simple and intuitive syntax, making it easy to craft visually appealing and interactive user experiences.

## Key Features
SML offers a variety of features that enable designers to create engaging content:

- **Structured Syntax**: SML provides a clear structure for defining elements and their properties, allowing for easy interpretation and rendering by applications.
- **Interactive Components**: Designers can create interactive elements such as buttons, links, and media content, enhancing user engagement and navigation within the content.
- **Markdown Support**: The inclusion of Markdown allows for easy formatting of text, enabling designers to incorporate headers, bold text, lists, and other formatting options
 seamlessly.

## Basic Syntax

&lt;a id=&quot;elements&quot;&gt;&lt;/a&gt;
### Elements
SML consists of various elements that can be combined to form a complete document. Each element represents a specific type of content or layout. Here are some common elements:

**Text Elements**: Used for displaying text, including formatted text using Markdown.
  
**Example:**
```sml
Markdown {
  text: &quot;
    # Title
    ## Subtitle
    This is a **bold** statement.&quot;
}
```

**Image Elements**: Used to embed images within the document.
  
**Example:**
```sml
Image { src: &quot;image.png&quot; }
```

**Video Elements**: Used to embed videos from local sources or external URLs.
  
**Examples:**
```sml
Video { src: &quot;beach.mp4&quot; }
Video { src: &quot;https://example.com/beach.mp4&quot; }
```

**YouTube Elements**: Used to embed YouTube videos directly.
  
**Example:**
```sml
YouTube { id: &quot;pOL66P0FdPQ&quot; }
```

**Scene Elements**: Used for 3D content, allowing for interactive 3D models with environment settings.
  
**Example:**
```sml
Scene {
  height: 200 
  model: &quot;BusterDrone.gltf&quot; 
  skybox: &quot;venetian_crossroads_2k_skybox.ktx&quot;
  ibl: &quot;venetian_crossroads_2k_ibl.ktx&quot;	
}
```

**Column Elements**: Used to organize content vertically, allowing for nesting of other elements.
  
**Example:**
```sml
Column {
  Text { text: &quot;Lorem ipsum&quot; }
  Row {
    Button { label: &quot;Back&quot; }
    Button { label: &quot;Next&quot; }
  }
}
```

**Row Elements**: Used to arrange elements horizontally within a column.

**Spacer Elements**: Used to create space between components, allowing for better layout control.
  
**Example:**
```sml
Spacer { amount: 16 }
```

**Button Elements**: Used to create interactive buttons that can link to other pages or actions.
  
**Example:**
```sml
Button { label: &quot;Next&quot; link: &quot;page:next&quot; }
```
&lt;a id=&quot;layout&quot;&gt;&lt;/a&gt;
### Layout Organization
SML allows for the organization of elements into logical structures. This can include vertical stacking of components, grouping of related items, 
and the use of spacers to adjust spacing dynamically. Columns can contain Rows for horizontal arrangements, enabling a flexible layout.

## Usage
Designers can leverage SML to create visually compelling and user-friendly layouts for interactive content. By combining different elements effectively, 
SML facilitates the development of rich and engaging eBooks that can adapt to various screen sizes and devices.

## Conclusion
SML serves as a powerful tool for designers aiming to create interactive documents with ease. Its straightforward syntax and support for various components 
make it an ideal choice for crafting structured content that is both attractive and functional.

For more information on utilizing SML, designers are encouraged to explore its capabilities and experiment with different layouts and components to fully 
leverage the potential of this markup language."
                }
            }
        }
    }
}
