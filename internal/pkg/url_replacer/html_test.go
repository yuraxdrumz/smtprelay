package urlreplacer

import (
	"os"
	"testing"

	"github.com/decke/smtprelay/internal/pkg/encoder"
	"github.com/stretchr/testify/assert"
)

func TestImageSrc(t *testing.T) {
	body := `<div dir="ltr">Hey ma<div><br></div><div><br></div><div><h3 style="margin:15px 0px;padding:0px;font-size:14px;color:rgb(0,0,0);font-family:&quot;Open Sans&quot;,Arial,sans-serif">The standard Lorem Ipsum passage, used since the 1500s</h3><p style="margin:0px 0px 15px;padding:0px;text-align:justify;color:rgb(0,0,0);font-family:&quot;Open Sans&quot;,Arial,sans-serif;font-size:14px">&quot;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&quot;</p><h3 style="margin:15px 0px;padding:0px;font-size:14px;color:rgb(0,0,0);font-family:&quot;Open Sans&quot;,Arial,sans-serif">Section 1.10.32 of &quot;de Finibus Bonorum et Malorum&quot;, written by Cicero in 45 BC</h3><p style="margin:0px 0px 15px;padding:0px;text-align:justify;color:rgb(0,0,0);font-family:&quot;Open Sans&quot;,Arial,sans-serif;font-size:14px">&quot;Sed  <span style="font-family:Arial,Helvetica,sans-serif;font-size:small;color:rgb(34,34,34)"><a href="https://www.google.com.tr/admin/subPage?qs1=sss1&amp;qs2=sss2&amp;qs3=sss3#Services" target="_blank">https://www.google.com.tr/admin/subPage?qs1=sss1&amp;qs2=sss2&amp;qs3=sss3#Services</a></span></p><a href="https://google.com.tr/test/subPage?qs1=sss1&amp;qs2=sss2&amp;qs3=sss3#Services" target="_blank">https://google.com.tr/test/subPage?qs1=sss1&amp;qs2=sss2&amp;qs3=sss3#Services</a><br><a href="http://google.com/test/subPage?qs1=sss1&amp;qs2=sss2&amp;qs3=sss3#Services" target="_blank">http://google.com/test/subPage?qs1=sss1&amp;qs2=sss2&amp;qs3=sss3#Services</a><br><a href="ftp://google.com/test/subPage?qs1=sss1&amp;qs2=sss2&amp;qs3=sss3#Services" target="_blank">ftp://google.com/test/subPage?qs1=sss1&amp;qs2=sss2&amp;qs3=sss3#Services</a><br><a href="http://www.google.com.tr/test/subPage?qs1=sss1&amp;qs2=sss2&amp;qs3=sss3#Services" target="_blank">www.google.com.tr/test/subPage?qs1=sss1&amp;qs2=sss2&amp;qs3=sss3#Services</a><br><a href="http://www.google.com/test/subPage?qs1=sss1&amp;qs2=sss2&amp;qs3=sss3#Services" target="_blank">www.google.com/test/subPage?qs1=sss1&amp;qs2=sss2&amp;qs3=sss3#Services</a><br><a href="http://drive.google.com/test/subPage?qs1=sss1&amp;qs2=sss2&amp;qs3=sss3#Services" target="_blank">drive.google.com/test/subPage?qs1=sss1&amp;qs2=sss2&amp;qs3=sss3#Services</a><br><a href="https://www.example.pl" target="_blank">https://www.example.pl</a><br><a href="http://www.example.com" target="_blank">http://www.example.com</a><br><a href="http://www.example.pl" target="_blank">www.example.pl</a><br><a href="http://example.com" target="_blank">example.com</a><br><a href="http://blog.example.com" target="_blank">http://blog.example.com</a><br><a href="http://www.example.com/product" target="_blank">http://www.example.com/product</a><br><a href="http://www.example.com/products?id=1&amp;page=2" target="_blank">http://www.example.com/products?id=1&amp;page=2</a><br><a href="http://www.example.com#up" target="_blank">http://www.example.com#up</a><br><a href="http://255.255.255.255" target="_blank">http://255.255.255.255</a><br>255.255.255.255<br><p style="margin:0px 0px 15px;padding:0px;text-align:justify;color:rgb(0,0,0);font-family:&quot;Open Sans&quot;,Arial,sans-serif;font-size:14px"><span style="font-family:Arial,Helvetica,sans-serif;font-size:small;color:rgb(34,34,34)"><a href="http://shop.facebook.org/derf.html" target="_blank">shop.facebook.org/derf.html</a></span> ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?&quot;</p><h3 style="margin:15px 0px;padding:0px;font-size:14px;color:rgb(0,0,0);font-family:&quot;Open Sans&quot;,Arial,sans-serif">1914 translation by H. Rackham</h3><div><br></div><div><a href="https://www.facebook.com" target="_blank">https://www.facebook.com</a><br><a href="https://app-1.number123.com" target="_blank">https://app-1.number123.com</a><br><a href="http://facebook.com" target="_blank">http://facebook.com</a><br><a href="ftp://facebook.com" target="_blank">ftp://facebook.com</a><br><a href="http://localhost:3000" target="_blank">http://localhost:3000</a><br>localhost:3000/<br></div><div><br></div><p style="margin:0px 0px 15px;padding:0px;text-align:justify;color:rgb(0,0,0);font-family:&quot;Open Sans&quot;,Arial,sans-serif;font-size:14px">&quot;But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?&quot;</p><h3 style="margin:15px 0px;padding:0px;font-size:14px;color:rgb(0,0,0);font-family:&quot;Open Sans&quot;,Arial,sans-serif">Section 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot;, written by Cicero in 45 BC</h3><p style="margin:0px 0px 15px;padding:0px;text-align:justify;color:rgb(0,0,0);font-family:&quot;Open Sans&quot;,Arial,sans-serif;font-size:14px">&quot;At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati <span style="font-family:Arial,Helvetica,sans-serif;font-size:small;color:rgb(34,34,34)"><a href="https://www.facebook.com" target="_blank">https://www.facebook.com</a></span></p><a href="https://app-1.number123.com" target="_blank">https://app-1.number123.com</a><br><a href="http://facebook.com" target="_blank">http://facebook.com</a><br><a href="ftp://facebook.com" target="_blank">ftp://facebook.com</a><br><a href="http://localhost:3000" target="_blank">http://localhost:3000</a><br>localhost:3000/<br><a href="http://unitedkingdomurl.co.uk" target="_blank">unitedkingdomurl.co.uk</a><br><a href="http://this.is.a.url.com/its/still=going?wow" target="_blank">this.is.a.url.com/its/still=going?wow</a><br><a href="http://shop.facebook.org" target="_blank">shop.facebook.org</a><br><a href="http://app.number123.com" target="_blank">app.number123.com</a><br><a href="http://app1.number123.com" target="_blank">app1.number123.com</a><br><a href="http://app-1.numbEr123.com" target="_blank">app-1.numbEr123.com</a><br><a href="http://app.dashes-dash.com" target="_blank">app.dashes-dash.com</a><br><a href="http://www.facebook.com" target="_blank">www.facebook.com</a><br><a href="http://facebook.com" target="_blank">facebook.com</a><br><a href="http://fb.com/hello_123" target="_blank">fb.com/hello_123</a><br><a href="http://fb.com/hel-lo" target="_blank">fb.com/hel-lo</a><br><a href="http://fb.com/hello/goodbye" target="_blank">fb.com/hello/goodbye</a><br><a href="http://fb.com/hello/goodbye?okay" target="_blank">fb.com/hello/goodbye?okay</a><br><a href="http://fb.com/hello/goodbye?okay=alright" target="_blank">fb.com/hello/goodbye?okay=alright</a><br><p style="margin:0px 0px 15px;padding:0px;text-align:justify;color:rgb(0,0,0);font-family:&quot;Open Sans&quot;,Arial,sans-serif;font-size:14px"><span style="font-family:Arial,Helvetica,sans-serif;font-size:small;color:rgb(34,34,34)">Hello<span class="gmail-Apple-converted-space"> </span><a href="http://www.google.com" target="_blank">www.google.com</a><span class="gmail-Apple-converted-space"> </span>World<span class="gmail-Apple-converted-space"> </span><a href="http://yahoo.com" target="_blank">http://yahoo.com</a></span> cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.&quot;</p><p style="margin:0px 0px 15px;padding:0px;text-align:justify;color:rgb(0,0,0);font-family:&quot;Open Sans&quot;,Arial,sans-serif;font-size:14px"><br></p><p style="margin:0px 0px 15px;padding:0px;text-align:justify;color:rgb(0,0,0);font-family:&quot;Open Sans&quot;,Arial,sans-serif;font-size:14px">Thanks</p></div></div>`

	aes256Encoder := encoder.NewAES256Encoder()
	urlReplacer := NewRegexUrlReplacer("http://localhost:1333", aes256Encoder)
	html := NewHTMLReplacer(urlReplacer)

	replacedBody, links, err := html.Replace(body)
	assert.NoError(t, err)
	assert.Len(t, links, 43)
	assert.NotContains(t, replacedBody, "href=\"http://facebook.com\"")
	assert.NotContains(t, replacedBody, "<html>")
}

func TestReplaceHTMLTagOnce(t *testing.T) {
	body := `<html xmlns:v="urn:schemas-microsoft-com:vml" xmlns:o="ur
	n:schemas-microsoft-com:office:office" xmlns:w="urn:schem
	as-microsoft-com:office:word" xmlns:m="http://schemas.mic
	rosoft.com/office/2004/12/omml" xmlns="http://www.w3.org/
	TR/REC-html40">
	<head>
	<meta http-equiv="Content-Type" 
	content="text/html; charset=utf-8">
	<meta name="Generato
	r" content="Microsoft Word 15 (filtered medium)">
	<!--[i
	f !mso]><style>v\:* {behavior:url(#default#VML);}
	o\:* {
	behavior:url(#default#VML);}
	w\:* {behavior:url(#default
	#VML);}
	.shape {behavior:url(#default#VML);}
	</style><!
	[endif]--><style><!--
	/* Font Definitions */
	@font-face
	
		{font-family:"Cambria Math";
		panose-1:2 4 5 3 5 4 6 
	3 2 4;}
	@font-face
		{font-family:Calibri;
		panose-1:2 
	15 5 2 2 2 4 3 2 4;}
	@font-face
		{font-family:"Apple Co
	lor Emoji";
		panose-1:0 0 0 0 0 0 0 0 0 0;}
	@font-face
	
		{font-family:Poppins;
		panose-1:0 0 5 0 0 0 0 0 0 0;}
	
	@font-face
		{font-family:"Source Sans Pro";
		panose-1:
	2 11 5 3 3 4 3 2 2 4;}
	@font-face
		{font-family:-apple-
	system;
		panose-1:2 11 6 4 2 2 2 2 2 4;}
	/* Style Defin
	itions */
	p.MsoNormal, li.MsoNormal, div.MsoNormal
		{ma
	rgin:0cm;
		text-align:right;
		direction:rtl;
		unicode-
	bidi:embed;
		font-size:10.0pt;
		font-family:"Calibri",s
	ans-serif;}
	a:link, span.MsoHyperlink
		{mso-style-prior
	ity:99;
		color:#0563C1;
		text-decoration:underline;}
	s
	pan.EmailStyle19
		{mso-style-type:personal-reply;
		font
	-family:"Calibri",sans-serif;
		color:windowtext;}
	.MsoC
	hpDefault
		{mso-style-type:export-only;
		font-size:10.0
	pt;
		mso-ligatures:none;}
	@page WordSection1
		{size:61
	2.0pt 792.0pt;
		margin:72.0pt 90.0pt 72.0pt 90.0pt;}
	di
	v.WordSection1
		{page:WordSection1;}
	--></style><!--[if
	 gte mso 9]><xml>
	<o:shapedefaults v:ext="edit" spidmax=
	"1026" />
	</xml><![endif]--><!--[if gte mso 9]><xml>
	<o
	:shapelayout v:ext="edit">
	<o:idmap v:ext="edit" data="1
	" />
	</o:shapelayout></xml><![endif]-->
	</head>
	<body 
	lang="en-IL" link="#0563C1" vlink="#954F72" style="word-w
	rap:break-word">
	<div class="WordSection1">
	<p class="M
	soNormal" style="text-align:left;direction:ltr;unicode-bi
	di:embed"><span lang="EN-US" style="font-size:11.0pt">htt
	ps://youtube.com<o:p></o:p></span></p>
	<p class="MsoNorm
	al" style="text-align:left;direction:ltr;unicode-bidi:emb
	ed"><span style="font-size:11.0pt"><o:p>&nbsp;</o:p></spa
	n></p>
	<div id="mail-editor-reference-message-container"
	>
	<div>
	<div style="border:none;border-top:solid #B5C4D
	F 1.0pt;padding:3.0pt 0cm 0cm 0cm">
	<p class="MsoNormal"
	 style="margin-bottom:12.0pt;text-align:left;direction:lt
	r;unicode-bidi:embed">
	<b><span style="font-size:12.0pt;
	color:black">From: </span></b><span style="font-size:12.0
	pt;color:black">Yuri Khomyakov &lt;yurik@cynet.com&gt;<br
	>
	<b>Date: </b>Monday, 9 October 2023 at 14:50<br>
	<b>T
	o: </b>eyaltest@cynetint.onmicrosoft.com &lt;eyaltest@cyn
	etint.onmicrosoft.com&gt;<br>
	<b>Subject: </b>FW: Hackma
	te 2023 - Yossi, David &amp; Emanuel<o:p></o:p></span></p
	>
	</div>
	<p class="MsoNormal" style="text-align:left;di
	rection:ltr;unicode-bidi:embed"><span style="font-size:11
	.0pt">&nbsp;</span><o:p></o:p></p>
	<p class="MsoNormal" 
	style="text-align:left;direction:ltr;unicode-bidi:embed">
	<span style="font-size:11.0pt">&nbsp;</span><o:p></o:p></
	p>
	<div id="mail-editor-reference-message-container">
	<
	div>
	<div style="border:none;border-top:solid #B5C4DF 1.
	0pt;padding:3.0pt 0cm 0cm 0cm">
	<p class="MsoNormal" sty
	le="margin-bottom:12.0pt;text-align:left;direction:ltr;un
	icode-bidi:embed">
	<b><span style="font-size:12.0pt;colo
	r:black">From: </span></b><span style="font-size:12.0pt;c
	olor:black">Yuri Khomyakov &lt;yurik@cynet.com&gt;<br>
	<
	b>Date: </b>Thursday, 5 October 2023 at 16:12<br>
	<b>To:
	 </b>eyaltest@cynetint.onmicrosoft.com &lt;eyaltest@cynet
	int.onmicrosoft.com&gt;<br>
	<b>Subject: </b>FW: Hackmate
	 2023 - Yossi, David &amp; Emanuel</span><o:p></o:p></p>
	
	</div>
	<p class="MsoNormal" style="text-align:left;dire
	ction:ltr;unicode-bidi:embed"><span style="font-size:11.0
	pt">&nbsp;</span><o:p></o:p></p>
	<p class="MsoNormal" st
	yle="text-align:left;direction:ltr;unicode-bidi:embed"><s
	pan style="font-size:11.0pt">&nbsp;</span><o:p></o:p></p>
	
	<div id="mail-editor-reference-message-container">
	<di
	v>
	<div style="border:none;border-top:solid #B5C4DF 1.0p
	t;padding:3.0pt 0cm 0cm 0cm">
	<p class="MsoNormal" style
	="margin-bottom:12.0pt;text-align:left;direction:ltr;unic
	ode-bidi:embed">
	<b><span lang="EN-US" style="font-size:
	12.0pt;color:black">From: </span></b><span lang="EN-US" s
	tyle="font-size:12.0pt;color:black">Hadar Sahar &lt;hadar
	s@cynet.com&gt;<br>
	<b>Date: </b>Tuesday, 5 September 20
	23 at 12:49<br>
	<b>To: </b>All &lt;all@cynet.com&gt;<br>
	
	<b>Cc: </b>Gal Tandler &lt;galt@cynet.com&gt;, Aldema G
	ilad &lt;aldemag@cynet.com&gt;<br>
	<b>Subject: </b>Hackm
	ate 2023 - Yossi, David &amp; Emanuel</span><o:p></o:p></
	p>
	</div>
	<p class="MsoNormal" align="center" dir="RTL"
	 style="text-align:center"><b><span lang="HE" style="font
	-size:22.0pt;color:#FF3399;mso-ligatures:standardcontextu
	al">ביום חמישי הקרוב זה קורה!
	</span
	></b><span dir="LTR"><o:p></o:p></span></p>
	<p class="Ms
	oNormal" align="center" dir="RTL" style="text-align:cente
	r"><b><u><span lang="HE" style="font-size:22.0pt;color:#F
	F3399;mso-ligatures:standardcontextual">יוסי, עמנ
	אל ודוד הולכים לייצג אותנו בטו
	ניר השחמט הארצי של חברות הסייב
	 המובילות בישראל!</span></u></b><span lang
	="HE"><o:p></o:p></span></p>
	<p class="MsoNormal" align=
	"center" dir="RTL" style="text-align:center"><b><span lan
	g="HE" style="font-size:22.0pt;color:#FF3399;mso-ligature
	s:standardcontextual">כולנו מחזיקים אצבע
	ת ובטוחים שתייצגו אותנו בכבוד!<
	/span></b><span lang="HE"><o:p></o:p></span></p>
	<p clas
	s="MsoNormal" align="center" dir="RTL" style="text-align:
	center"><b><span lang="HE" style="font-size:22.0pt;color:
	#FF3399;mso-ligatures:standardcontextual">&nbsp;</span></
	b><span lang="HE"><o:p></o:p></span></p>
	<p class="MsoNo
	rmal" align="center" dir="RTL" style="text-align:center">
	<b><span lang="HE" style="font-size:22.0pt;color:#FF3399;
	mso-ligatures:standardcontextual">מעוניינים לה
	גיע לעודד?
	</span></b><span lang="HE"><o:p></o:p
	></span></p>
	<p class="MsoNormal" align="center" dir="RT
	L" style="text-align:center"><b><span lang="HE" style="fo
	nt-size:22.0pt;color:#FF3399;mso-ligatures:standardcontex
	tual">עדכנו את צוות ה</span></b><b><span dir=
	"LTR" style="font-size:22.0pt;color:#FF3399;mso-ligatures
	:standardcontextual">HR</span></b><span dir="RTL"></span>
	<span dir="RTL"></span><b><span lang="HE" style="font-siz
	e:22.0pt;color:#FF3399;mso-ligatures:standardcontextual">
	<span dir="RTL"></span><span dir="RTL"></span>
	 ונדא
	ג לכם לכניסה לטורניר </span></b><b><span
	 dir="LTR" style="font-size:22.0pt;font-family:&quot;Appl
	e Color Emoji&quot;;color:#FF3399;mso-ligatures:standardc
	ontextual">&#128522;</span></b><span lang="HE"><o:p></o:p
	></span></p>
	<p class="MsoNormal" align="center" dir="RT
	L" style="text-align:center"><span dir="LTR"></span><span
	 dir="LTR"></span><b><span lang="EN-US" dir="LTR" style="
	font-size:22.0pt;mso-ligatures:standardcontextual"><span 
	dir="LTR"></span><span dir="LTR"></span>&nbsp;</span></b>
	<span lang="HE"><o:p></o:p></span></p>
	<p class="MsoNorm
	al" align="center" dir="RTL" style="text-align:center"><s
	pan lang="EN-US" dir="LTR" style="font-size:11.0pt"><img 
	width="664" height="664" style="width:6.9166in;height:6.9
	166in" id="Picture_x0020_8" src="cid:image001.jpg@01D9DFF
	7.3742A150"></span><span lang="HE"><o:p></o:p></span></p>
	
	<p class="MsoNormal" dir="RTL"><span dir="LTR"></span><
	span dir="LTR"></span><span lang="EN-US" dir="LTR" style=
	"font-size:12.0pt;mso-ligatures:standardcontextual"><span
	 dir="LTR"></span><span dir="LTR"></span>&nbsp;</span><sp
	an lang="HE"><o:p></o:p></span></p>
	<table class="MsoNor
	malTable" border="0" cellpadding="0">
	<tbody>
	<tr>
	<td
	 width="260" valign="bottom" style="width:195.0pt;padding
	:.75pt 33.75pt .75pt .75pt">
	<table class="MsoNormalTabl
	e" border="0" cellpadding="0">
	<tbody>
	<tr>
	<td style=
	"padding:.75pt .75pt .75pt .75pt">
	<p class="MsoNormal" 
	align="right" style="text-align:right;direction:ltr;unico
	de-bidi:embed">
	<span style="font-size:11.0pt"><img widt
	h="70" height="37" style="width:.7291in;height:.3854in" i
	d="Picture_x0020_1" src="cid:image002.png@01D9DFF7.3742A1
	50" alt="Crop"></span><span lang="HE" dir="RTL"><o:p></o:
	p></span></p>
	</td>
	</tr>
	<tr>
	<td style="padding:.75
	pt .75pt .75pt .75pt">
	<p class="MsoNormal" align="cente
	r" style="text-align:center;direction:ltr;unicode-bidi:em
	bed">
	<span style="font-size:11.0pt"><img width="134" he
	ight="134" style="width:1.3958in;height:1.3958in" id="Pic
	ture_x0020_2" src="cid:image003.png@01D9DFF7.3742A150"></
	span><o:p></o:p></p>
	</td>
	</tr>
	<tr>
	<td style="padd
	ing:.75pt .75pt .75pt .75pt">
	<p class="MsoNormal" style
	="text-align:left;direction:ltr;unicode-bidi:embed"><span
	 style="font-size:11.0pt"><img width="194" height="52" st
	yle="width:2.0208in;height:.5416in" id="Picture_x0020_3" 
	src="cid:image004.png@01D9DFF7.3742A150" alt="Cloud"></sp
	an><o:p></o:p></p>
	</td>
	</tr>
	</tbody>
	</table>
	</t
	d>
	<td style="padding:.75pt .75pt .75pt .75pt">
	<table 
	class="MsoNormalTable" border="0" cellpadding="0">
	<tbod
	y>
	<tr>
	<td colspan="5" style="padding:.75pt .75pt .75p
	t .75pt">
	<p class="MsoNormal" style="margin-bottom:2.25
	pt;text-align:left;direction:ltr;unicode-bidi:embed">
	<b
	><span style="font-size:18.0pt;font-family:Poppins;color:
	#1E202C">Hadar Sahar</span></b><o:p></o:p></p>
	</td>
	</
	tr>
	<tr>
	<td colspan="5" style="padding:.75pt .75pt .75
	pt .75pt">
	<p class="MsoNormal" style="text-align:left;l
	ine-height:15.0pt;direction:ltr;unicode-bidi:embed">
	<b>
	<span style="font-size:12.0pt;font-family:&quot;Source Sa
	ns Pro&quot;,sans-serif;color:#F9379F">Wellbeing Manager<
	/span></b><o:p></o:p></p>
	</td>
	</tr>
	<tr>
	<td colspa
	n="5" style="padding:.75pt .75pt .75pt .75pt">
	<p class=
	"MsoNormal" style="text-align:left;direction:ltr;unicode-
	bidi:embed"><span style="font-size:11.0pt"><img width="1"
	 height="1" style="width:.0104in;height:.0104in" id="Pict
	ure_x0020_4" src="cid:image005.png@01D9DFF7.3742A150"></s
	pan><o:p></o:p></p>
	</td>
	</tr>
	<tr>
	<td colspan="5" 
	style="padding:.75pt .75pt .75pt .75pt">
	<p class="MsoNo
	rmal" style="text-align:left;direction:ltr;unicode-bidi:e
	mbed"><b><span style="font-size:10.5pt;font-family:&quot;
	Source Sans Pro&quot;,sans-serif;color:#1E202C">052-73644
	22</span></b><o:p></o:p></p>
	</td>
	</tr>
	<tr>
	<td col
	span="5" style="padding:.75pt .75pt .75pt .75pt">
	<p cla
	ss="MsoNormal" style="text-align:left;direction:ltr;unico
	de-bidi:embed"><span style="font-size:11.0pt;font-family:
	&quot;Source Sans Pro&quot;,sans-serif"><a href="mailto:H
	adars@cynet.com"><span style="font-size:10.5pt;color:#1E2
	02C">Hadars@cynet.com</span></a>&nbsp;|&nbsp;<a href="htt
	ps://www.cynet.com/"><span style="font-size:10.5pt;color:
	#1E202C">www.cynet.com</span></a></span><o:p></o:p></p>
	
	</td>
	</tr>
	<tr>
	<td width="110" style="width:82.5pt;p
	adding:3.75pt .75pt .75pt .75pt">
	<p class="MsoNormal" s
	tyle="text-align:left;direction:ltr;unicode-bidi:embed"><
	span style="font-size:13.5pt;font-family:-apple-system;co
	lor:black"><img border="0" width="99" height="24" style="
	width:1.0312in;height:.25in" id="Picture_x0020_5" src="ci
	d:image006.png@01D9DFF7.3742A150" alt="Cynet logo"></span
	><o:p></o:p></p>
	</td>
	<td style="border:none;border-le
	ft:solid #1E202C 1.0pt;padding:.75pt .75pt .75pt .75pt">
	
	<p class="MsoNormal" style="text-align:left;direction:lt
	r;unicode-bidi:embed"><span style="font-size:11.0pt"><img
	 border="0" width="1" height="1" style="width:.0104in;hei
	ght:.0104in" id="Picture_x0020_6" src="cid:image005.png@0
	1D9DFF7.3742A150"></span><o:p></o:p></p>
	</td>
	<td styl
	e="padding:.75pt .75pt .75pt .75pt">
	<p class="MsoNormal
	" style="text-align:left;direction:ltr;unicode-bidi:embed
	"><a href="https://www.linkedin.com/in/hadar-sahar-083b17
	175/"><span style="color:windowtext;text-decoration:none"
	><span style="font-size:13.5pt;font-family:-apple-system;
	color:blue"><img border="0" width="20" height="20" style=
	"width:.2083in;height:.2083in" id="Picture_x0020_7" src="
	cid:image007.png@01D9DFF7.3742A150" alt="linkedin logo"><
	/span></span></a><o:p></o:p></p>
	</td>
	<td style="paddi
	ng:.75pt .75pt .75pt .75pt"></td>
	<td style="padding:.75
	pt .75pt .75pt .75pt"></td>
	</tr>
	</tbody>
	</table>
	<
	/td>
	</tr>
	</tbody>
	</table>
	<p class="MsoNormal" sty
	le="text-align:left;direction:ltr;unicode-bidi:embed"><sp
	an lang="EN-US" style="font-size:11.0pt">&nbsp;</span><o:
	p></o:p></p>
	<p class="MsoNormal" dir="RTL"><span lang="
	EN-US" dir="LTR" style="font-size:11.0pt;mso-ligatures:st
	andardcontextual">&nbsp;</span><span dir="LTR"><o:p></o:p
	></span></p>
	</div>
	</div>
	</div>
	</div>
	</div>
	</d
	iv>
	</div>
	</body>
	</html>
	`

	aes256Encoder := encoder.NewAES256Encoder()
	urlReplacer := NewRegexUrlReplacer("http://localhost:1333", aes256Encoder)
	html := NewHTMLReplacer(urlReplacer)

	replacedBody, links, err := html.Replace(body)
	assert.NoError(t, err)
	assert.Len(t, links, 2)
	assert.Contains(t, replacedBody, "<html")
	assert.Contains(t, replacedBody, "</html>")
}

func TestReplaceOnlyHrefs(t *testing.T) {
	body := `<html xmlns:v="urn:schemas-microsoft-com:vml" xmlns:o="ur
	n:schemas-microsoft-com:office:office" xmlns:w="urn:schem
	as-microsoft-com:office:word" xmlns:m="http://schemas.mic
	rosoft.com/office/2004/12/omml" xmlns="http://www.w3.org/
	TR/REC-html40">
	<head>
	<meta http-equiv="Content-Type" 
	content="text/html; charset=utf-8">
	<meta name="Generato
	r" content="Microsoft Word 15 (filtered medium)">
	<!--[i
	f !mso]><style>v\:* {behavior:url(#default#VML);}
	o\:* {
	behavior:url(#default#VML);}
	w\:* {behavior:url(#default
	#VML);}
	.shape {behavior:url(#default#VML);}
	</style><!
	[endif]--><style><!--
	/* Font Definitions */
	@font-face
	
		{font-family:"Cambria Math";
		panose-1:2 4 5 3 5 4 6 
	3 2 4;}
	@font-face
		{font-family:Calibri;
		panose-1:2 
	15 5 2 2 2 4 3 2 4;}
	@font-face
		{font-family:"Apple Co
	lor Emoji";
		panose-1:0 0 0 0 0 0 0 0 0 0;}
	@font-face
	
		{font-family:Poppins;
		panose-1:0 0 5 0 0 0 0 0 0 0;}
	
	@font-face
		{font-family:"Source Sans Pro";
		panose-1:
	2 11 5 3 3 4 3 2 2 4;}
	@font-face
		{font-family:-apple-
	system;
		panose-1:2 11 6 4 2 2 2 2 2 4;}
	/* Style Defin
	itions */
	p.MsoNormal, li.MsoNormal, div.MsoNormal
		{ma
	rgin:0cm;
		text-align:right;
		direction:rtl;
		unicode-
	bidi:embed;
		font-size:10.0pt;
		font-family:"Calibri",s
	ans-serif;}
	a:link, span.MsoHyperlink
		{mso-style-prior
	ity:99;
		color:#0563C1;
		text-decoration:underline;}
	s
	pan.EmailStyle19
		{mso-style-type:personal-reply;
		font
	-family:"Calibri",sans-serif;
		color:windowtext;}
	.MsoC
	hpDefault
		{mso-style-type:export-only;
		font-size:10.0
	pt;
		mso-ligatures:none;}
	@page WordSection1
		{size:61
	2.0pt 792.0pt;
		margin:72.0pt 90.0pt 72.0pt 90.0pt;}
	di
	v.WordSection1
		{page:WordSection1;}
	--></style><!--[if
	 gte mso 9]><xml>
	<o:shapedefaults v:ext="edit" spidmax=
	"1026" />
	</xml><![endif]--><!--[if gte mso 9]><xml>
	<o
	:shapelayout v:ext="edit">
	<o:idmap v:ext="edit" data="1
	" />
	</o:shapelayout></xml><![endif]-->
	</head>
	<body 
	lang="en-IL" link="#0563C1" vlink="#954F72" style="word-w
	rap:break-word">
	<div class="WordSection1">
	<p class="M
	soNormal" style="text-align:left;direction:ltr;unicode-bi
	di:embed"><span lang="EN-US" style="font-size:11.0pt">htt
	ps://youtube.com<o:p></o:p></span></p>
	<p class="MsoNorm
	al" style="text-align:left;direction:ltr;unicode-bidi:emb
	ed"><span style="font-size:11.0pt"><o:p>&nbsp;</o:p></spa
	n></p>
	<div id="mail-editor-reference-message-container"
	>
	<div>
	<div style="border:none;border-top:solid #B5C4D
	F 1.0pt;padding:3.0pt 0cm 0cm 0cm">
	<p class="MsoNormal"
	 style="margin-bottom:12.0pt;text-align:left;direction:lt
	r;unicode-bidi:embed">
	<b><span style="font-size:12.0pt;
	color:black">From: </span></b><span style="font-size:12.0
	pt;color:black">Yuri Khomyakov &lt;yurik@cynet.com&gt;<br
	>
	<b>Date: </b>Monday, 9 October 2023 at 14:50<br>
	<b>T
	o: </b>eyaltest@cynetint.onmicrosoft.com &lt;eyaltest@cyn
	etint.onmicrosoft.com&gt;<br>
	<b>Subject: </b>FW: Hackma
	te 2023 - Yossi, David &amp; Emanuel<o:p></o:p></span></p
	>
	</div>
	<p class="MsoNormal" style="text-align:left;di
	rection:ltr;unicode-bidi:embed"><span style="font-size:11
	.0pt">&nbsp;</span><o:p></o:p></p>
	<p class="MsoNormal" 
	style="text-align:left;direction:ltr;unicode-bidi:embed">
	<span style="font-size:11.0pt">&nbsp;</span><o:p></o:p></
	p>
	<div id="mail-editor-reference-message-container">
	<
	div>
	<div style="border:none;border-top:solid #B5C4DF 1.
	0pt;padding:3.0pt 0cm 0cm 0cm">
	<p class="MsoNormal" sty
	le="margin-bottom:12.0pt;text-align:left;direction:ltr;un
	icode-bidi:embed">
	<b><span style="font-size:12.0pt;colo
	r:black">From: </span></b><span style="font-size:12.0pt;c
	olor:black">Yuri Khomyakov &lt;yurik@cynet.com&gt;<br>
	<
	b>Date: </b>Thursday, 5 October 2023 at 16:12<br>
	<b>To:
	 </b>eyaltest@cynetint.onmicrosoft.com &lt;eyaltest@cynet
	int.onmicrosoft.com&gt;<br>
	<b>Subject: </b>FW: Hackmate
	 2023 - Yossi, David &amp; Emanuel</span><o:p></o:p></p>
	
	</div>
	<p class="MsoNormal" style="text-align:left;dire
	ction:ltr;unicode-bidi:embed"><span style="font-size:11.0
	pt">&nbsp;</span><o:p></o:p></p>
	<p class="MsoNormal" st
	yle="text-align:left;direction:ltr;unicode-bidi:embed"><s
	pan style="font-size:11.0pt">&nbsp;</span><o:p></o:p></p>
	
	<div id="mail-editor-reference-message-container">
	<di
	v>
	<div style="border:none;border-top:solid #B5C4DF 1.0p
	t;padding:3.0pt 0cm 0cm 0cm">
	<p class="MsoNormal" style
	="margin-bottom:12.0pt;text-align:left;direction:ltr;unic
	ode-bidi:embed">
	<b><span lang="EN-US" style="font-size:
	12.0pt;color:black">From: </span></b><span lang="EN-US" s
	tyle="font-size:12.0pt;color:black">Hadar Sahar &lt;hadar
	s@cynet.com&gt;<br>
	<b>Date: </b>Tuesday, 5 September 20
	23 at 12:49<br>
	<b>To: </b>All &lt;all@cynet.com&gt;<br>
	
	<b>Cc: </b>Gal Tandler &lt;galt@cynet.com&gt;, Aldema G
	ilad &lt;aldemag@cynet.com&gt;<br>
	<b>Subject: </b>Hackm
	ate 2023 - Yossi, David &amp; Emanuel</span><o:p></o:p></
	p>
	</div>
	<p class="MsoNormal" align="center" dir="RTL"
	 style="text-align:center"><b><span lang="HE" style="font
	-size:22.0pt;color:#FF3399;mso-ligatures:standardcontextu
	al">ביום חמישי הקרוב זה קורה!
	</span
	></b><span dir="LTR"><o:p></o:p></span></p>
	<p class="Ms
	oNormal" align="center" dir="RTL" style="text-align:cente
	r"><b><u><span lang="HE" style="font-size:22.0pt;color:#F
	F3399;mso-ligatures:standardcontextual">יוסי, עמנ
	אל ודוד הולכים לייצג אותנו בטו
	ניר השחמט הארצי של חברות הסייב
	 המובילות בישראל!</span></u></b><span lang
	="HE"><o:p></o:p></span></p>
	<p class="MsoNormal" align=
	"center" dir="RTL" style="text-align:center"><b><span lan
	g="HE" style="font-size:22.0pt;color:#FF3399;mso-ligature
	s:standardcontextual">כולנו מחזיקים אצבע
	ת ובטוחים שתייצגו אותנו בכבוד!<
	/span></b><span lang="HE"><o:p></o:p></span></p>
	<p clas
	s="MsoNormal" align="center" dir="RTL" style="text-align:
	center"><b><span lang="HE" style="font-size:22.0pt;color:
	#FF3399;mso-ligatures:standardcontextual">&nbsp;</span></
	b><span lang="HE"><o:p></o:p></span></p>
	<p class="MsoNo
	rmal" align="center" dir="RTL" style="text-align:center">
	<b><span lang="HE" style="font-size:22.0pt;color:#FF3399;
	mso-ligatures:standardcontextual">מעוניינים לה
	גיע לעודד?
	</span></b><span lang="HE"><o:p></o:p
	></span></p>
	<p class="MsoNormal" align="center" dir="RT
	L" style="text-align:center"><b><span lang="HE" style="fo
	nt-size:22.0pt;color:#FF3399;mso-ligatures:standardcontex
	tual">עדכנו את צוות ה</span></b><b><span dir=
	"LTR" style="font-size:22.0pt;color:#FF3399;mso-ligatures
	:standardcontextual">HR</span></b><span dir="RTL"></span>
	<span dir="RTL"></span><b><span lang="HE" style="font-siz
	e:22.0pt;color:#FF3399;mso-ligatures:standardcontextual">
	<span dir="RTL"></span><span dir="RTL"></span>
	 ונדא
	ג לכם לכניסה לטורניר </span></b><b><span
	 dir="LTR" style="font-size:22.0pt;font-family:&quot;Appl
	e Color Emoji&quot;;color:#FF3399;mso-ligatures:standardc
	ontextual">&#128522;</span></b><span lang="HE"><o:p></o:p
	></span></p>
	<p class="MsoNormal" align="center" dir="RT
	L" style="text-align:center"><span dir="LTR"></span><span
	 dir="LTR"></span><b><span lang="EN-US" dir="LTR" style="
	font-size:22.0pt;mso-ligatures:standardcontextual"><span 
	dir="LTR"></span><span dir="LTR"></span>&nbsp;</span></b>
	<span lang="HE"><o:p></o:p></span></p>
	<p class="MsoNorm
	al" align="center" dir="RTL" style="text-align:center"><s
	pan lang="EN-US" dir="LTR" style="font-size:11.0pt"><img 
	width="664" height="664" style="width:6.9166in;height:6.9
	166in" id="Picture_x0020_8" src="cid:image001.jpg@01D9DFF
	7.3742A150"></span><span lang="HE"><o:p></o:p></span></p>
	
	<p class="MsoNormal" dir="RTL"><span dir="LTR"></span><
	span dir="LTR"></span><span lang="EN-US" dir="LTR" style=
	"font-size:12.0pt;mso-ligatures:standardcontextual"><span
	 dir="LTR"></span><span dir="LTR"></span>&nbsp;</span><sp
	an lang="HE"><o:p></o:p></span></p>
	<table class="MsoNor
	malTable" border="0" cellpadding="0">
	<tbody>
	<tr>
	<td
	 width="260" valign="bottom" style="width:195.0pt;padding
	:.75pt 33.75pt .75pt .75pt">
	<table class="MsoNormalTabl
	e" border="0" cellpadding="0">
	<tbody>
	<tr>
	<td style=
	"padding:.75pt .75pt .75pt .75pt">
	<p class="MsoNormal" 
	align="right" style="text-align:right;direction:ltr;unico
	de-bidi:embed">
	<span style="font-size:11.0pt"><img widt
	h="70" height="37" style="width:.7291in;height:.3854in" i
	d="Picture_x0020_1" src="cid:image002.png@01D9DFF7.3742A1
	50" alt="Crop"></span><span lang="HE" dir="RTL"><o:p></o:
	p></span></p>
	</td>
	</tr>
	<tr>
	<td style="padding:.75
	pt .75pt .75pt .75pt">
	<p class="MsoNormal" align="cente
	r" style="text-align:center;direction:ltr;unicode-bidi:em
	bed">
	<span style="font-size:11.0pt"><img width="134" he
	ight="134" style="width:1.3958in;height:1.3958in" id="Pic
	ture_x0020_2" src="cid:image003.png@01D9DFF7.3742A150"></
	span><o:p></o:p></p>
	</td>
	</tr>
	<tr>
	<td style="padd
	ing:.75pt .75pt .75pt .75pt">
	<p class="MsoNormal" style
	="text-align:left;direction:ltr;unicode-bidi:embed"><span
	 style="font-size:11.0pt"><img width="194" height="52" st
	yle="width:2.0208in;height:.5416in" id="Picture_x0020_3" 
	src="cid:image004.png@01D9DFF7.3742A150" alt="Cloud"></sp
	an><o:p></o:p></p>
	</td>
	</tr>
	</tbody>
	</table>
	</t
	d>
	<td style="padding:.75pt .75pt .75pt .75pt">
	<table 
	class="MsoNormalTable" border="0" cellpadding="0">
	<tbod
	y>
	<tr>
	<td colspan="5" style="padding:.75pt .75pt .75p
	t .75pt">
	<p class="MsoNormal" style="margin-bottom:2.25
	pt;text-align:left;direction:ltr;unicode-bidi:embed">
	<b
	><span style="font-size:18.0pt;font-family:Poppins;color:
	#1E202C">Hadar Sahar</span></b><o:p></o:p></p>
	</td>
	</
	tr>
	<tr>
	<td colspan="5" style="padding:.75pt .75pt .75
	pt .75pt">
	<p class="MsoNormal" style="text-align:left;l
	ine-height:15.0pt;direction:ltr;unicode-bidi:embed">
	<b>
	<span style="font-size:12.0pt;font-family:&quot;Source Sa
	ns Pro&quot;,sans-serif;color:#F9379F">Wellbeing Manager<
	/span></b><o:p></o:p></p>
	</td>
	</tr>
	<tr>
	<td colspa
	n="5" style="padding:.75pt .75pt .75pt .75pt">
	<p class=
	"MsoNormal" style="text-align:left;direction:ltr;unicode-
	bidi:embed"><span style="font-size:11.0pt"><img width="1"
	 height="1" style="width:.0104in;height:.0104in" id="Pict
	ure_x0020_4" src="cid:image005.png@01D9DFF7.3742A150"></s
	pan><o:p></o:p></p>
	</td>
	</tr>
	<tr>
	<td colspan="5" 
	style="padding:.75pt .75pt .75pt .75pt">
	<p class="MsoNo
	rmal" style="text-align:left;direction:ltr;unicode-bidi:e
	mbed"><b><span style="font-size:10.5pt;font-family:&quot;
	Source Sans Pro&quot;,sans-serif;color:#1E202C">052-73644
	22</span></b><o:p></o:p></p>
	</td>
	</tr>
	<tr>
	<td col
	span="5" style="padding:.75pt .75pt .75pt .75pt">
	<p cla
	ss="MsoNormal" style="text-align:left;direction:ltr;unico
	de-bidi:embed"><span style="font-size:11.0pt;font-family:
	&quot;Source Sans Pro&quot;,sans-serif"><a href="mailto:H
	adars@cynet.com"><span style="font-size:10.5pt;color:#1E2
	02C">Hadars@cynet.com</span></a>&nbsp;|&nbsp;<a href="htt
	ps://www.cynet.com/"><span style="font-size:10.5pt;color:
	#1E202C">www.cynet.com</span></a></span><o:p></o:p></p>
	
	</td>
	</tr>
	<tr>
	<td width="110" style="width:82.5pt;p
	adding:3.75pt .75pt .75pt .75pt">
	<p class="MsoNormal" s
	tyle="text-align:left;direction:ltr;unicode-bidi:embed"><
	span style="font-size:13.5pt;font-family:-apple-system;co
	lor:black"><img border="0" width="99" height="24" style="
	width:1.0312in;height:.25in" id="Picture_x0020_5" src="ci
	d:image006.png@01D9DFF7.3742A150" alt="Cynet logo"></span
	><o:p></o:p></p>
	</td>
	<td style="border:none;border-le
	ft:solid #1E202C 1.0pt;padding:.75pt .75pt .75pt .75pt">
	
	<p class="MsoNormal" style="text-align:left;direction:lt
	r;unicode-bidi:embed"><span style="font-size:11.0pt"><img
	 border="0" width="1" height="1" style="width:.0104in;hei
	ght:.0104in" id="Picture_x0020_6" src="cid:image005.png@0
	1D9DFF7.3742A150"></span><o:p></o:p></p>
	</td>
	<td styl
	e="padding:.75pt .75pt .75pt .75pt">
	<p class="MsoNormal
	" style="text-align:left;direction:ltr;unicode-bidi:embed
	"><a href="https://www.linkedin.com/in/hadar-sahar-083b17
	175/"><span style="color:windowtext;text-decoration:none"
	><span style="font-size:13.5pt;font-family:-apple-system;
	color:blue"><img border="0" width="20" height="20" style=
	"width:.2083in;height:.2083in" id="Picture_x0020_7" src="
	cid:image007.png@01D9DFF7.3742A150" alt="linkedin logo"><
	/span></span></a><o:p></o:p></p>
	</td>
	<td style="paddi
	ng:.75pt .75pt .75pt .75pt"></td>
	<td style="padding:.75
	pt .75pt .75pt .75pt"></td>
	</tr>
	</tbody>
	</table>
	<
	/td>
	</tr>
	</tbody>
	</table>
	<p class="MsoNormal" sty
	le="text-align:left;direction:ltr;unicode-bidi:embed"><sp
	an lang="EN-US" style="font-size:11.0pt">&nbsp;</span><o:
	p></o:p></p>
	<p class="MsoNormal" dir="RTL"><span lang="
	EN-US" dir="LTR" style="font-size:11.0pt;mso-ligatures:st
	andardcontextual">&nbsp;</span><span dir="LTR"><o:p></o:p
	></span></p>
	</div>
	</div>
	</div>
	</div>
	</div>
	</d
	iv>
	</div>
	</body>
	</html>
	`

	aes256Encoder := encoder.NewAES256Encoder()
	urlReplacer := NewRegexUrlReplacer("http://localhost:1333", aes256Encoder)
	html := NewHTMLReplacer(urlReplacer)

	replacedBody, links, err := html.Replace(body)
	assert.NoError(t, err)
	assert.Len(t, links, 2)
	os.WriteFile("./href.msg", []byte(replacedBody), 0666)
	assert.Contains(t, replacedBody, "www.cynet.com")
}
