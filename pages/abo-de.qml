import FlatSiteBuilder 2.0
import TextEditor 1.0

Content {
    title: "abo"
    menu: "default"
    author: "Olaf"
    keywords: "android,app,no code"
    script: "const stripe = Stripe('pk_test_51QIlYaLrBLHuJoe9JXVrUeBfitjkDqHibawfuEI0G5n1wSLYIOwYMGPKJgHZ11hr84N2uVxXwdQJ9U2nXZt6gYlN00XR78U6NM'

);

const appearance = { /* appearance */ };
const options = { /* options */ };
const elements = stripe.elements({ clientSecret
, appearance });
const paymentElement = elements.create('payment', options);
paymentElement.mount('#payment-element');"
    layout: "default"
    date: "2024-11-08"

    Section {
        fullwidth: true

        Text {
            text: "&lt;section class=&quot;container&quot;&gt;
&lt;div class=&quot;row&quot;&gt;
&lt;div class=&quot;col-md-12&quot;&gt;
&lt;h3&gt;&lt;strong&gt;ABO&lt;/strong&gt;&lt;/h3&gt;
&lt;p class=&quot;lead&quot;&gt;
	Du kannst kostenlos mit dem Erstellung von eBooks anfangen.&lt;br&gt;
	Deine Bücher werden unter der &lt;a target=&quot;_blank&quot; href=&quot;https://creativecommons.org/licenses/by-nc-sa/4.0/?ref=chooser-v1&quot;&gt;Creative Commons Lizenz&lt;/a&gt; kostenlos veröffentlicht.&lt;br&gt;&lt;br&gt;

	Wenn du deine Bücher verkaufen möchtest kannst du zu einer kommerziellen Lizenz wechseln. Mit STARTER kannst du Bücher im EPUB3 Format erstellen und verkaufen 
	und mit der PRO Lizenz kannst Du auch Android Apps erstellen und verkaufen. Der Hinweis auf (CC) entfällt bei diesen Lizenzen.&lt;br&gt;&lt;br&gt;

	Die Abos für kommerziellen Lizenzen müssen für mindestens 3 Monat gebucht werden, danach kannst Du sie jederzeit kündigen.
&lt;/p&gt;
&lt;div class=&quot;row pricetable-container&quot;&gt;
	&lt;div class=&quot;col-md-4 price-table&quot;&gt;
		&lt;h3&gt;FREE&lt;/h3&gt;
		&lt;p&gt;	
			0,- €
			&lt;span&gt;Monatlich&lt;/span&gt;
		&lt;/p&gt;

		&lt;ul&gt;
		&lt;li&gt;Du bekommst eine nicht-kommerzielle Lizenz, die es Dir erlaubt Bücher unter der (CC) Lizenz zu veröffentlichen.&lt;/li&gt;
		&lt;li&gt;Erstelle EPUB3 (CC Lizenz)&lt;/li&gt;
		&lt;li&gt;Erstelle APK (CC Lizenz)&lt;/li&gt;
		&lt;/ul&gt;
		&lt;a href=&quot;#&quot; class=&quot;btn btn-primary btn-sm&quot;&gt;REGISTRIEREN&lt;/a&gt;
	&lt;/div&gt;
	&lt;div class=&quot;col-md-4 price-table popular&quot;&gt;
		&lt;h3&gt;STARTER&lt;/h3&gt;
		&lt;p&gt;	
			10,- €
			&lt;span&gt;Monatlich&lt;/span&gt;
		&lt;/p&gt;
		&lt;ul&gt;
			&lt;li&gt;Du bekommst eine kommerzielle Lizenz und kannst Bücher im EPUB3 Format überall verkaufen.&lt;br&gt;(Mindestlaufzeit 3 Monate)&lt;/li&gt;
			&lt;li&gt;Alle Optionen von FREE&lt;/li&gt;
			&lt;li&gt;EPUB kommerzielle Lizenz&lt;/li&gt;
		&lt;/ul&gt;
		&lt;a href=&quot;#&quot; class=&quot;btn btn-default btn-sm&quot;&gt;KAUFEN&lt;/a&gt;
	&lt;/div&gt;
	&lt;div class=&quot;col-md-4 price-table popular&quot;&gt;
		&lt;h3&gt;PRO&lt;/h3&gt;
		&lt;p&gt;	
			20,- €
			&lt;span&gt;Monatlich&lt;/span&gt;
		&lt;/p&gt;
		&lt;ul&gt;
			&lt;li&gt;Du bekommst eine kommerzielle Lizenz und kannst alle Bücher überall verkaufen.&lt;br&gt;(Mindestlaufzeit 3 Monate)&lt;/li&gt;
			&lt;li&gt;Alle Optionen von STARTER&lt;/li&gt;
			&lt;li&gt;APK kommerzielle Lizenz&lt;/li&gt;
		&lt;/ul&gt;
		&lt;a href=&quot;#&quot; class=&quot;btn btn-default btn-sm&quot;&gt;KAUFEN&lt;/a&gt;
	&lt;/div&gt;
&lt;/div&gt;
&lt;/div&gt;
&lt;/div&gt;
&lt;/section&gt;"
            adminlabel: "Pricing"
        }
    }
}
