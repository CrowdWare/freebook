import FlatSiteBuilder 2.0
import TextEditor 1.0

Content {
    title: "Abo"
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
&lt;h3&gt;&lt;strong&gt;SUBSCRIPTION&lt;/strong&gt;&lt;/h3&gt;
&lt;p class=&quot;lead&quot;&gt;
	You can start creating eBooks for free.&lt;br&gt;
	Your books will be published for free under the &lt;a target=&quot;_blank&quot; href=&quot;https://creativecommons.org/licenses/by-nc-sa/4.0/?ref=chooser-v1&quot;&gt;Creative Commons License&lt;/a&gt;.&lt;br&gt;&lt;br&gt;

	If you want to sell your books, you can switch to a commercial license. With STARTER, you can create and sell books in EPUB3 format, and with the PRO license, 
	you can also create and sell books in the FreeBookReader (FBR, Android app). 
	The mention of (CC) does not apply with these licenses.&lt;br&gt;&lt;br&gt;
 
	Commercial license subscriptions must be booked for at least 3 months; after that, you can cancel at any time.
&lt;/p&gt;
&lt;div class=&quot;row pricetable-container&quot;&gt;
	&lt;div class=&quot;col-md-4 price-table&quot;&gt;
		&lt;h3&gt;FREE&lt;/h3&gt;
		&lt;p&gt;	
			€0
			&lt;span&gt;Monthly&lt;/span&gt;
		&lt;/p&gt;

		&lt;ul style=&quot;margin-bottom: 10px;&quot;&gt;
		&lt;li&gt;You get a non-commercial license that allows you to publish books under the (CC) license.&lt;br&gt;Books will show (CC) license.&lt;/li&gt;
		&lt;li&gt;Create EPUB3 (CC License)&lt;/li&gt;
		&lt;li&gt;Create FBR (CC License)&lt;/li&gt;
		&lt;/ul&gt;
&lt;stripe-buy-button
  buy-button-id=&quot;buy_btn_1QciaLLrBLHuJoe9DJlYZtN4&quot;
  publishable-key=&quot;pk_live_51QIlYaLrBLHuJoe9JaECAad04pTIKt0xuqOnOW51YEtbkyB07lLDzeHkmB60noN3qwlTPc25YFpgf0BzwzzKqWxc00Jcs6Gwr1&quot;
&gt;
&lt;/stripe-buy-button&gt;

	&lt;/div&gt;
	&lt;div class=&quot;col-md-4 price-table popular&quot;&gt;
		&lt;h3&gt;STARTER&lt;/h3&gt;
		&lt;p&gt;	
			€10
			&lt;span&gt;Monthly&lt;/span&gt;
		&lt;/p&gt;
		&lt;ul style=&quot;margin-bottom: 10px;&quot;&gt;
			&lt;li&gt;You get a commercial license and can sell books in EPUB3 format anywhere.&lt;br&gt;(Minimum term of 3 months)&lt;/li&gt;
			&lt;li&gt;All options from FREE&lt;/li&gt;
			&lt;li&gt;EPUB commercial license&lt;/li&gt;
		&lt;/ul&gt;

&lt;stripe-buy-button
  buy-button-id=&quot;buy_btn_1Qcif0LrBLHuJoe91rfk2NXx&quot;
  publishable-key=&quot;pk_live_51QIlYaLrBLHuJoe9JaECAad04pTIKt0xuqOnOW51YEtbkyB07lLDzeHkmB60noN3qwlTPc25YFpgf0BzwzzKqWxc00Jcs6Gwr1&quot;
&gt;
&lt;/stripe-buy-button&gt;

	&lt;/div&gt;
	&lt;div class=&quot;col-md-4 price-table popular&quot;&gt;
		&lt;h3&gt;&lt;del&gt;PRO&lt;/del&gt;&lt;/h3&gt;
		&lt;p&gt;	
			&lt;del&gt;€20&lt;/del&gt;
			&lt;span&gt;Monthly&lt;/span&gt;
		&lt;/p&gt;
		&lt;ul style=&quot;margin-bottom: 10px;&quot;&gt;
			&lt;li&gt;You get a commercial license and can sell all books anywhere.&lt;br&gt;(Minimum term of 3 months)&lt;/li&gt;
			&lt;li&gt;All options from STARTER&lt;/li&gt;
			&lt;li&gt;&lt;del&gt;FBR commercial license&lt;/del&gt;&lt;/li&gt;
		&lt;/ul&gt;
		&lt;strong&gt;NOT YET AVAILABLE&lt;/strong&gt;

	&lt;/div&gt;
&lt;/div&gt;
&lt;/div&gt;
&lt;/div&gt;
&lt;/section&gt;
&lt;script async
  src=&quot;https://js.stripe.com/v3/buy-button.js&quot;&gt;
&lt;/script&gt;"
            adminlabel: "Pricing"
        }
    }
}
