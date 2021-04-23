
GO
SET IDENTITY_INSERT [dbo].[Courses] ON 
GO
INSERT [dbo].[Courses] ([Id], [Name], [IsDeleted]) VALUES (2, N'Java', 0)
GO
INSERT [dbo].[Courses] ([Id], [Name], [IsDeleted]) VALUES (3, N'Python', 0)
GO
SET IDENTITY_INSERT [dbo].[Courses] OFF
GO
SET IDENTITY_INSERT [dbo].[Topics] ON 
GO
INSERT [dbo].[Topics] ([Name], [Description], [CourseId], [TopicId]) VALUES (N'Variables and Operations', N'<div role="tabpanel" class="" style="">
            <div class="v-tabsheet-tabsheetpanel" style="">
                <div class="v-scrollable" style="">
                    <div class="v-verticallayout v-layout v-vertical v-widget v-has-width v-has-height v-margin-top v-margin-right v-margin-bottom v-margin-left" style="width: 100%; height: 100%;">
                        <div class="v-expand" style="padding-top: 0px;">
                            <div class="v-slot" style="height: 100%; margin-top: 0px;">
                                <div class="v-label v-widget v-has-width v-has-height" style="width: 100%; height: 100%;">
                                    <style>
                                        .codeContent {
                                            overflow: visible !important;
                                        }

                                        .panelHeader {
                                            padding: 10px;
                                            border-bottom: 1px solid #ddd;
                                            background-color: #f7f7f7;
                                            border-bottom-color: #3c78b5;
                                            border-style: solid;
                                            border-color: LightGray;
                                        }

                                        .panelContent {
                                            padding: 10px;
                                            font-family: Consolas, Menlo, Monaco, Lucida Console, Liberation Mono, DejaVu Sans Mono, Bitstream Vera Sans Mono, Courier New, monospace, serif;
                                            background-color: white;
                                            border-style: solid;
                                            border-color: LightGray;
                                        }

                                        .confluenceTd {
                                            border: 1px solid #ddd;
                                            padding: 7px 10px;
                                            vertical-align: top;
                                            text-align: left;
                                            min-width: 8px
                                        }
                                    </style>


                                    <p>Variabler er plassholdere for verdier som er ukjente når man skriver programmet, eller som kan endres underveis. Se på et eksempel der man skriver kode for en nettbutikk. Når man skriver programmet vet man ikke hvor mye kunden kommer til å handle for, men man må fortsatt kunne vise denne summen på skjermen. Da bruker man en variabel for å kunne programmere dette, slik at hver kunde kan se sin egen sum.</p>
                                    <p>
                                        I noen programmeringsspråk må man&nbsp;<strong>deklarere</strong> variablene før man bruker de. Man forteller kompilatoren hva man kaller variabelen, og hva slags&nbsp;<a href="https://www.ntnu.no/wiki/display/tdt4100/Datatyper" shape="rect">datatype</a> den skal være.&nbsp;<span style="font-size: 10.0pt;line-height: 13.0pt;">Etter variablene er deklarert må man&nbsp;</span>
                                        <strong style="font-size: 10.0pt;line-height: 13.0pt;">initialisere</strong>
                                        <span style="font-size: 10.0pt;line-height: 13.0pt;"> de. Det betyr å gi de en verdi slik at de kan brukes. Etter at en variabel er initialisert kan man&nbsp;<strong>tilordne&nbsp;</strong>de ulike verdier. For mange nybegynnere kan dette se ut som samme prosess, men i kodeeksempelet nedenfor er de ulike forskjellene forklart.</span>
                                    </p>
                                    <p>
                                        <span style="font-size: 10.0pt;line-height: 13.0pt;">Java er et eksempel på et språk der variablene må deklareres. Når de er deklarert blir de også initialisert til en standard verdi, som er enten&nbsp;<em>0</em>, <em>false</em>, eller <em>null</em>. Python er et eksempel på et språk der man ikke deklarerer variablene. De blir da automatisk deklarert første gang man tilordner de en verdi.</span>
                                    </p>
                                    <div class="table-wrap">
                                        <table class="confluenceTable">
                                            <tbody>
                                                <tr>
                                                    <td class="confluenceTd" colspan="1" rowspan="1">
                                                        <div class="code panel pdl conf-macro output-block" data-hasbody="true" data-macro-name="code" style="border-width: 1px;">
                                                            <div class="codeHeader panelHeader pdl" style="border-bottom-width: 1px;">
                                                                <b>Deklarasjon i Java</b>
                                                            </div>
                                                            <div class="codeContent panelContent pdl">
<pre class="syntaxhighlighter-pre" data-syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" data-theme="Confluence">// Her skal vi bruke en heltallsvariabel, og den kaller vi alder
// Dette er deklarasjonen. Java sørger for at den også initialiseres til 0
int alder;

// alder er nå deklarert og initialisert. Nå kan man bruke den i tilordninger.
alder = 18;
&nbsp;
// Man kan også gjennomføre alle tre prosedyrene samtidig
int aar = 2013;</pre>
                                                            </div>
                                                        </div>
                                                    </td>
                                                    <td class="confluenceTd" colspan="1" rowspan="1">
                                                        <div class="code panel pdl conf-macro output-block" data-hasbody="true" data-macro-name="code" style="border-width: 1px;">
                                                            <div class="codeHeader panelHeader pdl" style="border-bottom-width: 1px;">
                                                                <b>Deklarasjon i Python</b>
                                                            </div>
                                                            <div class="codeContent panelContent pdl">
<pre class="syntaxhighlighter-pre" data-syntaxhighlighter-params="brush: python; gutter: false; theme: Confluence" data-theme="Confluence"># I python deklarerer og initialiserer man variabelen&nbsp;
# ved første tilordning
alder = 18
&nbsp;
# Merk at variabler i python må initialiseres før de
# kan brukes i tilordninger av typen nedenfor
alder += 1
&nbsp;
&nbsp;</pre>
                                                            </div>
                                                        </div>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <h2 id="VariablesandOperations-Operators">Operators</h2>
                                    <div class="table-wrap">
                                        <table class="confluenceTable">
                                            <tbody>
                                                <tr>
                                                    <td class="confluenceTd" colspan="1" rowspan="1">
                                                        <div class="code panel pdl conf-macro output-block" data-hasbody="true" data-macro-name="code" style="border-width: 1px;">
                                                            <div class="codeHeader panelHeader pdl" style="border-bottom-width: 1px;">
                                                                <b>Arithmetic operators in Java</b>
                                                            </div>
                                                            <div class="codeContent panelContent pdl">
<pre class="syntaxhighlighter-pre" data-syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" data-theme="Confluence">int x = 15;
int y = 4;

// Output: x + y = 19
System.out.println("x + y = "+ (x+y));	
	
// Output: x - y = 11
System.out.println("x - y = "+ (x-y));

// Output: x * y = 60
System.out.println("x * y = "+ x*y);

// Output: x / y = 3.0
double result = (x / y);
System.out.println("x / y = "+ result);
    
// Output: x / y = 3
System.out.println("x / y = "+ x/y);

// Output: x^y = 50625.0
System.out.println("x ^ y = "+ Math.pow (x,y));</pre>
                                                            </div>
                                                        </div>
                                                    </td>
                                                    <td class="confluenceTd" colspan="1" rowspan="1">
                                                        <div class="code panel pdl conf-macro output-block" data-hasbody="true" data-macro-name="code" style="border-width: 1px;">
                                                            <div class="codeHeader panelHeader pdl" style="border-bottom-width: 1px;">
                                                                <b>Arithmetic operators in Python</b>
                                                            </div>
                                                            <div class="codeContent panelContent pdl">
<pre class="syntaxhighlighter-pre" data-syntaxhighlighter-params="brush: py; gutter: false; theme: Confluence" data-theme="Confluence">x = 15
y = 4

# Output: x + y = 19
print(''x + y ='',x+y)

# Output: x - y = 11
print(''x - y ='',x-y)

# Output: x * y = 60
print(''x * y ='',x*y)

# Output: x / y = 3.75
print(''x / y ='',x/y)

# Output: x // y = 3
print(''x // y ='',x//y)

# Output: x ** y = 50625
print(''x ** y ='',x**y)</pre>
                                                            </div>
                                                        </div>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>


                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>', 2, 1)
GO
INSERT [dbo].[Topics] ([Name], [Description], [CourseId], [TopicId]) VALUES (N'Strings', N'<div class="v-verticallayout v-layout v-vertical v-widget v-has-width v-has-height v-margin-top v-margin-right v-margin-bottom v-margin-left" style="width: 100%; height: 100%;"><div class="v-expand" style="padding-top: 0px;"><div class="v-slot" style="height: 100%; margin-top: 0px;"><div class="v-label v-widget v-has-width v-has-height" style="width: 100%; height: 100%;"><!--?xml version="1.0" encoding="UTF-8" standalone="no"?-->


<style>  .codeContent{overflow:visible!important;} .panelHeader{padding:10px;border-bottom:1px solid #ddd;	background-color:#f7f7f7;border-bottom-color: #3c78b5;border-style: solid;border-color: LightGray;} .panelContent{padding:10px;font-family: Consolas, Menlo, Monaco, Lucida Console, Liberation Mono, DejaVu Sans Mono, Bitstream Vera Sans Mono, Courier New, monospace, serif;background-color: white;border-style: solid;border-color: LightGray;} .confluenceTd{border:1px solid #ddd;padding:7px 10px;vertical-align:top;text-align:left;min-width:8px} </style>


<p style="text-align: justify;">A Java&nbsp;<code>String</code>&nbsp;contains an immutable sequence of Unicode characters. Unlike C/C++, where string is simply an array of&nbsp;<code>char</code>, A Java&nbsp;<code>String</code>&nbsp;is an object of the class&nbsp;<code>java.lang</code>.</p>
<p style="text-align: justify;">Java&nbsp;<code>String</code>&nbsp;is, however, special. Unlike an ordinary class:</p>
<ul style="text-align: justify;margin-left: 1.8em;">
<li>
<code>String</code>&nbsp;is associated with string literal in the form of double-quoted texts such as "Hello, world!". You can assign a string literal directly into a&nbsp;<code>String</code>&nbsp;variable, instead of calling the constructor to create a&nbsp;<code>String</code>&nbsp;instance.</li>
<li>The&nbsp;<code>''+''</code>&nbsp;operator is overloaded to concatenate two&nbsp;<code>String</code>&nbsp;operands.&nbsp;<code>''+''</code>&nbsp;does not work on any other objects such as&nbsp;<code>Point</code>&nbsp;and&nbsp;<code>Circle</code>.</li>
<li>
<code>String</code>&nbsp;is&nbsp;<em>immutable</em>. That is, its content cannot be modified once it is created. For example, the method&nbsp;<code>toUpperCase()</code>&nbsp;constructs and returns a new&nbsp;<code>String</code>&nbsp;instead of modifying the its existing content.</li>
</ul>
<h2 id="Strings-JavastringvsPythonstring">Java string vs Python string</h2>
<p>In the following example, we initialize an integer to zero, then convert it to a string, then check to see if it is empty. Note the data declaration (highlighted), which is necessary in Java but not in Python. Notice also how verbose Java is, even in an operation as basic as comparing two strings for equality.</p>
<div class="table-wrap">
<table class="confluenceTable">
<tbody>
<tr>
<td class="confluenceTd" colspan="1" rowspan="1">
<div class="code panel pdl conf-macro output-block" data-hasbody="true" data-macro-name="code" style="border-width: 1px;">
<div class="codeHeader panelHeader pdl" style="border-bottom-width: 1px;">
<b>Strings in Java</b>
</div>
<div class="codeContent panelContent pdl">
<pre class="syntaxhighlighter-pre" data-syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" data-theme="Confluence">int    myCounter = 0;
String myString = String.valueOf(myCounter);
if (myString.equals("0")) ...</pre>
</div>
</div>
</td>
<td class="confluenceTd" colspan="1" rowspan="1">
<div class="code panel pdl conf-macro output-block" data-hasbody="true" data-macro-name="code" style="border-width: 1px;">
<div class="codeHeader panelHeader pdl" style="border-bottom-width: 1px;">
<b>Strings in Python</b>
</div>
<div class="codeContent panelContent pdl">
<pre class="syntaxhighlighter-pre" data-syntaxhighlighter-params="brush: py; gutter: false; theme: Confluence" data-theme="Confluence">myCounter = 0
myString = str(myCounter)
if myString == "0": ...</pre>
</div>
</div>
</td>
</tr>
<tr>
<td class="confluenceTd" colspan="1" rowspan="1">
<div class="code panel pdl conf-macro output-block" data-hasbody="true" data-macro-name="code" style="border-width: 1px;">
<div class="codeHeader panelHeader pdl" style="border-bottom-width: 1px;">
<b>Strings in Java</b>
</div>
<div class="codeContent panelContent pdl">
<pre class="syntaxhighlighter-pre" data-syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" data-theme="Confluence">// print the integers from 1 to 9
for (int i = 1; i &lt; 10; i++){
   System.out.println(i);
}</pre>
</div>
</div>
</td>
<td class="confluenceTd" colspan="1" rowspan="1">
<div class="code panel pdl conf-macro output-block" data-hasbody="true" data-macro-name="code" style="border-width: 1px;">
<div class="codeHeader panelHeader pdl" style="border-bottom-width: 1px;">
<b>Strings in Python</b>
</div>
<div class="codeContent panelContent pdl">
<pre class="syntaxhighlighter-pre" data-syntaxhighlighter-params="brush: py; gutter: false; theme: Confluence" data-theme="Confluence"># print the integers from 1 to 9
for i in range(1,10):
    print i</pre>
</div>
</div>
</td>
</tr>
</tbody>
</table>
</div>


</div></div></div></div>', 2, 2)
GO
INSERT [dbo].[Topics] ([Name], [Description], [CourseId], [TopicId]) VALUES (N'Boolean Expressions', N'<div class="v-verticallayout v-layout v-vertical v-widget v-has-width v-has-height v-margin-top v-margin-right v-margin-bottom v-margin-left" style="width: 100%; height: 100%;"><div class="v-expand" style="padding-top: 0px;"><div class="v-slot" style="height: 100%; margin-top: 0px;"><div class="v-label v-widget v-has-width v-has-height" style="width: 100%; height: 100%;"><!--?xml version="1.0" encoding="UTF-8" standalone="no"?-->


<style>  .codeContent{overflow:visible!important;} .panelHeader{padding:10px;border-bottom:1px solid #ddd;	background-color:#f7f7f7;border-bottom-color: #3c78b5;border-style: solid;border-color: LightGray;} .panelContent{padding:10px;font-family: Consolas, Menlo, Monaco, Lucida Console, Liberation Mono, DejaVu Sans Mono, Bitstream Vera Sans Mono, Courier New, monospace, serif;background-color: white;border-style: solid;border-color: LightGray;} .confluenceTd{border:1px solid #ddd;padding:7px 10px;vertical-align:top;text-align:left;min-width:8px} </style>


<p>Both languages have a type representing the logic values, <em>true</em> and <em>false</em>. Java calls the type <strong>boolean</strong> and uses the names (literals) <strong>true</strong> and <strong>false</strong>,<strong>&nbsp;</strong>whereas Python calls it <strong>Boolean</strong> and uses <strong>True</strong> and <strong>False</strong>. Note that in Python, the values 0 and "" will also be interpreted as <em>false</em> in a condition and all other values will be <em>true</em>, including <strong>True</strong>, of course.</p>
<p>
<span style="color: rgb(0,0,0);">Python''s Boolean operators,&nbsp;</span>
<strong>and</strong>
<span style="color: rgb(0,0,0);">,&nbsp;</span>
<strong>or</strong>
<span style="color: rgb(0,0,0);">, and&nbsp;</span>
<strong>not</strong>
<span style="color: rgb(0,0,0);">&nbsp;have corresponding Java operators </span>
<strong>
<em style="color: rgb(0,0,0);">&amp;&amp;</em>
</strong>
<span style="color: rgb(0,0,0);">,</span>
<span style="color: rgb(0,0,0);">
<em>&nbsp;<strong>||</strong>
</em>&nbsp;and</span>
<em style="color: rgb(0,0,0);">&nbsp;<strong>!</strong>
</em>
<span style="color: rgb(0,0,0);">.</span>
</p>
<div class="table-wrap">
<table class="confluenceTable">
<tbody>
<tr>
<td class="confluenceTd" colspan="1" rowspan="1">
<div class="code panel pdl conf-macro output-block" data-hasbody="true" data-macro-name="code" style="border-width: 1px;">
<div class="codeHeader panelHeader pdl" style="border-bottom-width: 1px;">
<b>Logical Operators in Java</b>
</div>
<div class="codeContent panelContent pdl">
<pre class="syntaxhighlighter-pre" data-syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" data-theme="Confluence">boolean x = true;
boolean y = false;

// Output: x and y is false
System.out.println("x and y is " + (x &amp;&amp; y));

// Output: x or y is true
System.out.println("x or y is " + (x || y));

// Output: not x is false
System.out.println("not x is " + !x);</pre>
</div>
</div>
</td>
<td class="confluenceTd" colspan="1" rowspan="1">
<div class="code panel pdl conf-macro output-block" data-hasbody="true" data-macro-name="code" style="border-width: 1px;">
<div class="codeHeader panelHeader pdl" style="border-bottom-width: 1px;">
<b>Logical Operators in Python</b>
</div>
<div class="codeContent panelContent pdl">
<pre class="syntaxhighlighter-pre" data-syntaxhighlighter-params="brush: py; gutter: false; theme: Confluence" data-theme="Confluence">x = True
y = False

# Output: x and y is False
print(''x and y is'',x and y)

# Output: x or y is True
print(''x or y is'',x or y)

# Output: not x is False
print(''not x is'',not x)</pre>
</div>
</div>
</td>
</tr>
</tbody>
</table>
</div>
<p>
<span style="color: rgb(0,0,0);">Negation is also formed differently between those two programming languages.</span>
</p>
<div class="table-wrap">
<table class="confluenceTable">
<tbody>
<tr>
<td class="confluenceTd" colspan="1" rowspan="1">
<div class="code panel pdl conf-macro output-block" data-hasbody="true" data-macro-name="code" style="border-width: 1px;">
<div class="codeHeader panelHeader pdl" style="border-bottom-width: 1px;">
<b>Operators in Java</b>
</div>
<div class="codeContent panelContent pdl">
<pre class="syntaxhighlighter-pre" data-syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" data-theme="Confluence">&nbsp;! (x &gt; 0 &amp;&amp; y &gt; 0) || z &gt; 0 ^ w &gt; 0</pre>
</div>
</div>
</td>
<td class="confluenceTd" colspan="1" rowspan="1">
<div class="code panel pdl conf-macro output-block" data-hasbody="true" data-macro-name="code" style="border-width: 1px;">
<div class="codeHeader panelHeader pdl" style="border-bottom-width: 1px;">
<b>Operators in Python</b>
</div>
<div class="codeContent panelContent pdl">
<pre class="syntaxhighlighter-pre" data-syntaxhighlighter-params="brush: py; gutter: false; theme: Confluence" data-theme="Confluence">not(x &gt; 0 and y &gt; 0) or z &gt; 0</pre>
</div>
</div>
</td>
</tr>
</tbody>
</table>
</div>
<p>
<span style="color: rgb(0,0,0);">In Java, most of the comparison operators, <strong>&gt;</strong>, <strong>&lt;</strong>, <strong>&gt;=</strong>, and <strong>&lt;=</strong>, can be applied only to numerical types, while in Python, the comparison operators can be applied to numbers, strings, and other types of objects, and compare values in some appropriate way (e.g. numeric order, lexical order) where possible. The equality operators,&nbsp;<strong>==</strong> and <strong>!=</strong>, can be applied to any object, but when applied to reference types they test for same (different) object rather than same (different) value.</span>
</p>
<div class="table-wrap">
<table class="confluenceTable">
<tbody>
<tr>
<td class="confluenceTd" colspan="1" rowspan="1">
<div class="code panel pdl conf-macro output-block" data-hasbody="true" data-macro-name="code" style="border-width: 1px;">
<div class="codeHeader panelHeader pdl" style="border-bottom-width: 1px;">
<b>Negation in Java</b>
</div>
<div class="codeContent panelContent pdl">
<pre class="syntaxhighlighter-pre" data-syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" data-theme="Confluence">int x = 10;
int y = 12;

// Output: x &gt; y is false
System.out.println("x &gt; y  is " + (x&gt;y));

// Output: x &lt; y is true
System.out.println("x &lt; y  is " + (x&lt;y));

// Output: x == y is false
System.out.println("x == y is " + (x==y));

// Output: x != y is true
System.out.println("x != y is " + (x!=y));

// Output: x &gt;= y is false
System.out.println("x &gt;= y is " + (x&gt;=y));

// Output: x &lt;= y is true
System.out.println("x &lt;= y is " + (x&lt;=y));</pre>
</div>
</div>
</td>
<td class="confluenceTd" colspan="1" rowspan="1">
<div class="code panel pdl conf-macro output-block" data-hasbody="true" data-macro-name="code" style="border-width: 1px;">
<div class="codeHeader panelHeader pdl" style="border-bottom-width: 1px;">
<b>Comparison operators in Python</b>
</div>
<div class="codeContent panelContent pdl">
<pre class="syntaxhighlighter-pre" data-syntaxhighlighter-params="brush: py; gutter: false; theme: Confluence" data-theme="Confluence">x = 10
y = 12

# Output: x &gt; y is False
print(''x &gt; y  is'',x&gt;y)

# Output: x &lt; y is True
print(''x &lt; y  is'',x&lt;y)

# Output: x == y is False
print(''x == y is'',x==y)

# Output: x != y is True
print(''x != y is'',x!=y)

# Output: x &gt;= y is False
print(''x &gt;= y is'',x&gt;=y)

# Output: x &lt;= y is True
print(''x &lt;= y is'',x&lt;=y)</pre>
</div>
</div>
</td>
</tr>
</tbody>
</table>
</div>
<p>
<span style="color: rgb(0,0,0);">&nbsp;<span style="color: rgb(0,0,0);">The comparison operators for numbers are the same as in Python. For class types, instead of == in Python, you should use the equals method in Java.&nbsp;</span>
</span>
</p>
<p>
<span style="color: rgb(0,0,0);">
<br clear="none">
<br clear="none">
</span>
</p>


</div></div></div></div>', 2, 3)
GO
INSERT [dbo].[Topics] ([Name], [Description], [CourseId], [TopicId]) VALUES (N'If-Else', N'<div class="v-verticallayout v-layout v-vertical v-widget v-has-width v-has-height v-margin-top v-margin-right v-margin-bottom v-margin-left" style="width: 100%; height: 100%;"><div class="v-expand" style="padding-top: 0px;"><div class="v-slot" style="height: 100%; margin-top: 0px;"><div class="v-label v-widget v-has-width v-has-height" style="width: 100%; height: 100%;"><!--?xml version="1.0" encoding="UTF-8" standalone="no"?-->


<style>  .codeContent{overflow:visible!important;} .panelHeader{padding:10px;border-bottom:1px solid #ddd;	background-color:#f7f7f7;border-bottom-color: #3c78b5;border-style: solid;border-color: LightGray;} .panelContent{padding:10px;font-family: Consolas, Menlo, Monaco, Lucida Console, Liberation Mono, DejaVu Sans Mono, Bitstream Vera Sans Mono, Courier New, monospace, serif;background-color: white;border-style: solid;border-color: LightGray;} .confluenceTd{border:1px solid #ddd;padding:7px 10px;vertical-align:top;text-align:left;min-width:8px} </style>


<span class="conf-macro output-inline" data-hasbody="true" data-macro-name="excerpt">
<strong>if</strong>-kontrollstrukturen bruker en <em>betingelse</em> for å styre om en eller flere setninger blir utført.</span>
<p>Standardkontrollstrukturen er <em>sekvens</em>, som illustrert under:</p>
<div class="table-wrap">
<table class="confluenceTable">
<tbody>
<tr>
<td class="confluenceTd" colspan="1" rowspan="1">
<span class="confluence-embedded-file-wrapper conf-macro output-inline" data-hasbody="true" data-macro-name="plantuml" style="">

</span>
<p>
<em>
<em>
<em>Illustrasjon av koden med et <em>flytskjema</em>. Kontrollflyten går nedover fra boks til boks.</em> Først</em> skrives spørsmålet ut, <em>så</em> venter programmet på input (som bør være et tall) fra brukeren og <em>til slutt</em> skrives en ny melding ut.</em>
</p>
<p>&nbsp;</p>
</td>
<td class="confluenceTd" colspan="1" rowspan="1">
<p>&nbsp;</p>
<p>
<em>
<br clear="none">
</em>
</p>
<p>&nbsp;</p>
<div class="code panel pdl conf-macro output-block" data-hasbody="true" data-macro-name="code" style="border-width: 1px;">
<div class="codeHeader panelHeader pdl" style="border-bottom-width: 1px;">
<b>Python</b>
</div>
<div class="codeContent panelContent pdl">
<pre class="syntaxhighlighter-pre" data-syntaxhighlighter-params="brush: python; gutter: false; theme: Confluence" data-theme="Confluence">print(''Hvor gammel er du?'')
age = int(input())
print(''Neste år blir du '' + str(age + 1) + '' år!'')</pre>
</div>
</div>
<div class="code panel pdl conf-macro output-block" data-hasbody="true" data-macro-name="code" style="border-width: 1px;">
<div class="codeHeader panelHeader pdl" style="border-bottom-width: 1px;">
<b>Java</b>
</div>
<div class="codeContent panelContent pdl">
<pre class="syntaxhighlighter-pre" data-syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" data-theme="Confluence">Scanner scanner = new Scanner(System.in);
System.out.println("Hvor gammel er du?");
int age = scanner.nextInt();
System.out.println("Neste år blir du " + (age + 1) + " år!");</pre>
</div>
</div>
<p>
<em>
<br clear="none">
</em>
</p>
<p>&nbsp;</p>
</td>
</tr>
</tbody>
</table>
</div>
<p>En kommer imidlertid fort bort i situasjoner hvor kode bare skal utføres i bestemte tilfelle. F.eks. vil koden over kræsje hvis input-en ikke er et gyldig tall. Derfor kan det vært lurt å sjekke gyldigheten og utføre ulike setninger avhengig av om input-en er et tall eller ikke:</p>
<div class="table-wrap">
<table class="confluenceTable">
<tbody>
<tr>
<td class="confluenceTd" colspan="1" rowspan="1">
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<span class="confluence-embedded-file-wrapper conf-macro output-inline" data-hasbody="true" data-macro-name="plantuml" style="">

</span>
<p>Kontrollflyten har en forgreining, hvor verdien av betingelsen (<strong>true</strong> eller <strong>false</strong>) avgjør hvilken grein som tas.</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
</td>
<td class="confluenceTd" colspan="1" rowspan="1">
<div class="code panel pdl conf-macro output-block" data-hasbody="true" data-macro-name="code" style="border-width: 1px;">
<div class="codeHeader panelHeader pdl" style="border-bottom-width: 1px;">
<b>Python</b>
</div>
<div class="codeContent panelContent pdl">
<pre class="syntaxhighlighter-pre" data-syntaxhighlighter-params="brush: python; gutter: false; theme: Confluence" data-theme="Confluence">print(''Hvor gammel er du?'')
ageString = input()
if (ageString.isdigit()):
    print(''Neste år blir du '' + str(int(ageString) + 1) + '' år!'')
else:
    print(ageString + '' er ikke et tall!'')</pre>
</div>
</div>
<div class="code panel pdl conf-macro output-block" data-hasbody="true" data-macro-name="code" style="border-width: 1px;">
<div class="codeHeader panelHeader pdl" style="border-bottom-width: 1px;">
<b>Java</b>
</div>
<div class="codeContent panelContent pdl">
<pre class="syntaxhighlighter-pre" data-syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" data-theme="Confluence">Scanner scanner = new Scanner(System.in);
System.out.println("Hvor gammel er du?");
String ageString = scanner.nextLine();
if (ageString.matches("[0-9]+")) {
	int age = Integer.valueOf(ageString);
	System.out.println("Neste år blir du " + (age + 1) + " år!");
}
else
	System.out.println(ageString + " er ikke et tall!");</pre>
</div>
</div>
<p>Her brukes <strong>if</strong>-nøkkelordet for å angi at print-setningen kun skal utføres hvis <em>betingelsen</em> er sann. I Python brukes <em>innrykk</em> for å knytte setninger til true/sann- og false/usann-greinene. I Java tillates bare én setning eller gruppe med setninger i hver grein, og derfor må en gruppere setninger med { og }.</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
</td>
</tr>
</tbody>
</table>
</div>
<p>
<strong>if</strong>-en angir en kontrollstruktur som kalles <em>betinget</em> utførelse.&nbsp;Betingelsen kan være hvilket som helst&nbsp;<a href="https://www.ntnu.no/wiki/display/tdt4100/Uttrykk" shape="rect">uttrykk</a> som gir en logisk verdi, altså <strong>true/sant</strong>&nbsp;eller <strong>false/usant</strong>. Det finnes flere varianter av <strong>if</strong>-kontrollstrukturen. I eksemplet over skal det gjøres forskjellige ting avhengig av om betingelsen er <strong>true/sann</strong> eller <strong>false/usann</strong>, slik at det blir to greiner, mens det noen ganger bare er behov for én grein. Da utelater en bare <strong>else</strong>-delen.</p>
<p>
<span>Noen ganger ønsker man å velge mellom flere enn to greiner. Dette kan gjøres ved å ha en ny <strong>if</strong> inni <strong>else</strong>-delen. </span>
<span>Man tar altså først et valg mellom to greiner og i den andre greina gjør en et nytt valg. Eksemplet under, hvor en karakter (grade) settes basert på en poengsum (score), illustrerer dette:</span>
</p>
<div class="table-wrap">
<table class="confluenceTable">
<tbody>
<tr>

<td class="confluenceTd" colspan="1" rowspan="1">
<div class="code panel pdl conf-macro output-block" data-hasbody="true" data-macro-name="code" style="border-width: 1px;">
<div class="codeHeader panelHeader pdl" style="border-bottom-width: 1px;">
<b>Python</b>
</div>
<div class="codeContent panelContent pdl">
<pre class="syntaxhighlighter-pre" data-syntaxhighlighter-params="brush: python; gutter: false; theme: Confluence" data-theme="Confluence">score = 67
grade = ''''
if score &gt;= 85:
    grade = ''A'';
else:
    if score &gt;= 75:
        grade = ''B'';
    else:
        if score &gt;= 60:
            grade = ''C'';
        else:
            if score &gt; 50:
                grade = ''D'';
            else:
                if score &gt; 40:
                    grade = ''E'';
                else:
                    grade = ''F'';
print(grade)</pre>
</div>
</div>
<div class="code panel pdl conf-macro output-block" data-hasbody="true" data-macro-name="code" style="border-width: 1px;">
<div class="codeHeader panelHeader pdl" style="border-bottom-width: 1px;">
<b>Java</b>
</div>
<div class="codeContent panelContent pdl">
<pre class="syntaxhighlighter-pre" data-syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" data-theme="Confluence">int score = 67;
char grade;
if (score &gt;= 85)
    grade = ''A'';
else {
	if (score &gt;= 75)
    	grade = ''B'';
	else {
		if (score &gt;= 60)
    		grade = ''C'';
		else {
			if (score &gt; 50)
    			grade = ''D'';
			else {
				if (score &gt; 40)
    				grade = ''E'';
				else
    				grade = ''F'';
			}
		}
	}
}
System.out.println(grade);</pre>
</div>
</div>
</td>
</tr>
</tbody>
</table>
</div>
<p>Slike nøstede if-else-setninger blir fort forvirrende. En bedre løsning er da å bruke&nbsp;<em>else-if</em>
<em>-</em>strukturen. Her kan man oppgi flere betingelser i hver sin <strong>else-if</strong>-grein, og den første som gir <strong>true/sann</strong> vil bli fulgt. I diagrammet nedenfor kan man tenke seg at man går fra venstre mot høyre, og følger den første pilen som passer.</p>
<div class="table-wrap">
<table class="confluenceTable">
<tbody>
<tr>

<td class="confluenceTd" colspan="1" rowspan="1">
<div class="code panel pdl conf-macro output-block" data-hasbody="true" data-macro-name="code" style="border-width: 1px;">
<div class="codeHeader panelHeader pdl" style="border-bottom-width: 1px;">
<b>Python</b>
</div>
<div class="codeContent panelContent pdl">
<pre class="syntaxhighlighter-pre" data-syntaxhighlighter-params="brush: python; gutter: false; theme: Confluence" data-theme="Confluence">score = 67
grade = ''''
if score &gt;= 85:
    grade = ''A''
elif score &gt;= 75:
    grade = ''B''
elif score &gt;= 60:
    grade = ''C''
elif score &gt; 50:
    grade = ''D''
elif score &gt; 40:
    grade = ''E''
else:
    grade = ''F''
print(grade)</pre>
</div>
</div>
<div class="code panel pdl conf-macro output-block" data-hasbody="true" data-macro-name="code" style="border-width: 1px;">
<div class="codeHeader panelHeader pdl" style="border-bottom-width: 1px;">
<b>Java</b>
</div>
<div class="codeContent panelContent pdl">
<pre class="syntaxhighlighter-pre" data-syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" data-theme="Confluence">int score = 67;
char grade;
if (score &gt;= 85)
    grade = ''A'';
else if (score &gt;= 75)
    grade = ''B'';
else if (score &gt;= 60)
    grade = ''C'';
else if (score &gt; 50)
    grade = ''D'';
else if (score &gt; 40)
    grade = ''E'';
else
    grade = ''F'';
System.out.println(grade);</pre>
</div>
</div>
</td>
</tr>
</tbody>
</table>
</div>
<h2 id="If-Else-Grupperingavsetninger">
<span>Gruppering av setninger<br clear="none">
</span>
</h2>
<p>
<span>En kan godt ha flere setninger i <strong>then</strong>- og/eller <strong>else</strong>-delen, og de fleste programmeringsspråk har en måte å gruppere setninger på. I Java grupperes setninger ved at en har&nbsp;<strong>{</strong> og&nbsp;<strong>}</strong> rundt, mens en i python bruker innrykket for å angi hvilke setninger som hører til de ulike greinene.</span>
</p>
<p>&nbsp;</p>


</div></div></div></div>', 2, 4)
GO
INSERT [dbo].[Topics] ([Name], [Description], [CourseId], [TopicId]) VALUES (N'While Loops', N'<div class="v-verticallayout v-layout v-vertical v-widget v-has-width v-has-height v-margin-top v-margin-right v-margin-bottom v-margin-left" style="width: 100%; height: 100%;"><div class="v-expand" style="padding-top: 0px;"><div class="v-slot" style="height: 100%; margin-top: 0px;"><div class="v-label v-widget v-has-width v-has-height" style="width: 100%; height: 100%;"><!--?xml version="1.0" encoding="UTF-8" standalone="no"?-->


<style>  .codeContent{overflow:visible!important;} .panelHeader{padding:10px;border-bottom:1px solid #ddd;	background-color:#f7f7f7;border-bottom-color: #3c78b5;border-style: solid;border-color: LightGray;} .panelContent{padding:10px;font-family: Consolas, Menlo, Monaco, Lucida Console, Liberation Mono, DejaVu Sans Mono, Bitstream Vera Sans Mono, Courier New, monospace, serif;background-color: white;border-style: solid;border-color: LightGray;} .confluenceTd{border:1px solid #ddd;padding:7px 10px;vertical-align:top;text-align:left;min-width:8px} </style>


<p>Løkker er kode som utføres flere ganger. Det er vanlig å skille mellom&nbsp;<em>while</em>-løkker og&nbsp;<em>for-</em>løkker.</p>
<h3 id="WhileLoops-while-løkke">while-løkke</h3>
<p>En&nbsp;<em>while</em>-løkke sjekker en betingelse, og gjennomfører koden inni løkka så lenge denne betingelsen er sann. Man må være forsiktig når man skriver&nbsp;<em>while-</em>løkker; dersom ikke betingelsen er formulert riktig kan man ende opp med det som kalles en "uendelig løkke". Hvis man vil stille spørsmålet om alder helt til man får et ordentlig svar, så vil det se slik slik ut:</p>
<div class="table-wrap">
<table class="confluenceTable">
<tbody>
<tr>

<td class="confluenceTd" colspan="1" rowspan="1">
<div class="code panel pdl conf-macro output-block" data-hasbody="true" data-macro-name="code" style="border-width: 1px;">
<div class="codeHeader panelHeader pdl" style="border-bottom-width: 1px;">
<b>Python</b>
</div>
<div class="codeContent panelContent pdl">
<pre class="syntaxhighlighter-pre" data-syntaxhighlighter-params="brush: python; gutter: false; theme: Confluence" data-theme="Confluence"># pop/while.py
print(''Hvor gammel er du?'')
ageString = input()
while (! ageString.isdigit()):
	print(ageString + '' er ikke et tall, skriv det inn på nytt!'')
	ageString = input()
print(''Neste år blir du '' + str(int(ageString) + 1) + '' år!'')   </pre>
</div>
</div>
<div class="code panel pdl conf-macro output-block" data-hasbody="true" data-macro-name="code" style="border-width: 1px;">
<div class="codeHeader panelHeader pdl" style="border-bottom-width: 1px;">
<b>Java</b>
</div>
<div class="codeContent panelContent pdl">
<pre class="syntaxhighlighter-pre" data-syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" data-theme="Confluence">// pop/while.jpage
java.util.Scanner scanner = new java.util.Scanner(System.in);
System.out.println("Hvor gammel er du?");
String ageString = scanner.nextLine();
while (! ageString.matches("[0-9]+")) {
	System.out.println(ageString + " er ikke et tall!");
	ageString = scanner.nextLine();
}
int age = Integer.valueOf(ageString);
System.out.println("Neste år blir du " + (age + 1) + " år!");
</pre>
</div>
</div>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
</td>
</tr>
</tbody>
</table>
</div>
<p>Det finnes varianter hvor man ikke tester løkke-betingelsen på forhånd, men etterpå, og hvor betingelsen snus på. Noen språk har også muligheten til å hoppe ut av løkka fra innsiden.</p>
<p>
<span>Les mer om dette her: while-kontrollstrukturen<br clear="none">
</span>
</p>
<h3 id="WhileLoops-Unntakshåndtering">
<span>Unntakshåndtering</span>
</h3>
<p>Unntak er hendelser i et program som <strong>helst ikke&nbsp;</strong>skal skje. Dersom man har en liste med 4 elementer, &nbsp;og man spør om hva som er det 5. elementet vil det i de fleste programmeringsspråk oppstå et unntak. Det er god programmering å skrive kode slik at man i høyest mulig grad unngår unntak. I eksempelet over betyr det å sjekke om listen inneholder 5 elementer&nbsp;<strong>før&nbsp;</strong>man spør etter det 5. elementet.</p>
<p>Det finnes også mekanismer som&nbsp;<strong>fanger opp</strong> unntak og behandler disse. Dette kan ses på som en spesiell betingelse:&nbsp;<strong>hvis&nbsp;</strong>et unntak oppstår,&nbsp;<strong>så&nbsp;</strong>kjør denne koden. Unntak kan også nøstes, slik at man har en blokk tilhørende ethvert unntak som kan oppstå.&nbsp;</p>


</div></div></div></div>', 2, 5)
GO
INSERT [dbo].[Topics] ([Name], [Description], [CourseId], [TopicId]) VALUES (N'For Loops', N'<div class="v-verticallayout v-layout v-vertical v-widget v-has-width v-has-height v-margin-top v-margin-right v-margin-bottom v-margin-left" style="width: 100%; height: 100%;"><div class="v-expand" style="padding-top: 0px;"><div class="v-slot" style="height: 100%; margin-top: 0px;"><div class="v-label v-widget v-has-width v-has-height" style="width: 100%; height: 100%;"><!--?xml version="1.0" encoding="UTF-8" standalone="no"?-->


<style>  .codeContent{overflow:visible!important;} .panelHeader{padding:10px;border-bottom:1px solid #ddd;	background-color:#f7f7f7;border-bottom-color: #3c78b5;border-style: solid;border-color: LightGray;} .panelContent{padding:10px;font-family: Consolas, Menlo, Monaco, Lucida Console, Liberation Mono, DejaVu Sans Mono, Bitstream Vera Sans Mono, Courier New, monospace, serif;background-color: white;border-style: solid;border-color: LightGray;} .confluenceTd{border:1px solid #ddd;padding:7px 10px;vertical-align:top;text-align:left;min-width:8px} </style>

Data-drevne løkker er løkker som er drevet av data i en samling, typisk fordi man ønsker å gjøre noe med hvert data-element.<p>Merk at Java har to typer løkker, generelle <strong>for</strong>-løkker og det som kalles <em>for-each</em>-løkker, fordi den går gjennom hvert element i en samling. Begge varianter bruker <strong>for</strong>-nøkkelordet, og for-each-varianten er såkalt <em>syntaktisk sukker</em> (eng: syntactic sugar), siden den kun er en kortform for noe en kan få til den generelle-for-løkka.</p>
<h3 id="ForLoops-Generellfor-løkke">Generell for-løkke</h3>
<p>Hvis en datastruktur ikke har en passende iterator, men f.eks. støtter oppslag med en posisjon eller indeks, så kan en falle tilbake på den generelle for-løkka. Dette brukes f.eks. for å løpe gjennom alle tegnene i en String, slik som vist under til venstre. Du må også bruke den generelle varianten, hvis du skal gå gjennom elementene i en annen rekkefølge enn standard-iteratoren for en datastruktur, f.eks. baklengs eller annenhvert element. Under i midten og til høyre ser du løkker for disse to tilfellene for en Java-liste.</p>
<p>&nbsp;</p>
<div class="table-wrap">
<table class="confluenceTable">
<tbody>
<tr>
<td class="confluenceTd" colspan="1" rowspan="1">
<div class="code panel pdl conf-macro output-block" data-hasbody="true" data-macro-name="code" style="border-width: 1px;">
<div class="codeContent panelContent pdl">
<pre class="syntaxhighlighter-pre" data-syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" data-theme="Confluence">String string = "123";
for (int i = 0; i &lt; string.length(); i++) {
	char c = string.charAt(i);
	// gjør noe med c her...
}</pre>
</div>
</div>
<p>Løkke for å gå gjennom tegnene i en String</p>
</td>
<td class="confluenceTd" colspan="1" rowspan="1">
<div class="code panel pdl conf-macro output-block" data-hasbody="true" data-macro-name="code" style="border-width: 1px;">
<div class="codeContent panelContent pdl">
<pre class="syntaxhighlighter-pre" data-syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" data-theme="Confluence">List&lt;String&gt; strings = Arrays.asList("en", "to", "tre");
for (int i = strings.size() - 1; i &gt;= 0; i--) {
	String element = strings.get(i);
	// gjør noe med element her...
}</pre>
</div>
</div>
<p>Løkke for å gå gjennom elementene i en List baklengs.</p>
</td>
<td class="confluenceTd" colspan="1" rowspan="1">
<div class="code panel pdl conf-macro output-block" data-hasbody="true" data-macro-name="code" style="border-width: 1px;">
<div class="codeContent panelContent pdl">
<pre class="syntaxhighlighter-pre" data-syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" data-theme="Confluence">List&lt;String&gt; strings = Arrays.asList("en", "to", "tre");
for (int i = 0; i &lt; strings.size(); i = i + 2) {
	String element = strings.get(i);
	// gjør noe med element her...
}</pre>
</div>
</div>
<p>Løkke for å gå gjennom annenhvert element i en List.</p>
</td>
</tr>
</tbody>
</table>
</div>
<h3 id="ForLoops-For-each-løkker">For-each-løkker</h3>
<p>I en del løkker er poenget å behandle et sett med data, så betingelsen koker ned til om det er mere data igjen. Istedenfor å gjøre det manuelt med en teller som øker og sjekkes mot antall data-elementer, så har en del språk en egen kontrollstruktur som gjerne kalles <strong>for-each</strong>, for å gå gjennom alle data-elementer i en samling. En slik for-each-løkke holder både styr på om det er flere data-elementer igjen og sørger for å sette en løkke-variabel til neste element i rekka:</p>
<div class="table-wrap">
<table class="confluenceTable">
<tbody>
<tr>
<td class="confluenceTd" colspan="1" rowspan="1">
<p>Gjør noe for hvert element i en liste</p>
<span class="confluence-embedded-file-wrapper conf-macro output-inline" data-hasbody="true" data-macro-name="plantuml" style="">
<img class="confluence-embedded-image" src="https://www.ntnu.no/wiki/download/temp/plantuml9092790240636381327.png?contentType=image/png" style="">
</span>
</td>
<td class="confluenceTd" colspan="1" rowspan="1">
<div class="code panel pdl conf-macro output-block" data-hasbody="true" data-macro-name="code" style="border-width: 1px;">
<div class="codeHeader panelHeader pdl" style="border-bottom-width: 1px;">
<b>Python</b>
</div>
<div class="codeContent panelContent pdl">
<pre class="syntaxhighlighter-pre" data-syntaxhighlighter-params="brush: python; gutter: false; theme: Confluence" data-theme="Confluence">names = [''Chris'', ''Pat'', ''Sam'']
for name in names:
    print ''Hei '' + name</pre>
</div>
</div>
<div class="code panel pdl conf-macro output-block" data-hasbody="true" data-macro-name="code" style="border-width: 1px;">
<div class="codeHeader panelHeader pdl" style="border-bottom-width: 1px;">
<b>Java</b>
</div>
<div class="codeContent panelContent pdl">
<pre class="syntaxhighlighter-pre" data-syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" data-theme="Confluence">String[] names = {"Chris", "Pat", "Sam"};
for (String name : names) {
	System.out.println("Hei " + name);
}
</pre>
</div>
</div>
</td>
</tr>
</tbody>
</table>
</div>
<p>Denne løkkevarianten er som regel avhengig av at dataene ligger i en datastruktur som har støtte for det som kalles en <em>iterator</em>. En iterator er et objekt som hjelper til med iterasjon, typisk ved at den nettopp holder rede på hvor langt en er kommet i gjennomløpningen av elementer. Så hvis en ny type datastruktur ønsker å støtte for-each løkker, så må en implementere en passende iterator.</p>
<p>I Java er <strong>Iterator</strong> et standard <em>grensesnitt</em> med to metoder:</p>
<ul>
<li>
<strong>boolean hasNext()</strong>: Denne metoden brukes for å spørre om det er flere elementer, uten at en faktisk går fremover.</li>
<li>
<strong>Object next()</strong>: Denne metoden returnerer neste element i rekka, og sørger for å gå ett hakk fremover, slik at den neste gang returnerer neste element etter der igjen. <strong>next()</strong>-metoden er kun garantert å returnere noe dersom <strong>hasNext()</strong> har returnert <strong>true</strong>, så en bør alltid sjekke det først.</li>
</ul>
<p>To løkker med iterator er vist under:</p>
<div class="table-wrap">
<table class="confluenceTable">
<tbody>
<tr>
<td class="confluenceTd" colspan="1" rowspan="1">
<div class="code panel pdl conf-macro output-block" data-hasbody="true" data-macro-name="code" style="border-width: 1px;">
<div class="codeContent panelContent pdl">
<pre class="syntaxhighlighter-pre" data-syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" data-theme="Confluence">Iterator it = ...
while (it.hasNext()) {
	Object element = it.next();
	// gjør noe med element her...
}</pre>
</div>
</div>
<p>Generell iterator-løkke.</p>
</td>
<td class="confluenceTd" colspan="1" rowspan="1">
<div class="code panel pdl conf-macro output-block" data-hasbody="true" data-macro-name="code" style="border-width: 1px;">
<div class="codeContent panelContent pdl">
<pre class="syntaxhighlighter-pre" data-syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" data-theme="Confluence">Collection&lt;String&gt; strings = Arrays.asList("en", "to", "tre");
Iterator&lt;String&gt; it = strings.iterator();
while (it.hasNext()) {
	String element = it.next();
	// gjør noe med element her...
}</pre>
</div>
</div>
<p>Iterator støtter <em>generics</em>, og da vil next returnere et element med en mer spesifikk type enn Object, f.eks. String som her.</p>
</td>
</tr>
</tbody>
</table>
</div>
<p>Python sin tilsvarende iterator-klasse har kun én metode og bruker unntak når en når slutten på rekka av elementer:</p>
<ul>
<li>
<strong>next()</strong>: returnerer neste elementer, tar ett steg forover og utløser <strong>StopIteration</strong>-unntaket når slutten er nådd.</li>
</ul>
<h3 id="ForLoops-Brukavfor-eachpåegnedatastrukturer">Bruk av for-each på egne datastrukturer</h3>
<p>I Java brukes <strong>Iterable</strong>-grensesnittet som brobygger til for-each-syntaksen.</p>
<p>&nbsp;</p>


</div></div></div></div>', 2, 6)
GO
INSERT [dbo].[Topics] ([Name], [Description], [CourseId], [TopicId]) VALUES (N'Objects and Classes', N'<div class="v-verticallayout v-layout v-vertical v-widget v-has-width v-has-height v-margin-top v-margin-right v-margin-bottom v-margin-left" style="width: 100%; height: 100%;"><div class="v-expand" style="padding-top: 0px;"><div class="v-slot" style="height: 100%; margin-top: 0px;"><div class="v-label v-widget v-has-width v-has-height" style="width: 100%; height: 100%;"><!--?xml version="1.0" encoding="UTF-8" standalone="no"?-->


<style>  .codeContent{overflow:visible!important;} .panelHeader{padding:10px;border-bottom:1px solid #ddd;	background-color:#f7f7f7;border-bottom-color: #3c78b5;border-style: solid;border-color: LightGray;} .panelContent{padding:10px;font-family: Consolas, Menlo, Monaco, Lucida Console, Liberation Mono, DejaVu Sans Mono, Bitstream Vera Sans Mono, Courier New, monospace, serif;background-color: white;border-style: solid;border-color: LightGray;} .confluenceTd{border:1px solid #ddd;padding:7px 10px;vertical-align:top;text-align:left;min-width:8px} </style>

Data-drevne løkker er løkker som er drevet av data i en samling, typisk fordi man ønsker å gjøre noe med hvert data-element.<p>Merk at Java har to typer løkker, generelle <strong>for</strong>-løkker og det som kalles <em>for-each</em>-løkker, fordi den går gjennom hvert element i en samling. Begge varianter bruker <strong>for</strong>-nøkkelordet, og for-each-varianten er såkalt <em>syntaktisk sukker</em> (eng: syntactic sugar), siden den kun er en kortform for noe en kan få til den generelle-for-løkka.</p>
<h3 id="ForLoops-Generellfor-løkke">Generell for-løkke</h3>
<p>Hvis en datastruktur ikke har en passende iterator, men f.eks. støtter oppslag med en posisjon eller indeks, så kan en falle tilbake på den generelle for-løkka. Dette brukes f.eks. for å løpe gjennom alle tegnene i en String, slik som vist under til venstre. Du må også bruke den generelle varianten, hvis du skal gå gjennom elementene i en annen rekkefølge enn standard-iteratoren for en datastruktur, f.eks. baklengs eller annenhvert element. Under i midten og til høyre ser du løkker for disse to tilfellene for en Java-liste.</p>
<p>&nbsp;</p>
<div class="table-wrap">
<table class="confluenceTable">
<tbody>
<tr>
<td class="confluenceTd" colspan="1" rowspan="1">
<div class="code panel pdl conf-macro output-block" data-hasbody="true" data-macro-name="code" style="border-width: 1px;">
<div class="codeContent panelContent pdl">
<pre class="syntaxhighlighter-pre" data-syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" data-theme="Confluence">String string = "123";
for (int i = 0; i &lt; string.length(); i++) {
	char c = string.charAt(i);
	// gjør noe med c her...
}</pre>
</div>
</div>
<p>Løkke for å gå gjennom tegnene i en String</p>
</td>
<td class="confluenceTd" colspan="1" rowspan="1">
<div class="code panel pdl conf-macro output-block" data-hasbody="true" data-macro-name="code" style="border-width: 1px;">
<div class="codeContent panelContent pdl">
<pre class="syntaxhighlighter-pre" data-syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" data-theme="Confluence">List&lt;String&gt; strings = Arrays.asList("en", "to", "tre");
for (int i = strings.size() - 1; i &gt;= 0; i--) {
	String element = strings.get(i);
	// gjør noe med element her...
}</pre>
</div>
</div>
<p>Løkke for å gå gjennom elementene i en List baklengs.</p>
</td>
<td class="confluenceTd" colspan="1" rowspan="1">
<div class="code panel pdl conf-macro output-block" data-hasbody="true" data-macro-name="code" style="border-width: 1px;">
<div class="codeContent panelContent pdl">
<pre class="syntaxhighlighter-pre" data-syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" data-theme="Confluence">List&lt;String&gt; strings = Arrays.asList("en", "to", "tre");
for (int i = 0; i &lt; strings.size(); i = i + 2) {
	String element = strings.get(i);
	// gjør noe med element her...
}</pre>
</div>
</div>
<p>Løkke for å gå gjennom annenhvert element i en List.</p>
</td>
</tr>
</tbody>
</table>
</div>
<h3 id="ForLoops-For-each-løkker">For-each-løkker</h3>
<p>I en del løkker er poenget å behandle et sett med data, så betingelsen koker ned til om det er mere data igjen. Istedenfor å gjøre det manuelt med en teller som øker og sjekkes mot antall data-elementer, så har en del språk en egen kontrollstruktur som gjerne kalles <strong>for-each</strong>, for å gå gjennom alle data-elementer i en samling. En slik for-each-løkke holder både styr på om det er flere data-elementer igjen og sørger for å sette en løkke-variabel til neste element i rekka:</p>
<div class="table-wrap">
<table class="confluenceTable">
<tbody>
<tr>
<td class="confluenceTd" colspan="1" rowspan="1">
<p>Gjør noe for hvert element i en liste</p>
<span class="confluence-embedded-file-wrapper conf-macro output-inline" data-hasbody="true" data-macro-name="plantuml" style="">

</span>
</td>
<td class="confluenceTd" colspan="1" rowspan="1">
<div class="code panel pdl conf-macro output-block" data-hasbody="true" data-macro-name="code" style="border-width: 1px;">
<div class="codeHeader panelHeader pdl" style="border-bottom-width: 1px;">
<b>Python</b>
</div>
<div class="codeContent panelContent pdl">
<pre class="syntaxhighlighter-pre" data-syntaxhighlighter-params="brush: python; gutter: false; theme: Confluence" data-theme="Confluence">names = [''Chris'', ''Pat'', ''Sam'']
for name in names:
    print ''Hei '' + name</pre>
</div>
</div>
<div class="code panel pdl conf-macro output-block" data-hasbody="true" data-macro-name="code" style="border-width: 1px;">
<div class="codeHeader panelHeader pdl" style="border-bottom-width: 1px;">
<b>Java</b>
</div>
<div class="codeContent panelContent pdl">
<pre class="syntaxhighlighter-pre" data-syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" data-theme="Confluence">String[] names = {"Chris", "Pat", "Sam"};
for (String name : names) {
	System.out.println("Hei " + name);
}
</pre>
</div>
</div>
</td>
</tr>
</tbody>
</table>
</div>
<p>Denne løkkevarianten er som regel avhengig av at dataene ligger i en datastruktur som har støtte for det som kalles en <em>iterator</em>. En iterator er et objekt som hjelper til med iterasjon, typisk ved at den nettopp holder rede på hvor langt en er kommet i gjennomløpningen av elementer. Så hvis en ny type datastruktur ønsker å støtte for-each løkker, så må en implementere en passende iterator.</p>
<p>I Java er <strong>Iterator</strong> et standard <em>grensesnitt</em> med to metoder:</p>
<ul>
<li>
<strong>boolean hasNext()</strong>: Denne metoden brukes for å spørre om det er flere elementer, uten at en faktisk går fremover.</li>
<li>
<strong>Object next()</strong>: Denne metoden returnerer neste element i rekka, og sørger for å gå ett hakk fremover, slik at den neste gang returnerer neste element etter der igjen. <strong>next()</strong>-metoden er kun garantert å returnere noe dersom <strong>hasNext()</strong> har returnert <strong>true</strong>, så en bør alltid sjekke det først.</li>
</ul>
<p>To løkker med iterator er vist under:</p>
<div class="table-wrap">
<table class="confluenceTable">
<tbody>
<tr>
<td class="confluenceTd" colspan="1" rowspan="1">
<div class="code panel pdl conf-macro output-block" data-hasbody="true" data-macro-name="code" style="border-width: 1px;">
<div class="codeContent panelContent pdl">
<pre class="syntaxhighlighter-pre" data-syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" data-theme="Confluence">Iterator it = ...
while (it.hasNext()) {
	Object element = it.next();
	// gjør noe med element her...
}</pre>
</div>
</div>
<p>Generell iterator-løkke.</p>
</td>
<td class="confluenceTd" colspan="1" rowspan="1">
<div class="code panel pdl conf-macro output-block" data-hasbody="true" data-macro-name="code" style="border-width: 1px;">
<div class="codeContent panelContent pdl">
<pre class="syntaxhighlighter-pre" data-syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" data-theme="Confluence">Collection&lt;String&gt; strings = Arrays.asList("en", "to", "tre");
Iterator&lt;String&gt; it = strings.iterator();
while (it.hasNext()) {
	String element = it.next();
	// gjør noe med element her...
}</pre>
</div>
</div>
<p>Iterator støtter <em>generics</em>, og da vil next returnere et element med en mer spesifikk type enn Object, f.eks. String som her.</p>
</td>
</tr>
</tbody>
</table>
</div>
<p>Python sin tilsvarende iterator-klasse har kun én metode og bruker unntak når en når slutten på rekka av elementer:</p>
<ul>
<li>
<strong>next()</strong>: returnerer neste elementer, tar ett steg forover og utløser <strong>StopIteration</strong>-unntaket når slutten er nådd.</li>
</ul>
<h3 id="ForLoops-Brukavfor-eachpåegnedatastrukturer">Bruk av for-each på egne datastrukturer</h3>
<p>I Java brukes <strong>Iterable</strong>-grensesnittet som brobygger til for-each-syntaksen.</p>
<p>&nbsp;</p>


</div></div></div></div>', 2, 7)
GO
INSERT [dbo].[Topics] ([Name], [Description], [CourseId], [TopicId]) VALUES (N'Nested Loops', N'<div class="v-verticallayout v-layout v-vertical v-widget v-has-width v-has-height v-margin-top v-margin-right v-margin-bottom v-margin-left" style="width: 100%; height: 100%;"><div class="v-expand" style="padding-top: 0px;"><div class="v-slot" style="height: 100%; margin-top: 0px;"><div class="v-label v-widget v-has-width v-has-height" style="width: 100%; height: 100%;"><!--?xml version="1.0" encoding="UTF-8" standalone="no"?-->


<style>  .codeContent{overflow:visible!important;} .panelHeader{padding:10px;border-bottom:1px solid #ddd;	background-color:#f7f7f7;border-bottom-color: #3c78b5;border-style: solid;border-color: LightGray;} .panelContent{padding:10px;font-family: Consolas, Menlo, Monaco, Lucida Console, Liberation Mono, DejaVu Sans Mono, Bitstream Vera Sans Mono, Courier New, monospace, serif;background-color: white;border-style: solid;border-color: LightGray;} .confluenceTd{border:1px solid #ddd;padding:7px 10px;vertical-align:top;text-align:left;min-width:8px} </style>


<p>
<span style="color: rgb(0,0,0);">A&nbsp;</span>
<em>nested loop</em>
<span style="color: rgb(0,0,0);">&nbsp;is a (inner) loop that appears in the loop body of another (outer) loop. The inner or outer loop can be any type:&nbsp;</span>
<strong>while</strong>
<span style="color: rgb(0,0,0);">,&nbsp;</span>
<strong>do while</strong>
<span style="color: rgb(0,0,0);">, or&nbsp;</span>
<strong>for</strong>
<span style="color: rgb(0,0,0);">. For example, the inner loop can be a&nbsp;</span>
<strong>while</strong>
<span style="color: rgb(0,0,0);">&nbsp;loop while the outer loop can be a&nbsp;</span>
<strong>for</strong>
<span style="color: rgb(0,0,0);">&nbsp;loop. Of course, they can be the same kind of loops, too.</span>
</p>
<p>
<span style="color: rgb(0,0,0);">Both, Java and Python allow to use one loop inside another loop. Following section shows a few examples to illustrate the concept.</span>
</p>
<h2 id="NestedLoops-Nestedwhileloops">Nested while loops</h2>
<p>
<span style="color: rgb(0,0,0);">The following program uses a nested for loop to find the prime numbers from 2 to 100:</span>
</p>
<div class="table-wrap">
<table class="confluenceTable">
<tbody>
<tr>
<td class="confluenceTd" colspan="1" rowspan="1">
<div class="code panel pdl conf-macro output-block" data-hasbody="true" data-macro-name="code" style="border-width: 1px;">
<div class="codeHeader panelHeader pdl" style="border-bottom-width: 1px;">
<b>Java nested loops</b>
</div>
<div class="codeContent panelContent pdl">
<pre class="syntaxhighlighter-pre" data-syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" data-theme="Confluence">// prime numbers from 2 to 100
int i = 2;
while(i &lt; 100){
	int j = 2;
    while(j &lt;= (i / j)){
        if (i % j == 0) break;
        j = j + 1;// or j++;
    }   
    if (j &gt; i/j) System.out.println(i + " is prime");
    i = i + 1; // or i++;    
}
System.out.println("Good bye!");</pre>
</div>
</div>
</td>
<td class="confluenceTd" colspan="1" rowspan="1">
<div class="code panel pdl conf-macro output-block" data-hasbody="true" data-macro-name="code" style="border-width: 1px;">
<div class="codeHeader panelHeader pdl" style="border-bottom-width: 1px;">
<b>Python nested loops</b>
</div>
<div class="codeContent panelContent pdl">
<pre class="syntaxhighlighter-pre" data-syntaxhighlighter-params="brush: py; gutter: false; theme: Confluence" data-theme="Confluence"># prime numbers from 2 to 100

i = 2
while(i &lt; 100):
   j = 2
   while(j &lt;= (i/j)):
      if not(i%j): break
      j = j + 1
   if (j &gt; i/j) : print i, " is prime"
   i = i + 1

print "Good bye!"</pre>
</div>
</div>
</td>
</tr>
</tbody>
</table>
</div>
<h2 id="NestedLoops-Nestedforloops">
<span style="color: rgb(0,0,0);">Nested for loops</span>
</h2>
<p>
<span style="color: rgb(0,0,0);">You can often use for-loops to make code easier to read. The following code with nested for-loops prints...</span>
</p>
<div class="table-wrap">
<table class="confluenceTable">
<tbody>
<tr>
<td class="confluenceTd" colspan="1" rowspan="1">
<div class="code panel pdl conf-macro output-block" data-hasbody="true" data-macro-name="code" style="border-width: 1px;">
<div class="codeHeader panelHeader pdl" style="border-bottom-width: 1px;">
<b>Java nested loops</b>
</div>
<div class="codeContent panelContent pdl">
<pre class="syntaxhighlighter-pre" data-syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" data-theme="Confluence">// Print the below statement 3 times&nbsp;
for (int number = 0; number &lt; 3; number++) {
    System.out.println("-------------------------------------------");
    System.out.println("I am outer loop iteration " + number);
    // inner loop
    for (int another_number = 0; another_number &lt; 5; another_number++) {
        System.out.println("****************************");
        System.out.println("I am inner loop iteration " + another_number);
    }
}</pre>
</div>
</div>
</td>
<td class="confluenceTd" colspan="1" rowspan="1">
<div class="code panel pdl conf-macro output-block" data-hasbody="true" data-macro-name="code" style="border-width: 1px;">
<div class="codeHeader panelHeader pdl" style="border-bottom-width: 1px;">
<b>Python nested loops</b>
</div>
<div class="codeContent panelContent pdl">
<pre class="syntaxhighlighter-pre" data-syntaxhighlighter-params="brush: py; gutter: false; theme: Confluence" data-theme="Confluence"># Print the below statement 3 times
for number in range(3) :  
    print("-------------------------------------------")
    print("I am outer loop iteration "+str(number))
    # Inner loop
    for another_number in range(5):  
        print("****************************")
        print("I am inner loop iteration "+str(another_number))
		break</pre>
</div>
</div>
</td>
</tr>
</tbody>
</table>
</div>
<p>You will find out that the control enters the first for loop and the value of the variable&nbsp;<code>number</code>&nbsp;is initialized as 0. The first print statement is printed, and then control enters the second for loop, where the value of the variable&nbsp;<code>another_number</code>&nbsp;is initialized to&nbsp;<code>0</code>. The first print statement in the second for loop is printed once.</p>
<p>Now, the control returns to the inner for loop once again and the value of&nbsp;<code>another_number</code>&nbsp;is again initialized to the next integer followed by printing the statement inside the&nbsp;<code>println()</code>&nbsp;function.</p>
<p>The aforementioned process continues until the control has traversed until another_number reaches value 4, and then the control returns back to the outermost loop, initializes the variable&nbsp;<code>number</code>&nbsp;to the next integer, prints the statement inside the <code>println()</code>&nbsp;function, visits the inner loop and then repeats all of the above steps until the value of variable&nbsp;<span style="font-family: monospace;">number</span>&nbsp;reaches 2;</p>
<p>This journey of the control traveling from the outermost loop, traversing of the inner loop and then back again to the outer for loop continues until the control has covered the entire range, which is 3 times in your case.</p>
<p>&nbsp;</p>


</div></div></div></div>', 2, 8)
GO
INSERT [dbo].[Topics] ([Name], [Description], [CourseId], [TopicId]) VALUES (N'Arrays', N'<div class="v-verticallayout v-layout v-vertical v-widget v-has-width v-has-height v-margin-top v-margin-right v-margin-bottom v-margin-left" style="width: 100%; height: 100%;"><div class="v-expand" style="padding-top: 0px;"><div class="v-slot" style="height: 100%; margin-top: 0px;"><div class="v-label v-widget v-has-width v-has-height" style="width: 100%; height: 100%;"><!--?xml version="1.0" encoding="UTF-8" standalone="no"?-->


<style>  .codeContent{overflow:visible!important;} .panelHeader{padding:10px;border-bottom:1px solid #ddd;	background-color:#f7f7f7;border-bottom-color: #3c78b5;border-style: solid;border-color: LightGray;} .panelContent{padding:10px;font-family: Consolas, Menlo, Monaco, Lucida Console, Liberation Mono, DejaVu Sans Mono, Bitstream Vera Sans Mono, Courier New, monospace, serif;background-color: white;border-style: solid;border-color: LightGray;} .confluenceTd{border:1px solid #ddd;padding:7px 10px;vertical-align:top;text-align:left;min-width:8px} </style>


<p>
<span style="color: rgb(0,0,0);">A&nbsp;</span>
<em>nested loop</em>
<span style="color: rgb(0,0,0);">&nbsp;is a (inner) loop that appears in the loop body of another (outer) loop. The inner or outer loop can be any type:&nbsp;</span>
<strong>while</strong>
<span style="color: rgb(0,0,0);">,&nbsp;</span>
<strong>do while</strong>
<span style="color: rgb(0,0,0);">, or&nbsp;</span>
<strong>for</strong>
<span style="color: rgb(0,0,0);">. For example, the inner loop can be a&nbsp;</span>
<strong>while</strong>
<span style="color: rgb(0,0,0);">&nbsp;loop while the outer loop can be a&nbsp;</span>
<strong>for</strong>
<span style="color: rgb(0,0,0);">&nbsp;loop. Of course, they can be the same kind of loops, too.</span>
</p>
<p>
<span style="color: rgb(0,0,0);">Both, Java and Python allow to use one loop inside another loop. Following section shows a few examples to illustrate the concept.</span>
</p>
<h2 id="NestedLoops-Nestedwhileloops">Nested while loops</h2>
<p>
<span style="color: rgb(0,0,0);">The following program uses a nested for loop to find the prime numbers from 2 to 100:</span>
</p>
<div class="table-wrap">
<table class="confluenceTable">
<tbody>
<tr>
<td class="confluenceTd" colspan="1" rowspan="1">
<div class="code panel pdl conf-macro output-block" data-hasbody="true" data-macro-name="code" style="border-width: 1px;">
<div class="codeHeader panelHeader pdl" style="border-bottom-width: 1px;">
<b>Java nested loops</b>
</div>
<div class="codeContent panelContent pdl">
<pre class="syntaxhighlighter-pre" data-syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" data-theme="Confluence">// prime numbers from 2 to 100
int i = 2;
while(i &lt; 100){
	int j = 2;
    while(j &lt;= (i / j)){
        if (i % j == 0) break;
        j = j + 1;// or j++;
    }   
    if (j &gt; i/j) System.out.println(i + " is prime");
    i = i + 1; // or i++;    
}
System.out.println("Good bye!");</pre>
</div>
</div>
</td>
<td class="confluenceTd" colspan="1" rowspan="1">
<div class="code panel pdl conf-macro output-block" data-hasbody="true" data-macro-name="code" style="border-width: 1px;">
<div class="codeHeader panelHeader pdl" style="border-bottom-width: 1px;">
<b>Python nested loops</b>
</div>
<div class="codeContent panelContent pdl">
<pre class="syntaxhighlighter-pre" data-syntaxhighlighter-params="brush: py; gutter: false; theme: Confluence" data-theme="Confluence"># prime numbers from 2 to 100

i = 2
while(i &lt; 100):
   j = 2
   while(j &lt;= (i/j)):
      if not(i%j): break
      j = j + 1
   if (j &gt; i/j) : print i, " is prime"
   i = i + 1

print "Good bye!"</pre>
</div>
</div>
</td>
</tr>
</tbody>
</table>
</div>
<h2 id="NestedLoops-Nestedforloops">
<span style="color: rgb(0,0,0);">Nested for loops</span>
</h2>
<p>
<span style="color: rgb(0,0,0);">You can often use for-loops to make code easier to read. The following code with nested for-loops prints...</span>
</p>
<div class="table-wrap">
<table class="confluenceTable">
<tbody>
<tr>
<td class="confluenceTd" colspan="1" rowspan="1">
<div class="code panel pdl conf-macro output-block" data-hasbody="true" data-macro-name="code" style="border-width: 1px;">
<div class="codeHeader panelHeader pdl" style="border-bottom-width: 1px;">
<b>Java nested loops</b>
</div>
<div class="codeContent panelContent pdl">
<pre class="syntaxhighlighter-pre" data-syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" data-theme="Confluence">// Print the below statement 3 times&nbsp;
for (int number = 0; number &lt; 3; number++) {
    System.out.println("-------------------------------------------");
    System.out.println("I am outer loop iteration " + number);
    // inner loop
    for (int another_number = 0; another_number &lt; 5; another_number++) {
        System.out.println("****************************");
        System.out.println("I am inner loop iteration " + another_number);
    }
}</pre>
</div>
</div>
</td>
<td class="confluenceTd" colspan="1" rowspan="1">
<div class="code panel pdl conf-macro output-block" data-hasbody="true" data-macro-name="code" style="border-width: 1px;">
<div class="codeHeader panelHeader pdl" style="border-bottom-width: 1px;">
<b>Python nested loops</b>
</div>
<div class="codeContent panelContent pdl">
<pre class="syntaxhighlighter-pre" data-syntaxhighlighter-params="brush: py; gutter: false; theme: Confluence" data-theme="Confluence"># Print the below statement 3 times
for number in range(3) :  
    print("-------------------------------------------")
    print("I am outer loop iteration "+str(number))
    # Inner loop
    for another_number in range(5):  
        print("****************************")
        print("I am inner loop iteration "+str(another_number))
		break</pre>
</div>
</div>
</td>
</tr>
</tbody>
</table>
</div>
<p>You will find out that the control enters the first for loop and the value of the variable&nbsp;<code>number</code>&nbsp;is initialized as 0. The first print statement is printed, and then control enters the second for loop, where the value of the variable&nbsp;<code>another_number</code>&nbsp;is initialized to&nbsp;<code>0</code>. The first print statement in the second for loop is printed once.</p>
<p>Now, the control returns to the inner for loop once again and the value of&nbsp;<code>another_number</code>&nbsp;is again initialized to the next integer followed by printing the statement inside the&nbsp;<code>println()</code>&nbsp;function.</p>
<p>The aforementioned process continues until the control has traversed until another_number reaches value 4, and then the control returns back to the outermost loop, initializes the variable&nbsp;<code>number</code>&nbsp;to the next integer, prints the statement inside the <code>println()</code>&nbsp;function, visits the inner loop and then repeats all of the above steps until the value of variable&nbsp;<span style="font-family: monospace;">number</span>&nbsp;reaches 2;</p>
<p>This journey of the control traveling from the outermost loop, traversing of the inner loop and then back again to the outer for loop continues until the control has covered the entire range, which is 3 times in your case.</p>
<p>&nbsp;</p>


</div></div></div></div>', 2, 9)
GO
INSERT [dbo].[Topics] ([Name], [Description], [CourseId], [TopicId]) VALUES (N'Two-dimensional Array', N'<div class="v-verticallayout v-layout v-vertical v-widget v-has-width v-has-height v-margin-top v-margin-right v-margin-bottom v-margin-left" style="width: 100%; height: 100%;"><div class="v-expand" style="padding-top: 0px;"><div class="v-slot" style="height: 100%; margin-top: 0px;"><div class="v-label v-widget v-has-width v-has-height" style="width: 100%; height: 100%;"><!--?xml version="1.0" encoding="UTF-8" standalone="no"?-->


<style>  .codeContent{overflow:visible!important;} .panelHeader{padding:10px;border-bottom:1px solid #ddd;	background-color:#f7f7f7;border-bottom-color: #3c78b5;border-style: solid;border-color: LightGray;} .panelContent{padding:10px;font-family: Consolas, Menlo, Monaco, Lucida Console, Liberation Mono, DejaVu Sans Mono, Bitstream Vera Sans Mono, Courier New, monospace, serif;background-color: white;border-style: solid;border-color: LightGray;} .confluenceTd{border:1px solid #ddd;padding:7px 10px;vertical-align:top;text-align:left;min-width:8px} </style>


<p>
<span style="color: rgb(0,0,0);">An array of more than one dimension is known as multi-dimensional array. The most commonly used multi-dimensional array is two dimensional array. An array in Java is equivalent to list in Python.</span>
<span style="color: rgb(0,0,0);">
<br clear="none">
</span>
</p>
<h2 id="Two-DimensionalArrays-Two-dimensionalarray(Java)vsTwo-dimensionallist(Python)">Two-dimensional array (Java) vs Two-dimensional list (Python)</h2>
<p>
<span style="color: rgb(0,0,0);">
<span style="color: rgb(0,0,0);">If you know how to create one dimensional array and fact that&nbsp;</span>
<em>multi-dimensional arrays are just array of array in Java</em>
<span style="color: rgb(0,0,0);">, then creating a 2 dimensional array should be easy.&nbsp;</span>
<span style="color: rgb(0,0,0);">
<br clear="none">
</span>
</span>
</p>
<p>
<span style="color: rgb(0,0,0);">A good representation of a 2-dimensional array (list) is a grid because technically, it is one. A practical application for 2-dimensional lists would be to use them to store the available seats in a cinema, where one dimension represents the rows and other one - columns (seats).&nbsp;<span style="color: rgb(0,0,0);">Of course, a cinema would be bigger in real life, but this list is just fine as an example. 0 means the seat is available, 1 stands for one that isn''t. Later, we could also add 2 for reserved seats and so on.</span>
</span>
</p>
<div class="table-wrap">
<table class="confluenceTable">
<tbody>
<tr>
<td class="confluenceTd" colspan="1" rowspan="1">
<div class="code panel pdl conf-macro output-block" data-hasbody="true" data-macro-name="code" style="border-width: 1px;">
<div class="codeHeader panelHeader pdl" style="border-bottom-width: 1px;">
<b>Array in Java</b>
</div>
<div class="codeContent panelContent pdl">
<pre class="syntaxhighlighter-pre" data-syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" data-theme="Confluence">int[][] cinema = new int[5][5]; 
for (int j = 0; j &lt; cinema.length; j++) {
	for (int i = 0; i &lt; cinema[j].length; i++) {
    	cinema[j][i] = 0;       
    }
}</pre>
</div>
</div>
</td>
<td class="confluenceTd" colspan="1" rowspan="1">
<span style="color: rgb(0,0,0);">I<span style="color: rgb(0,0,0);">nstead of one bracket used in one dimensional array, we will use two e.g.&nbsp;</span>
<span style="color: rgb(0,0,0);">int[][]</span>
<span style="color: rgb(0,0,0);">&nbsp;to define two-dimensional array.&nbsp;</span>
<br clear="none">
<br clear="none">
</span>
</td>
</tr>
<tr>
<td class="confluenceTd" colspan="1" rowspan="1">
<div class="code panel pdl conf-macro output-block" data-hasbody="true" data-macro-name="code" style="border-width: 1px;">
<div class="codeHeader panelHeader pdl" style="border-bottom-width: 1px;">
<b>Array in Python</b>
</div>
<div class="codeContent panelContent pdl">
<pre class="syntaxhighlighter-pre" data-syntaxhighlighter-params="brush: py; gutter: false; theme: Confluence" data-theme="Confluence">cinema = []
for j in range(5):
	column = []
    for i in range(5):
		Column.append(0)
	Cinema.append(column)</pre>
</div>
</div>
</td>
<td class="confluenceTd" colspan="1" rowspan="1">
<p style="text-align: justify;">
<span style="color: rgb(0,0,0);">In Python, we declare the 2D array (list) like a list of lists. First</span>, we create an empty one-dimensional list. Then we generate 5 more lists (columns) using a&nbsp;<code>for</code>&nbsp;loop, fill each list with 5 zeros using a nested loop and add the list to the original list as a new item.</p>
<p style="text-align: justify;">The first number indicates the number of columns, the second is the number of rows, we could treat it the other way around as well, for example, matrices in mathematics have the number of rows come first.</p>
<p style="text-align: justify;">We''ve just created a table full of zeros.</p>
</td>
</tr>
</tbody>
</table>
</div>
<h2 id="Two-DimensionalArrays-Fillingthedata">Filling the data</h2>
<p>
<span style="color: rgb(0,0,0);">Let''s fill the cinema room with 1s now as you can see in the picture bellow. Since we''ll be lazy as good programmers should be, we''ll use&nbsp;</span>
<code style="text-align: justify;">for</code>
<span style="color: rgb(0,0,0);">&nbsp;loops to create a row of 1s.</span>
<span style="color: rgb(0,0,0);">&nbsp;To access an item of the 2D list we have to enter two coordinates.</span>
</p>
<div class="table-wrap">
<table class="confluenceTable">
<tbody>
<tr>
<td class="confluenceTd" colspan="1" rowspan="1">
<div class="code panel pdl conf-macro output-block" data-hasbody="true" data-macro-name="code" style="border-width: 1px;">
<div class="codeHeader panelHeader pdl" style="border-bottom-width: 1px;">
<b>Filling the array in Java</b>
</div>
<div class="codeContent panelContent pdl">
<pre class="syntaxhighlighter-pre" data-syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" data-theme="Confluence">cinema[2][2] = 1;
for (int i = 1; i &lt; 4 ; i++) {
  	cinema[i][3] = 1; // the fourth row
}
for (int i = 0; i &lt; 5 ; i++) {
    cinema[i][4] = 1; // the last row
}</pre>
</div>
</div>
</td>
<td class="confluenceTd" colspan="1" rowspan="1">
<div class="code panel pdl conf-macro output-block" data-hasbody="true" data-macro-name="code" style="border-width: 1px;">
<div class="codeHeader panelHeader pdl" style="border-bottom-width: 1px;">
<b>Filling the array in Python</b>
</div>
<div class="codeContent panelContent pdl">
<pre class="syntaxhighlighter-pre" data-syntaxhighlighter-params="brush: py; gutter: false; theme: Confluence" data-theme="Confluence">cinema[2, 2] = 1 # center
for i in range(1, 4): # fourth row
        cinema[i][3] = 1
for i in range(5): # the last row
        cinema[i][4] = 1</pre>
</div>
</div>
</td>
<td class="confluenceTd" colspan="1" rowspan="1">
<span class="confluence-embedded-file-wrapper confluence-embedded-manual-size">
<img class="confluence-embedded-image" data-base-url="https://www.ntnu.no/wiki" data-image-src="/wiki/download/attachments/117506288/multidimarray.jpg?version=1&amp;modificationDate=1514638600000&amp;api=v2" data-linked-resource-container-id="117506288" data-linked-resource-container-version="10" data-linked-resource-content-type="image/jpeg" data-linked-resource-default-alias="multidimarray.jpg" data-linked-resource-id="117506461" data-linked-resource-type="attachment" data-linked-resource-version="1" data-unresolved-comment-count="0" height="250" src="https://www.ntnu.no/wiki/download/attachments/117506288/multidimarray.jpg?version=1&amp;modificationDate=1514638600000&amp;api=v2">
</span>
</td>
</tr>
</tbody>
</table>
</div>
<h2 id="Two-DimensionalArrays-Theoutput">The output</h2>
<p style="text-align: justify;">We''ll print the list using a loop as we did before. We''ll need 2 loops for the 2d list, the first one will iterate over columns and the second one over rows). As proper programmers, won''t specify the number of rows and columns directly into the loop because it may change in the future. We know the&nbsp;<code>len()</code>&nbsp;function so we can easily ask how many columns is in the outer list and how many items is in the inner one. We have to keep in mind the outer list can be empty.</p>
<p style="text-align: justify;">We''ll nest the loops in order so that the outer loop iterates over the rows and the inner one over the columns of the current row. After printing a row, we must break a line. Both loops must have a different control variable.</p>
<div class="table-wrap">
<table class="confluenceTable">
<tbody>
<tr>
<td class="confluenceTd" colspan="1" rowspan="1">
<div class="code panel pdl conf-macro output-block" data-hasbody="true" data-macro-name="code" style="border-width: 1px;">
<div class="codeHeader panelHeader pdl" style="border-bottom-width: 1px;">
<b>Output in Java</b>
</div>
<div class="codeContent panelContent pdl">
<pre class="syntaxhighlighter-pre" data-syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" data-theme="Confluence">int cols = cinema.length;
int rows = cinema[0].length;
for (int j = 0; j &lt; cols; j++) {
  	for (int i = 0; i &lt; rows; i++) {
     	System.out.print(cinema[i][j]);
    }
    System.out.println("");
}</pre>
</div>
</div>
</td>
<td class="confluenceTd" colspan="1" rowspan="1">
<div class="code panel pdl conf-macro output-block" data-hasbody="true" data-macro-name="code" style="border-width: 1px;">
<div class="codeHeader panelHeader pdl" style="border-bottom-width: 1px;">
<b>Output in Python</b>
</div>
<div class="codeContent panelContent pdl">
<pre class="syntaxhighlighter-pre" data-syntaxhighlighter-params="brush: py; gutter: false; theme: Confluence" data-theme="Confluence">cols = len(cinema)
rows = 0
if cols:
	rows = len(cinema[0])
for j in range(rows):
    for i in range(cols):
     	print(cinema[i][j], end = "")
    print()</pre>
</div>
</div>
</td>
<td class="confluenceTd" colspan="1" rowspan="1">&nbsp;</td>
</tr>
</tbody>
</table>
</div>
<p>
<span style="color: rgb(0,0,0);">Output in both cases would be:</span>
</p>
<pre>00000<br clear="none">00000<br clear="none">00100<br clear="none">01110<br clear="none">11111</pre>
<p>
<span style="color: rgb(0,0,0);">
<br clear="none">
</span>
</p>


</div></div></div></div>', 2, 10)
GO
INSERT [dbo].[Topics] ([Name], [Description], [CourseId], [TopicId]) VALUES (N'Exception Handling', N'<div class="v-verticallayout v-layout v-vertical v-widget v-has-width v-has-height v-margin-top v-margin-right v-margin-bottom v-margin-left" style="width: 100%; height: 100%;"><div class="v-expand" style="padding-top: 0px;"><div class="v-slot" style="height: 100%; margin-top: 0px;"><div class="v-label v-widget v-has-width v-has-height" style="width: 100%; height: 100%;"><!--?xml version="1.0" encoding="UTF-8" standalone="no"?-->


<style>  .codeContent{overflow:visible!important;} .panelHeader{padding:10px;border-bottom:1px solid #ddd;	background-color:#f7f7f7;border-bottom-color: #3c78b5;border-style: solid;border-color: LightGray;} .panelContent{padding:10px;font-family: Consolas, Menlo, Monaco, Lucida Console, Liberation Mono, DejaVu Sans Mono, Bitstream Vera Sans Mono, Courier New, monospace, serif;background-color: white;border-style: solid;border-color: LightGray;} .confluenceTd{border:1px solid #ddd;padding:7px 10px;vertical-align:top;text-align:left;min-width:8px} </style>


<p>An exception is an error that happens during execution of a program. When that error occurs, Java generate an exception that can be handled, which avoids program to crash.&nbsp;</p>
<p>Exceptions are convenient in many ways for handling errors and special conditions in a program. When we think that a code segment exists which can produce an error then we can use exception handling.</p>
<h2 id="Exceptionhandling-Example">Example</h2>
<p>
<span style="color: rgb(34,34,34);">The following example asks the user for input until a valid integer has been entered.</span>
</p>
<div class="table-wrap">
<table class="confluenceTable">
<tbody>
<tr>
<td class="confluenceTd" colspan="1" rowspan="1">
<div class="code panel pdl conf-macro output-block" data-hasbody="true" data-macro-name="code" style="border-width: 1px;">
<div class="codeHeader panelHeader pdl" style="border-bottom-width: 1px;">
<b>Exception handling in Java</b>
</div>
<div class="codeContent panelContent pdl">
<pre class="syntaxhighlighter-pre" data-syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" data-theme="Confluence">Scanner in = new Scanner(System.in);
boolean error = true;
while (error) {            
   	try {
        System.out.println("Please enter a number: ");
        int x = in.nextInt();
        error = false;       
     } catch (InputMismatchException exception) {
        System.out.println("Oops!  That was no valid number.  Try again..."); 
        in.nextLine();
     }
}</pre>
</div>
</div>
</td>
<td class="confluenceTd" colspan="1" rowspan="1">
<span style="color: rgb(0,0,0);">If the user enters a value that isn’t a valid integer, the&nbsp;</span>catch<span style="color: rgb(0,0,0);">&nbsp;block catches the error and forces the loop to repeat.</span>
</td>
</tr>
<tr>
<td class="confluenceTd" colspan="1" rowspan="1">
<div class="code panel pdl conf-macro output-block" data-hasbody="true" data-macro-name="code" style="border-width: 1px;">
<div class="codeHeader panelHeader pdl" style="border-bottom-width: 1px;">
<b>Exception handling in Python</b>
</div>
<div class="codeContent panelContent pdl">
<pre class="syntaxhighlighter-pre" data-syntaxhighlighter-params="brush: py; gutter: false; theme: Confluence" data-theme="Confluence">while True:
     try:
         x = int(input("Please enter a number: "))
         break
     except ValueError:
         print("Oops!  That was no valid number.  Try again...")</pre>
</div>
</div>
</td>
<td class="confluenceTd" colspan="1" rowspan="1">
<p style="text-align: justify;">The&nbsp;<a class="external-link" href="https://docs.python.org/3/reference/compound_stmts.html#try" rel="nofollow" shape="rect">
<code class="xref std std-keyword docutils literal">
<span class="pre">try</span>
</code>
</a>&nbsp;statement in Python works as follows.</p>
<ul class="simple">
<li>First, the&nbsp;<em>try clause</em>&nbsp;(the statement(s) between the&nbsp;<a class="external-link" href="https://docs.python.org/3/reference/compound_stmts.html#try" rel="nofollow" shape="rect">
<code class="xref std std-keyword docutils literal">
<span class="pre">try</span>
</code>
</a>&nbsp;and&nbsp;<a class="external-link" href="https://docs.python.org/3/reference/compound_stmts.html#except" rel="nofollow" shape="rect">
<code class="xref std std-keyword docutils literal">
<span class="pre">except</span>
</code>
</a>&nbsp;keywords) is executed.</li>
<li>If no exception occurs, the&nbsp;<em>except clause</em>&nbsp;is skipped and execution of the&nbsp;<a class="external-link" href="https://docs.python.org/3/reference/compound_stmts.html#try" rel="nofollow" shape="rect">
<code class="xref std std-keyword docutils literal">
<span class="pre">try</span>
</code>
</a>&nbsp;statement is finished.</li>
<li>If an exception occurs during execution of the try clause, the rest of the clause is skipped. Then if its type matches the exception named after the&nbsp;<a class="external-link" href="https://docs.python.org/3/reference/compound_stmts.html#except" rel="nofollow" shape="rect">
<code class="xref std std-keyword docutils literal">
<span class="pre">except</span>
</code>
</a>&nbsp;keyword, the except clause is executed, and then execution continues after the&nbsp;<a class="external-link" href="https://docs.python.org/3/reference/compound_stmts.html#try" rel="nofollow" shape="rect">
<code class="xref std std-keyword docutils literal">
<span class="pre">try</span>
</code>
</a>&nbsp;statement.</li>
<li>If an exception occurs which does not match the exception named in the except clause, it is passed on to outer&nbsp;<a class="external-link" href="https://docs.python.org/3/reference/compound_stmts.html#try" rel="nofollow" shape="rect">
<code class="xref std std-keyword docutils literal">
<span class="pre">try</span>
</code>
</a>&nbsp;statements; if no handler is found, it is an&nbsp;<em>unhandled exception</em>&nbsp;and execution stops with a message as shown above.</li>
</ul>
</td>
</tr>
</tbody>
</table>
</div>
<p>note: Although the previous example is used to present the syntax and use of exception handling,&nbsp;<span style="color: rgb(36,39,41);">you should check whether or not the input can be parsed as an int before attempting to assign the input''s value to an int. You should not be using an exception to determine whether or not the input is correct it is bad practice and should be avoided.</span>
</p>
<div class="table-wrap">
<table class="confluenceTable">
<tbody>
<tr>
<td class="confluenceTd" colspan="1" rowspan="1">
<div class="code panel pdl conf-macro output-block" data-hasbody="true" data-macro-name="code" style="border-width: 1px;">
<div class="codeHeader panelHeader pdl" style="border-bottom-width: 1px;">
<b>Exception handling in Java</b>
</div>
<div class="codeContent panelContent pdl">
<pre class="syntaxhighlighter-pre" data-syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" data-theme="Confluence">&nbsp;if(scanner.hasNextInt()){
   option = scanner.nextInt();
}else{
   System.out.printLn("your message");
}</pre>
</div>
</div>
</td>
<td class="confluenceTd" colspan="1" rowspan="1">
<span style="color: rgb(36,39,41);">This way you can check whether or not the input can be interpreted as an int and if so assign the value and if not display a message. Calling that method does not advance the scanner.</span>&nbsp;</td>
</tr>
</tbody>
</table>
</div>


</div></div></div></div>', 2, 11)
GO
INSERT [dbo].[Topics] ([Name], [Description], [CourseId], [TopicId]) VALUES (N'File Processing', N'<div class="v-verticallayout v-layout v-vertical v-widget v-has-width v-has-height v-margin-top v-margin-right v-margin-bottom v-margin-left" style="width: 100%; height: 100%;"><div class="v-expand" style="padding-top: 0px;"><div class="v-slot" style="height: 100%; margin-top: 0px;"><div class="v-label v-widget v-has-width v-has-height" style="width: 100%; height: 100%;"><!--?xml version="1.0" encoding="UTF-8" standalone="no"?-->


<style>  .codeContent{overflow:visible!important;} .panelHeader{padding:10px;border-bottom:1px solid #ddd;	background-color:#f7f7f7;border-bottom-color: #3c78b5;border-style: solid;border-color: LightGray;} .panelContent{padding:10px;font-family: Consolas, Menlo, Monaco, Lucida Console, Liberation Mono, DejaVu Sans Mono, Bitstream Vera Sans Mono, Courier New, monospace, serif;background-color: white;border-style: solid;border-color: LightGray;} .confluenceTd{border:1px solid #ddd;padding:7px 10px;vertical-align:top;text-align:left;min-width:8px} </style>


<p>
<span style="color: rgb(34,34,34);">
<span style="color: rgb(0,0,0);">File processing is performed in Java using various classes. The primary class used to handle files is called File. The File class is part of the&nbsp;</span>
<strong style="text-align: justify;">
<a class="external-link" href="http://java.io" rel="nofollow" shape="rect">java.io</a>
</strong>
<span style="color: rgb(0,0,0);">package.&nbsp;</span>
</span>
</p>
<h2 id="Fileprocessing-Exampleoffileprocessing">
<span style="color: rgb(34,34,34);">Example of file processing</span>
</h2>
<p>
<span style="color: rgb(34,34,34);">As we can see in the following example, there are a lot of classes we need to import to simply read a file, and in addition, we have to handle the exception thrown by some methods. In Python, it is two lines.</span>
</p>
<div class="table-wrap">
<table class="confluenceTable">
<tbody>
<tr>
<td class="confluenceTd" colspan="1" rowspan="1">
<div class="code panel pdl conf-macro output-block" data-hasbody="true" data-macro-name="code" style="border-width: 1px;">
<div class="codeHeader panelHeader pdl" style="border-bottom-width: 1px;">
<b>File I/O in Java</b>
</div>
<div class="codeContent panelContent pdl">
<pre class="syntaxhighlighter-pre" data-syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" data-theme="Confluence">File dir = new File(".");// get current directory
File fin = new File(dir.getCanonicalPath() + File.separator
				+ "Code.txt");
FileInputStream fis = new FileInputStream(fin);
// Construct the BufferedReader object
BufferedReader in = new BufferedReader(new InputStreamReader(fis));
String aLine = null;
while ((aLine = in.readLine()) != null) {
	// Process each line, here we count empty lines
	if (aLine.trim().length() == 0) {
	}
}
// do not forget to close the buffer reader
in.close();</pre>
</div>
</div>
</td>
<td class="confluenceTd" colspan="1" rowspan="1">
<div class="code panel pdl conf-macro output-block" data-hasbody="true" data-macro-name="code" style="border-width: 1px;">
<div class="codeHeader panelHeader pdl" style="border-bottom-width: 1px;">
<b>File I/O in Python</b>
</div>
<div class="codeContent panelContent pdl">
<pre class="syntaxhighlighter-pre" data-syntaxhighlighter-params="brush: py; gutter: false; theme: Confluence" data-theme="Confluence">myFile = open("/home/xiaoran/Desktop/test.txt")
print myFile.read();</pre>
</div>
</div>
</td>
</tr>
</tbody>
</table>
</div>


</div></div></div></div>', 2, 12)
GO
INSERT [dbo].[Topics] ([Name], [Description], [CourseId], [TopicId]) VALUES (N'Array Lists', N'<div class="v-verticallayout v-layout v-vertical v-widget v-has-width v-has-height v-margin-top v-margin-right v-margin-bottom v-margin-left" style="width: 100%; height: 100%;"><div class="v-expand" style="padding-top: 0px;"><div class="v-slot" style="height: 100%; margin-top: 0px;"><div class="v-label v-widget v-has-width v-has-height" style="width: 100%; height: 100%;"><!--?xml version="1.0" encoding="UTF-8" standalone="no"?-->


<style>  .codeContent{overflow:visible!important;} .panelHeader{padding:10px;border-bottom:1px solid #ddd;	background-color:#f7f7f7;border-bottom-color: #3c78b5;border-style: solid;border-color: LightGray;} .panelContent{padding:10px;font-family: Consolas, Menlo, Monaco, Lucida Console, Liberation Mono, DejaVu Sans Mono, Bitstream Vera Sans Mono, Courier New, monospace, serif;background-color: white;border-style: solid;border-color: LightGray;} .confluenceTd{border:1px solid #ddd;padding:7px 10px;vertical-align:top;text-align:left;min-width:8px} </style>


<p style="text-align: justify;">Collections in java&nbsp;is a framework that provides an architecture to store and manipulate the group of objects.</p>
<p style="text-align: justify;">All the operations that you perform on a data such as searching, sorting, insertion, manipulation, deletion etc. can be performed by Java Collections.</p>
<p style="text-align: justify;">Java Collection simply means a single unit of objects. Java Collection framework provides many interfaces (Set, List, Queue, Deque etc.) and classes (ArrayList, Vector, LinkedList, PriorityQueue, HashSet, LinkedHashSet, TreeSet etc).</p>
<h2 id="ArrayLists-ArrayList" style="text-align: justify;">ArrayList</h2>
<p style="text-align: justify;">Standard Java arrays are of a fixed length. After arrays are created, they cannot grow or shrink, which means that you must know in advance how many elements an array will hold.</p>
<p style="text-align: justify;">Array lists are created with an initial size. When this size is exceeded, the collection is automatically enlarged. When objects are removed, the array may be shrunk.&nbsp;<span style="color: rgb(0,0,0);">Though, it may be slower than standard arrays but can be helpful in programs where lots of manipulation in the array is needed.</span>
</p>
<h3 id="ArrayLists-ArrayListExample">ArrayList Example</h3>
<p>
<span style="color: rgb(34,36,38);">Let’s see the ArrayList example first then we will discuss it’s methods and their usage.</span>
</p>
<div class="table-wrap">
<table class="confluenceTable">
<tbody>
<tr>
<td class="confluenceTd" colspan="1" rowspan="1">
<div class="code panel pdl conf-macro output-block" data-hasbody="true" data-macro-name="code" style="border-width: 1px;">
<div class="codeHeader panelHeader pdl" style="border-bottom-width: 1px;">
<b>collections in Java</b>
</div>
<div class="codeContent panelContent pdl">
<pre class="syntaxhighlighter-pre" data-syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" data-theme="Confluence">import java.util.ArrayList;
... 
ArrayList&lt;String&gt; al = new ArrayList&lt;String&gt;();
al.add("a");
al.add("b");
al.add("c");
System.out.println(al);</pre>
</div>
</div>
</td>
<td class="confluenceTd" colspan="1" rowspan="1">
<div class="code panel pdl conf-macro output-block" data-hasbody="true" data-macro-name="code" style="border-width: 1px;">
<div class="codeHeader panelHeader pdl" style="border-bottom-width: 1px;">
<b>Collections in Python</b>
</div>
<div class="codeContent panelContent pdl">
<pre class="syntaxhighlighter-pre" data-syntaxhighlighter-params="brush: py; gutter: false; theme: Confluence" data-theme="Confluence">aList = []
aList.append("a");
aList.append("b");
aList.append("c");
print aList;</pre>
</div>
</div>
</td>
</tr>
</tbody>
</table>
</div>
<p>
<span style="color: rgb(34,36,38);">In the above example we have used only add method, <span style="color: rgb(34,36,38);">that adds the object to the array list.</span>&nbsp;However there are number of methods available which can be used directly using object of ArrayList class (set, remove, indexOf, get, size, contain, clear).</span>
</p>


</div></div></div></div>', 2, 13)
GO
INSERT [dbo].[Topics] ([Name], [Description], [CourseId], [TopicId]) VALUES (N'Inheritance', N'<div class="v-verticallayout v-layout v-vertical v-widget v-has-width v-has-height v-margin-top v-margin-right v-margin-bottom v-margin-left" style="width: 100%; height: 100%;"><div class="v-expand" style="padding-top: 0px;"><div class="v-slot" style="height: 100%; margin-top: 0px;"><div class="v-label v-widget v-has-width v-has-height" style="width: 100%; height: 100%;"><!--?xml version="1.0" encoding="UTF-8" standalone="no"?-->


<style>  .codeContent{overflow:visible!important;} .panelHeader{padding:10px;border-bottom:1px solid #ddd;	background-color:#f7f7f7;border-bottom-color: #3c78b5;border-style: solid;border-color: LightGray;} .panelContent{padding:10px;font-family: Consolas, Menlo, Monaco, Lucida Console, Liberation Mono, DejaVu Sans Mono, Bitstream Vera Sans Mono, Courier New, monospace, serif;background-color: white;border-style: solid;border-color: LightGray;} .confluenceTd{border:1px solid #ddd;padding:7px 10px;vertical-align:top;text-align:left;min-width:8px} </style>


<p>The idea of inheritance is simple but powerful: When you want to create a new class and there is already a class that includes some of the code that you want, you can derive your new class from the existing class. In doing this, you can reuse the fields and methods of the existing class without having to write (and debug!) them yourself.</p>
<p>A subclass inherits all the&nbsp;<em>members</em>&nbsp;(fields, methods, and nested classes) from its superclass. Constructors are not members, so they are not inherited by subclasses, but the constructor of the superclass can be invoked from the subclass.</p>
<p>In contrast to Python, Java supports only object-oriented programming, while Python&nbsp;supports many (but not all) aspects of object-oriented programming; but it is possible to write a Python program without making any use of OO concepts.</p>
<h2 id="Inheritance-AnExampleofInheritance">An Example of Inheritance</h2>
<p>
<span style="color: rgb(0,0,0);">Here is the sample code for a possible implementation of a </span>
<span style="color: rgb(0,0,0);">
<span style="font-family: monospace;">Animal&nbsp;</span>
</span>
<span style="color: rgb(0,0,0);">class , both in Java and Python.</span>
</p>
<div class="table-wrap">
<table class="confluenceTable">
<tbody>
<tr>
<td class="confluenceTd" colspan="1" rowspan="1">
<div class="code panel pdl conf-macro output-block" data-hasbody="true" data-macro-name="code" style="border-width: 1px;">
<div class="codeHeader panelHeader pdl" style="border-bottom-width: 1px;">
<b>Class implementation in Java</b>
</div>
<div class="codeContent panelContent pdl">
<pre class="syntaxhighlighter-pre" data-syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" data-theme="Confluence">class Animal{
	private String name;
	public Animal(String name){
		this.name = name;
	}
	public void saySomething(){
		System.out.println("I am " + name);
	}
}</pre>
</div>
</div>
</td>
<td class="confluenceTd" colspan="1" rowspan="1">
<div class="code panel pdl conf-macro output-block" data-hasbody="true" data-macro-name="code" style="border-width: 1px;">
<div class="codeHeader panelHeader pdl" style="border-bottom-width: 1px;">
<b>Class implementation in Python</b>
</div>
<div class="codeContent panelContent pdl">
<pre class="syntaxhighlighter-pre" data-syntaxhighlighter-params="brush: py; gutter: false; theme: Confluence" data-theme="Confluence">class Animal():
        def __init__(self, name):
            self.name = name
 
        def saySomething(self):
            print "I am " + self.name    </pre>
</div>
</div>
</td>
</tr>
</tbody>
</table>
</div>
<p>
<span style="color: rgb(34,34,34);">
<span style="color: rgb(0,0,0);">A class declaration for a </span>
<span style="color: rgb(0,0,0);">
<span style="color: rgb(34,34,34);font-family: monospace;">Dog&nbsp;</span>
</span>
<span style="color: rgb(0,0,0);">class that is a subclass of </span>
<span style="color: rgb(0,0,0);">
<span style="color: rgb(34,34,34);font-family: monospace;">Animal&nbsp;</span>
</span>
<span style="color: rgb(0,0,0);">might look like this.</span>
</span>
</p>
<div class="table-wrap">
<table class="confluenceTable">
<tbody>
<tr>
<td class="confluenceTd" colspan="1" rowspan="1">
<div class="code panel pdl conf-macro output-block" data-hasbody="true" data-macro-name="code" style="border-width: 1px;">
<div class="codeHeader panelHeader pdl" style="border-bottom-width: 1px;">
<b>Strings in Java</b>
</div>
<div class="codeContent panelContent pdl">
<pre class="syntaxhighlighter-pre" data-syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" data-theme="Confluence">class Dog extends Animal{
	public Dog(String name) {
		super(name);
	}	
	public void saySomething(){
		System.out.println("I can bark");
	}
}
 
public class Main {
	public static void main(String[] args) {
		Dog dog = new Dog("Chiwawa");
		dog.saySomething();
 
	}
}</pre>
</div>
</div>
</td>
<td class="confluenceTd" colspan="1" rowspan="1">
<div class="code panel pdl conf-macro output-block" data-hasbody="true" data-macro-name="code" style="border-width: 1px;">
<div class="codeHeader panelHeader pdl" style="border-bottom-width: 1px;">
<b>Strings in Python</b>
</div>
<div class="codeContent panelContent pdl">
<pre class="syntaxhighlighter-pre" data-syntaxhighlighter-params="brush: py; gutter: false; theme: Confluence" data-theme="Confluence">class Dog(Animal):
        def saySomething(self):
            print "I am "+ self.name \' + N'
            + ", and I can bark"
 
dog = Dog("Chiwawa") 
dog.saySomething()</pre>
</div>
</div>
</td>
</tr>
</tbody>
</table>
</div>
<p>
<span>
<span style="color: rgb(34,34,34);font-family: monospace;">Dog&nbsp;</span>
</span>
<span style="color: rgb(0,0,0);">inherits all the fields and methods of </span>
<span style="color: rgb(0,0,0);">
<span style="color: rgb(34,34,34);font-family: monospace;">Animal&nbsp;</span>
</span>
<span style="color: rgb(0,0,0);">and can provide additional field(s)&nbsp;</span>
<span style="color: rgb(0,0,0);">and method(s) to set it. Except for the constructor, it is as if you had written a new </span>
<span style="color: rgb(0,0,0);">
<span style="color: rgb(34,34,34);font-family: monospace;">dog&nbsp;</span>
</span>
<span style="color: rgb(0,0,0);">class entirely from scratch, with one field and two methods. However, you didn''t have to do all the work. This would be especially valuable if the methods in the </span>
<span style="color: rgb(0,0,0);">
<span style="color: rgb(34,34,34);font-family: monospace;">Animal&nbsp;</span>
</span>
<span style="color: rgb(0,0,0);">class were complex and had taken substantial time to debug.</span>
</p>
<p>
<span style="color: rgb(34,34,34);">When you extend a base class, there is no requirement such as defining an explicit constructor for implicit super constructor.</span>
</p>


</div></div></div></div>', 2, 14)
GO
INSERT [dbo].[Topics] ([Name], [Description], [CourseId], [TopicId]) VALUES (N'Java Functions', N'<div class="v-verticallayout v-layout v-vertical v-widget v-has-width v-has-height v-margin-top v-margin-right v-margin-bottom v-margin-left" style="width: 100%; height: 100%;"><div class="v-expand" style="padding-top: 0px;"><div class="v-slot" style="height: 100%; margin-top: 0px;"><div class="v-label v-widget v-has-width v-has-height" style="width: 100%; height: 100%;"><!--?xml version="1.0" encoding="UTF-8" standalone="no"?-->


<style>  .codeContent{overflow:visible!important;} .panelHeader{padding:10px;border-bottom:1px solid #ddd;	background-color:#f7f7f7;border-bottom-color: #3c78b5;border-style: solid;border-color: LightGray;} .panelContent{padding:10px;font-family: Consolas, Menlo, Monaco, Lucida Console, Liberation Mono, DejaVu Sans Mono, Bitstream Vera Sans Mono, Courier New, monospace, serif;background-color: white;border-style: solid;border-color: LightGray;} .confluenceTd{border:1px solid #ddd;padding:7px 10px;vertical-align:top;text-align:left;min-width:8px} </style>


<p>Kall til funksjoner brukes for å utnytte en blokk med kode som allerede er skrevet. Ordet&nbsp;<em>metode</em> brukes om funksjoner i objektorienterte-språk.<br clear="none">Funksjoner lages ofte til å utføre bestemte beregninger eller oppgaver, og trenger ikke nødvendigvis se beregningen i en større sammenheng. &nbsp;<br clear="none">
<br clear="none">
<strong>Parametere/Argumenter&nbsp;</strong>(brukes om hverandre)<br clear="none">En funksjon kan ta imot 0 eller flere parametere. Parametere er verdier funksjonen "krever" for å kunne utføres. Funksjonen behandler disse verdiene som variabler som kan/må benyttes gjennom utførelsen av koden.<br clear="none">&nbsp;- Dersom man vil bruke sinus-funksjonen innenfor matematikk, krever denne en parameter (f.eks&nbsp;<em>pi</em> eller 0) for å kunne gi et svar. <em>(Pi eller 0 vil da være den konkrete verdien sinus-funksjonen benytter i beregningen(e))</em>
<br clear="none">&nbsp;</p>
<p>
<strong>Returverdi<br clear="none">
</strong>Når en funksjon er utført kan den returnere en verdi, som ofte forteller noe om utførelsen av funksjonen.<br clear="none">&nbsp;- Dersom man vil bruke sinus-funksjonen innenfor matematikk, vil svaret man får etter å ha gitt funksjonen et argument kalles&nbsp;<em>returverdien&nbsp;</em>til funksjonen.<br clear="none">
<br clear="none">
<em>Merk! I objektorientert-programmering kan metodene også returnere objektreferanser</em>
<br clear="none">
<br clear="none">
</p>
<p>
<strong>Deklarasjon<br clear="none">
</strong>Funksjoner kan deklareres på forskjellige måter, og varierer fra språk til språk.&nbsp;</p>
<div class="table-wrap">
<table class="confluenceTable">
<tbody>
<tr>
<td class="confluenceTd" colspan="1" rowspan="1">
<div class="code panel pdl conf-macro output-block" data-hasbody="true" data-macro-name="code" style="border-width: 1px;">
<div class="codeHeader panelHeader pdl" style="border-bottom-width: 1px;">
<b>Funksjonsdeklarasjon i python</b>
</div>
<div class="codeContent panelContent pdl">
<pre class="syntaxhighlighter-pre" data-syntaxhighlighter-params="brush: python; gutter: true; theme: Confluence" data-theme="Confluence">## Funksjon som undersøker om en gitt verdi er mindre enn tjue

def isLessThanTwenty(num):
	
	if (num &lt; 20):
		return true 
		## Return definerer at funksjonen er ferdig
		## Gjenværende&nbsp;kode blir ikke utført
&nbsp;
	return false</pre>
</div>
</div>
<p>I python er det verdt å merke seg at vi hverken deklarerer hva slags returtype funksjonen har, eller datatype for parameterne.</p>
</td>
<td class="confluenceTd" colspan="1" rowspan="1">
<div class="code panel pdl conf-macro output-block" data-hasbody="true" data-macro-name="code" style="border-width: 1px;">
<div class="codeHeader panelHeader pdl" style="border-bottom-width: 1px;">
<b>Funksjonsdeklarasjon i java</b>
</div>
<div class="codeContent panelContent pdl">
<pre class="syntaxhighlighter-pre" data-syntaxhighlighter-params="brush: java; gutter: true; theme: Confluence" data-theme="Confluence">// Funksjon som undersøker om et gitt heltall er mindre enn tjue
&nbsp;
boolean isLessThanTwenty(int num) {
	
	if(num &lt; 20) {
		return true;
		// Return definerer at funksjonen er ferdig
		// Gjenværende kode blir derav ikke utført
	}
	
	return false;
}</pre>
</div>
</div>
<p>I java må vi deklarere både returtypen, som her er boolean, og datatype for parameterne.</p>
</td>
</tr>
</tbody>
</table>
</div>
<p>&nbsp;</p>
<p>I java har vi to måter å gjøre metodekall på med tanke på syntaks:<br clear="none">
<br clear="none">&nbsp;1.&nbsp;<span style="font-size: 10.0pt;line-height: 13.0pt;">&lt;klasse&gt;.&lt;navn&gt;(&lt;arg1&gt;, ..., &lt;argN&gt;);&nbsp;</span>
</p>
<p>&nbsp;2. &lt;objektreferanse&gt;.&lt;navn&gt;(&lt;arg1&gt;, ..., &lt;argN&gt;);&nbsp;</p>
<div class="code panel pdl conf-macro output-block" data-hasbody="true" data-macro-name="code" style="border-width: 1px;">
<div class="codeHeader panelHeader pdl" style="border-bottom-width: 1px;">
<b>Metodekall</b>
</div>
<div class="codeContent panelContent pdl">
<pre class="syntaxhighlighter-pre" data-syntaxhighlighter-params="brush: java; gutter: true; theme: Confluence" data-theme="Confluence">// 1
Math.sqrt(6.25);


String tekst = "heihei";
&nbsp;
// 2
tekst.length();</pre>
</div>
</div>
<p>
<span style="font-size: 10.0pt;line-height: 13.0pt;">Funksjoner som returnerer en verdi/objektreferanse kan brukes som et&nbsp;</span>
<span style="font-size: 10.0pt;line-height: 13.0pt;">uttrykk eller del av et uttrykk:</span>
</p>
<div class="code panel pdl conf-macro output-block" data-hasbody="true" data-macro-name="code" style="border-width: 1px;">
<div class="codeHeader panelHeader pdl" style="border-bottom-width: 1px;">
<b>Funksjon som del av uttrykk</b>
</div>
<div class="codeContent panelContent pdl">
<pre class="syntaxhighlighter-pre" data-syntaxhighlighter-params="brush: java; gutter: true; theme: Confluence" data-theme="Confluence">String navn = ”Hallvard Trætteberg”;
String fornavn = navn.substring(0, 8);
char initial = Character.toLowerCase(navn.charAt(0)); // initial settes lik "h"</pre>
</div>
</div>


</div></div></div></div>', 2, 15)
GO
INSERT [dbo].[Topics] ([Name], [Description], [CourseId], [TopicId]) VALUES (N'Variables and Operations', NULL, 3, 16)
GO
INSERT [dbo].[Topics] ([Name], [Description], [CourseId], [TopicId]) VALUES (N'Strings', NULL, 3, 17)
GO
INSERT [dbo].[Topics] ([Name], [Description], [CourseId], [TopicId]) VALUES (N'Polymorphism', N'<div class="mui-col-md-6 tutorial-content">
<h1>Java - Polymorphism</h1>


<br>

<div class="clearer"></div>
<p>Polymorphism is the ability of an object to take on many forms. The most common use of polymorphism in OOP occurs when a parent class reference is used to refer to a child class object.</p>
<p>Any Java object that can pass more than one IS-A test is considered to be polymorphic. In Java, all Java objects are polymorphic since any object will pass the IS-A test for their own type and for the class Object.</p>
<p>It is important to know that the only possible way to access an object is through a reference variable. A reference variable can be of only one type. Once declared, the type of a reference variable cannot be changed.</p>
<p>The reference variable can be reassigned to other objects provided that it is not declared final. The type of the reference variable would determine the methods that it can invoke on the object.</p>
<p>A reference variable can refer to any object of its declared type or any subtype of its declared type. A reference variable can be declared as a class or interface type.</p>
<h3>Example</h3>
<p>Let us look at an example.</p>
<pre class="prettyprint notranslate prettyprinted" style=""><span class="kwd">public</span><span class="pln"> </span><span class="kwd">interface</span><span class="pln"> </span><span class="typ">Vegetarian</span><span class="pun">{}</span><span class="pln">
</span><span class="kwd">public</span><span class="pln"> </span><span class="kwd">class</span><span class="pln"> </span><span class="typ">Animal</span><span class="pun">{}</span><span class="pln">
</span><span class="kwd">public</span><span class="pln"> </span><span class="kwd">class</span><span class="pln"> </span><span class="typ">Deer</span><span class="pln"> </span><span class="kwd">extends</span><span class="pln"> </span><span class="typ">Animal</span><span class="pln"> </span><span class="kwd">implements</span><span class="pln"> </span><span class="typ">Vegetarian</span><span class="pun">{}</span></pre>
<p>Now, the Deer class is considered to be polymorphic since this has multiple inheritance. Following are true for the above examples −</p>
<ul class="list">
<li>A Deer IS-A Animal</li>
<li>A Deer IS-A Vegetarian</li>
<li>A Deer IS-A Deer</li>
<li>A Deer IS-A Object</li>
</ul>
<p>When we apply the reference variable facts to a Deer object reference, the following declarations are legal −</p>
<h3>Example</h3>
<pre class="prettyprint notranslate prettyprinted" style=""><span class="typ">Deer</span><span class="pln"> d </span><span class="pun">=</span><span class="pln"> </span><span class="kwd">new</span><span class="pln"> </span><span class="typ">Deer</span><span class="pun">();</span><span class="pln">
</span><span class="typ">Animal</span><span class="pln"> a </span><span class="pun">=</span><span class="pln"> d</span><span class="pun">;</span><span class="pln">
</span><span class="typ">Vegetarian</span><span class="pln"> v </span><span class="pun">=</span><span class="pln"> d</span><span class="pun">;</span><span class="pln">
</span><span class="typ">Object</span><span class="pln"> o </span><span class="pun">=</span><span class="pln"> d</span><span class="pun">;</span></pre>
<p>All the reference variables d, a, v, o refer to the same Deer object in the heap.</p>
<h2>Virtual Methods</h2>
<p>In this section, I will show you how the behavior of overridden methods in Java allows you to take advantage of polymorphism when designing your classes.</p>
<p>We already have discussed method overriding, where a child class can override a method in its parent. An overridden method is essentially hidden in the parent class, and is not invoked unless the child class uses the super keyword within the overriding method.</p>
<h3>Example</h3>
<pre class="prettyprint notranslate prettyprinted" style=""><span class="com">/* File name : Employee.java */</span><span class="pln">
</span><span class="kwd">public</span><span class="pln"> </span><span class="kwd">class</span><span class="pln"> </span><span class="typ">Employee</span><span class="pln"> </span><span class="pun">{</span><span class="pln">
   </span><span class="kwd">private</span><span class="pln"> </span><span class="typ">String</span><span class="pln"> name</span><span class="pun">;</span><span class="pln">
   </span><span class="kwd">private</span><span class="pln"> </span><span class="typ">String</span><span class="pln"> address</span><span class="pun">;</span><span class="pln">
   </span><span class="kwd">private</span><span class="pln"> </span><span class="kwd">int</span><span class="pln"> number</span><span class="pun">;</span><span class="pln">

   </span><span class="kwd">public</span><span class="pln"> </span><span class="typ">Employee</span><span class="pun">(</span><span class="typ">String</span><span class="pln"> name</span><span class="pun">,</span><span class="pln"> </span><span class="typ">String</span><span class="pln"> address</span><span class="pun">,</span><span class="pln"> </span><span class="kwd">int</span><span class="pln"> number</span><span class="pun">)</span><span class="pln"> </span><span class="pun">{</span><span class="pln">
      </span><span class="typ">System</span><span class="pun">.</span><span class="kwd">out</span><span class="pun">.</span><span class="pln">println</span><span class="pun">(</span><span class="str">"Constructing an Employee"</span><span class="pun">);</span><span class="pln">
      </span><span class="kwd">this</span><span class="pun">.</span><span class="pln">name </span><span class="pun">=</span><span class="pln"> name</span><span class="pun">;</span><span class="pln">
      </span><span class="kwd">this</span><span class="pun">.</span><span class="pln">address </span><span class="pun">=</span><span class="pln"> address</span><span class="pun">;</span><span class="pln">
      </span><span class="kwd">this</span><span class="pun">.</span><span class="pln">number </span><span class="pun">=</span><span class="pln"> number</span><span class="pun">;</span><span class="pln">
   </span><span class="pun">}</span><span class="pln">

   </span><span class="kwd">public</span><span class="pln"> </span><span class="kwd">void</span><span class="pln"> mailCheck</span><span class="pun">()</span><span class="pln"> </span><span class="pun">{</span><span class="pln">
      </span><span class="typ">System</span><span class="pun">.</span><span class="kwd">out</span><span class="pun">.</span><span class="pln">println</span><span class="pun">(</span><span class="str">"Mailing a check to "</span><span class="pln"> </span><span class="pun">+</span><span class="pln"> </span><span class="kwd">this</span><span class="pun">.</span><span class="pln">name </span><span class="pun">+</span><span class="pln"> </span><span class="str">" "</span><span class="pln"> </span><span class="pun">+</span><span class="pln"> </span><span class="kwd">this</span><span class="pun">.</span><span class="pln">address</span><span class="pun">);</span><span class="pln">
   </span><span class="pun">}</span><span class="pln">

   </span><span class="kwd">public</span><span class="pln"> </span><span class="typ">String</span><span class="pln"> toString</span><span class="pun">()</span><span class="pln"> </span><span class="pun">{</span><span class="pln">
      </span><span class="kwd">return</span><span class="pln"> name </span><span class="pun">+</span><span class="pln"> </span><span class="str">" "</span><span class="pln"> </span><span class="pun">+</span><span class="pln"> address </span><span class="pun">+</span><span class="pln"> </span><span class="str">" "</span><span class="pln"> </span><span class="pun">+</span><span class="pln"> number</span><span class="pun">;</span><span class="pln">
   </span><span class="pun">}</span><span class="pln">

   </span><span class="kwd">public</span><span class="pln"> </span><span class="typ">String</span><span class="pln"> getName</span><span class="pun">()</span><span class="pln"> </span><span class="pun">{</span><span class="pln">
      </span><span class="kwd">return</span><span class="pln"> name</span><span class="pun">;</span><span class="pln">
   </span><span class="pun">}</span><span class="pln">

   </span><span class="kwd">public</span><span class="pln"> </span><span class="typ">String</span><span class="pln"> getAddress</span><span class="pun">()</span><span class="pln"> </span><span class="pun">{</span><span class="pln">
      </span><span class="kwd">return</span><span class="pln"> address</span><span class="pun">;</span><span class="pln">
   </span><span class="pun">}</span><span class="pln">

   </span><span class="kwd">public</span><span class="pln"> </span><span class="kwd">void</span><span class="pln"> setAddress</span><span class="pun">(</span><span class="typ">String</span><span class="pln"> newAddress</span><span class="pun">)</span><span class="pln"> </span><span class="pun">{</span><span class="pln">
      address </span><span class="pun">=</span><span class="pln"> newAddress</span><span class="pun">;</span><span class="pln">
   </span><span class="pun">}</span><span class="pln">

   </span><span class="kwd">public</span><span class="pln"> </span><span class="kwd">int</span><span class="pln"> getNumber</span><span class="pun">()</span><span class="pln"> </span><span class="pun">{</span><span class="pln">
      </span><span class="kwd">return</span><span class="pln"> number</span><span class="pun">;</span><span class="pln">
   </span><span class="pun">}</span><span class="pln">
</span><span class="pun">}</span></pre>
<p>Now suppose we extend Employee class as follows −</p>
<pre class="prettyprint notranslate prettyprinted" style=""><span class="com">/* File name : Salary.java */</span><span class="pln">
</span><span class="kwd">public</span><span class="pln"> </span><span class="kwd">class</span><span class="pln"> </span><span class="typ">Salary</span><span class="pln"> </span><span class="kwd">extends</span><span class="pln"> </span><span class="typ">Employee</span><span class="pln"> </span><span class="pun">{</span><span class="pln">
   </span><span class="kwd">private</span><span class="pln"> </span><span class="kwd">double</span><span class="pln"> salary</span><span class="pun">;</span><span class="pln"> </span><span class="com">// Annual salary</span><span class="pln">
   
   </span><span class="kwd">public</span><span class="pln"> </span><span class="typ">Salary</span><span class="pun">(</span><span class="typ">String</span><span class="pln"> name</span><span class="pun">,</span><span class="pln"> </span><span class="typ">String</span><span class="pln"> address</span><span class="pun">,</span><span class="pln"> </span><span class="kwd">int</span><span class="pln"> number</span><span class="pun">,</span><span class="pln"> </span><span class="kwd">double</span><span class="pln"> salary</span><span class="pun">)</span><span class="pln"> </span><span class="pun">{</span><span class="pln">
      </span><span class="kwd">super</span><span class="pun">(</span><span class="pln">name</span><span class="pun">,</span><span class="pln"> address</span><span class="pun">,</span><span class="pln"> number</span><span class="pun">);</span><span class="pln">
      setSalary</span><span class="pun">(</span><span class="pln">salary</span><span class="pun">);</span><span class="pln">
   </span><span class="pun">}</span><span class="pln">
   
   </span><span class="kwd">public</span><span class="pln"> </span><span class="kwd">void</span><span class="pln"> mailCheck</span><span class="pun">()</span><span class="pln"> </span><span class="pun">{</span><span class="pln">
      </span><span class="typ">System</span><span class="pun">.</span><span class="kwd">out</span><span class="pun">.</span><span class="pln">println</span><span class="pun">(</span><span class="str">"Within mailCheck of Salary class "</span><span class="pun">);</span><span class="pln">
      </span><span class="typ">System</span><span class="pun">.</span><span class="kwd">out</span><span class="pun">.</span><span class="pln">println</span><span class="pun">(</span><span class="str">"Mailing check to "</span><span class="pln"> </span><span class="pun">+</span><span class="pln"> getName</span><span class="pun">()</span><span class="pln">
      </span><span class="pun">+</span><span class="pln"> </span><span class="str">" with salary "</span><span class="pln"> </span><span class="pun">+</span><span class="pln"> salary</span><span class="pun">);</span><span class="pln">
   </span><span class="pun">}</span><span class="pln">
   
   </span><span class="kwd">public</span><span class="pln"> </span><span class="kwd">double</span><span class="pln"> getSalary</span><span class="pun">()</span><span class="pln"> </span><span class="pun">{</span><span class="pln">
      </span><span class="kwd">return</span><span class="pln"> salary</span><span class="pun">;</span><span class="pln">
   </span><span class="pun">}</span><span class="pln">
   
   </span><span class="kwd">public</span><span class="pln"> </span><span class="kwd">void</span><span class="pln"> setSalary</span><span class="pun">(</span><span class="kwd">double</span><span class="pln"> newSalary</span><span class="pun">)</span><span class="pln"> </span><span class="pun">{</span><span class="pln">
      </span><span class="kwd">if</span><span class="pun">(</span><span class="pln">newSalary </span><span class="pun">&gt;=</span><span class="pln"> </span><span class="lit">0.0</span><span class="pun">)</span><span class="pln"> </span><span class="pun">{</span><span class="pln">
         salary </span><span class="pun">=</span><span class="pln"> newSalary</span><span class="pun">;</span><span class="pln">
      </span><span class="pun">}</span><span class="pln">
   </span><span class="pun">}</span><span class="pln">
   
   </span><span class="kwd">public</span><span class="pln"> </span><span class="kwd">double</span><span class="pln"> computePay</span><span class="pun">()</span><span class="pln"> </span><span class="pun">{</span><span class="pln">
      </span><span class="typ">System</span><span class="pun">.</span><span class="kwd">out</span><span class="pun">.</span><span class="pln">println</span><span class="pun">(</span><span class="str">"Computing salary pay for "</span><span class="pln"> </span><span class="pun">+</span><span class="pln"> getName</span><span class="pun">());</span><span class="pln">
      </span><span class="kwd">return</span><span class="pln"> salary</span><span class="pun">/</span><span class="lit">52</span><span class="pun">;</span><span class="pln">
   </span><span class="pun">}</span><span class="pln">
</span><span class="pun">}</span></pre>
<p>Now, you study the following program carefully and try to determine its output −</p>
<pre class="prettyprint notranslate prettyprinted" style=""><span class="com">/* File name : VirtualDemo.java */</span><span class="pln">
</span><span class="kwd">public</span><span class="pln"> </span><span class="kwd">class</span><span class="pln"> </span><span class="typ">VirtualDemo</span><span class="pln"> </span><span class="pun">{</span><span class="pln">

   </span><span class="kwd">public</span><span class="pln"> </span><span class="kwd">static</span><span class="pln"> </span><span class="kwd">void</span><span class="pln"> main</span><span class="pun">(</span><span class="typ">String</span><span class="pln"> </span><span class="pun">[]</span><span class="pln"> args</span><span class="pun">)</span><span class="pln"> </span><span class="pun">{</span><span class="pln">
      </span><span class="typ">Salary</span><span class="pln"> s </span><span class="pun">=</span><span class="pln"> </span><span class="kwd">new</span><span class="pln"> </span><span class="typ">Salary</span><span class="pun">(</span><span class="str">"Mohd Mohtashim"</span><span class="pun">,</span><span class="pln"> </span><span class="str">"Ambehta, UP"</span><span class="pun">,</span><span class="pln"> </span><span class="lit">3</span><span class="pun">,</span><span class="pln"> </span><span class="lit">3600.00</span><span class="pun">);</span><span class="pln">
      </span><span class="typ">Employee</span><span class="pln"> e </span><span class="pun">=</span><span class="pln"> </span><span class="kwd">new</span><span class="pln"> </span><span class="typ">Salary</span><span class="pun">(</span><span class="str">"John Adams"</span><span class="pun">,</span><span class="pln"> </span><span class="str">"Boston, MA"</span><span class="pun">,</span><span class="pln"> </span><span class="lit">2</span><span class="pun">,</span><span class="pln"> </span><span class="lit">2400.00</span><span class="pun">);</span><span class="pln">
      </span><span class="typ">System</span><span class="pun">.</span><span class="kwd">out</span><span class="pun">.</span><span class="pln">println</span><span class="pun">(</span><span class="str">"Call mailCheck using Salary reference --"</span><span class="pun">);</span><span class="pln">   
      s</span><span class="pun">.</span><span class="pln">mailCheck</span><span class="pun">();</span><span class="pln">
      </span><span class="typ">System</span><span class="pun">.</span><span class="kwd">out</span><span class="pun">.</span><span class="pln">println</span><span class="pun">(</span><span class="str">"\n Call mailCheck using Employee reference--"</span><span class="pun">);</span><span class="pln">
      e</span><span class="pun">.</span><span class="pln">mailCheck</span><span class="pun">();</span><span class="pln">
   </span><span class="pun">}</span><span class="pln">
</span><span class="pun">}</span></pre>
<p>This will produce the following result −</p>
<h3>Output</h3>
<pre class="result notranslate">Constructing an Employee
Constructing an Employee

Call mailCheck using Salary reference --
Within mailCheck of Salary class
Mailing check to Mohd Mohtashim with salary 3600.0

Call mailCheck using Employee reference--
Within mailCheck of Salary class
Mailing check to John Adams with salary 2400.0
</pre>
<p>Here, we instantiate two Salary objects. One using a Salary reference <b>s</b>, and the other using an Employee reference <b>e</b>.</p>
<p>While invoking <i>s.mailCheck()</i>, the compiler sees mailCheck() in the Salary class at compile time, and the JVM invokes mailCheck() in the Salary class at run time.</p>
<p>mailCheck() on <b>e</b> is quite different because <b>e</b> is an Employee reference. When the compiler sees <i>e.mailCheck()</i>, the compiler sees the mailCheck() method in the Employee class.</p>
<p>Here, at compile time, the compiler used mailCheck() in Employee to validate this statement. At run time, however, the JVM invokes mailCheck() in the Salary class.</p>
<p>This behavior is referred to as virtual method invocation, and these methods are referred to as virtual methods. An overridden method is invoked at run time, no matter what data type the reference is that was used in the source code at compile time.</p>



</div>', 2, 18)
GO
INSERT [dbo].[Topics] ([Name], [Description], [CourseId], [TopicId]) VALUES (N'Abstraction', N'<div class="mui-col-md-6 tutorial-content">
<h1>Java - Abstraction</h1>


<br>

<div class="clearer"></div>
<p>As per dictionary, <b>abstraction</b> is the quality of dealing with ideas rather than events. For example, when you consider the case of e-mail, complex details such as what happens as soon as you send an e-mail, the protocol your e-mail server uses are hidden from the user. Therefore, to send an e-mail you just need to type the content, mention the address of the receiver, and click send.</p>
<p>Likewise in Object-oriented programming, abstraction is a process of hiding the implementation details from the user, only the functionality will be provided to the user. In other words, the user will have the information on what the object does instead of how it does it.</p>
<p>In Java, abstraction is achieved using Abstract classes and interfaces.</p>
<h2>Abstract Class </h2>
<p>A class which contains the <b>abstract</b> keyword in its declaration is known as abstract class.</p>
<ul class="list">
<li><p>Abstract classes may or may not contain <i>abstract methods</i>, i.e., methods without body ( public void get(); )</p></li>
<li><p>But, if a class has at least one abstract method, then the class <b>must</b> be declared abstract.</p></li>
<li><p>If a class is declared abstract, it cannot be instantiated.</p></li>
<li><p>To use an abstract class, you have to inherit it from another class, provide implementations to the abstract methods in it.</p></li>
<li><p>If you inherit an abstract class, you have to provide implementations to all the abstract methods in it.</p></li>
</ul>
<h3>Example</h3>
<p>This section provides you an example of the abstract class. To create an abstract class, just use the <b>abstract</b> keyword before the class keyword, in the class declaration.</p>
<pre class="prettyprint notranslate prettyprinted" style=""><span class="com">/* File name : Employee.java */</span><span class="pln">
</span><span class="kwd">public</span><span class="pln"> </span><span class="kwd">abstract</span><span class="pln"> </span><span class="kwd">class</span><span class="pln"> </span><span class="typ">Employee</span><span class="pln"> </span><span class="pun">{</span><span class="pln">
   </span><span class="kwd">private</span><span class="pln"> </span><span class="typ">String</span><span class="pln"> name</span><span class="pun">;</span><span class="pln">
   </span><span class="kwd">private</span><span class="pln"> </span><span class="typ">String</span><span class="pln"> address</span><span class="pun">;</span><span class="pln">
   </span><span class="kwd">private</span><span class="pln"> </span><span class="kwd">int</span><span class="pln"> number</span><span class="pun">;</span><span class="pln">

   </span><span class="kwd">public</span><span class="pln"> </span><span class="typ">Employee</span><span class="pun">(</span><span class="typ">String</span><span class="pln"> name</span><span class="pun">,</span><span class="pln"> </span><span class="typ">String</span><span class="pln"> address</span><span class="pun">,</span><span class="pln"> </span><span class="kwd">int</span><span class="pln"> number</span><span class="pun">)</span><span class="pln"> </span><span class="pun">{</span><span class="pln">
      </span><span class="typ">System</span><span class="pun">.</span><span class="kwd">out</span><span class="pun">.</span><span class="pln">println</span><span class="pun">(</span><span class="str">"Constructing an Employee"</span><span class="pun">);</span><span class="pln">
      </span><span class="kwd">this</span><span class="pun">.</span><span class="pln">name </span><span class="pun">=</span><span class="pln"> name</span><span class="pun">;</span><span class="pln">
      </span><span class="kwd">this</span><span class="pun">.</span><span class="pln">address </span><span class="pun">=</span><span class="pln"> address</span><span class="pun">;</span><span class="pln">
      </span><span class="kwd">this</span><span class="pun">.</span><span class="pln">number </span><span class="pun">=</span><span class="pln"> number</span><span class="pun">;</span><span class="pln">
   </span><span class="pun">}</span><span class="pln">
   
   </span><span class="kwd">public</span><span class="pln"> </span><span class="kwd">double</span><span class="pln"> computePay</span><span class="pun">()</span><span class="pln"> </span><span class="pun">{</span><span class="pln">
     </span><span class="typ">System</span><span class="pun">.</span><span class="kwd">out</span><span class="pun">.</span><span class="pln">println</span><span class="pun">(</span><span class="str">"Inside Employee computePay"</span><span class="pun">);</span><span class="pln">
     </span><span class="kwd">return</span><span class="pln"> </span><span class="lit">0.0</span><span class="pun">;</span><span class="pln">
   </span><span class="pun">}</span><span class="pln">
   
   </span><span class="kwd">public</span><span class="pln"> </span><span class="kwd">void</span><span class="pln"> mailCheck</span><span class="pun">()</span><span class="pln"> </span><span class="pun">{</span><span class="pln">
      </span><span class="typ">System</span><span class="pun">.</span><span class="kwd">out</span><span class="pun">.</span><span class="pln">println</span><span class="pun">(</span><span class="str">"Mailing a check to "</span><span class="pln"> </span><span class="pun">+</span><span class="pln"> </span><span class="kwd">this</span><span class="pun">.</span><span class="pln">name </span><span class="pun">+</span><span class="pln"> </span><span class="str">" "</span><span class="pln"> </span><span class="pun">+</span><span class="pln"> </span><span class="kwd">this</span><span class="pun">.</span><span class="pln">address</span><span class="pun">);</span><span class="pln">
   </span><span class="pun">}</span><span class="pln">

   </span><span class="kwd">public</span><span class="pln"> </span><span class="typ">String</span><span class="pln"> toString</span><span class="pun">()</span><span class="pln"> </span><span class="pun">{</span><span class="pln">
      </span><span class="kwd">return</span><span class="pln"> name </span><span class="pun">+</span><span class="pln"> </span><span class="str">" "</span><span class="pln"> </span><span class="pun">+</span><span class="pln"> address </span><span class="pun">+</span><span class="pln"> </span><span class="str">" "</span><span class="pln"> </span><span class="pun">+</span><span class="pln"> number</span><span class="pun">;</span><span class="pln">
   </span><span class="pun">}</span><span class="pln">

   </span><span class="kwd">public</span><span class="pln"> </span><span class="typ">String</span><span class="pln"> getName</span><span class="pun">()</span><span class="pln"> </span><span class="pun">{</span><span class="pln">
      </span><span class="kwd">return</span><span class="pln"> name</span><span class="pun">;</span><span class="pln">
   </span><span class="pun">}</span><span class="pln">
 
   </span><span class="kwd">public</span><span class="pln"> </span><span class="typ">String</span><span class="pln"> getAddress</span><span class="pun">()</span><span class="pln"> </span><span class="pun">{</span><span class="pln">
      </span><span class="kwd">return</span><span class="pln"> address</span><span class="pun">;</span><span class="pln">
   </span><span class="pun">}</span><span class="pln">
   
   </span><span class="kwd">public</span><span class="pln"> </span><span class="kwd">void</span><span class="pln"> setAddress</span><span class="pun">(</span><span class="typ">String</span><span class="pln"> newAddress</span><span class="pun">)</span><span class="pln"> </span><span class="pun">{</span><span class="pln">
      address </span><span class="pun">=</span><span class="pln"> newAddress</span><span class="pun">;</span><span class="pln">
   </span><span class="pun">}</span><span class="pln">
 
   </span><span class="kwd">public</span><span class="pln"> </span><span class="kwd">int</span><span class="pln"> getNumber</span><span class="pun">()</span><span class="pln"> </span><span class="pun">{</span><span class="pln">
      </span><span class="kwd">return</span><span class="pln"> number</span><span class="pun">;</span><span class="pln">
   </span><span class="pun">}</span><span class="pln">
</span><span class="pun">}</span></pre>
<p>You can observe that except abstract methods the Employee class is same as normal class in Java. The class is now abstract, but it still has three fields, seven methods, and one constructor.</p>
<p>Now you can try to instantiate the Employee class in the following way −</p>
<pre class="prettyprint notranslate prettyprinted" style=""><span class="com">/* File name : AbstractDemo.java */</span><span class="pln">
</span><span class="kwd">public</span><span class="pln"> </span><span class="kwd">class</span><span class="pln"> </span><span class="typ">AbstractDemo</span><span class="pln"> </span><span class="pun">{</span><span class="pln">

   </span><span class="kwd">public</span><span class="pln"> </span><span class="kwd">static</span><span class="pln"> </span><span class="kwd">void</span><span class="pln"> main</span><span class="pun">(</span><span class="typ">String</span><span class="pln"> </span><span class="pun">[]</span><span class="pln"> args</span><span class="pun">)</span><span class="pln"> </span><span class="pun">{</span><span class="pln">
      </span><span class="com">/* Following is not allowed and would raise error */</span><span class="pln">
      </span><span class="typ">Employee</span><span class="pln"> e </span><span class="pun">=</span><span class="pln"> </span><span class="kwd">new</span><span class="pln"> </span><span class="typ">Employee</span><span class="pun">(</span><span class="str">"George W."</span><span class="pun">,</span><span class="pln"> </span><span class="str">"Houston, TX"</span><span class="pun">,</span><span class="pln"> </span><span class="lit">43</span><span class="pun">);</span><span class="pln">
      </span><span class="typ">System</span><span class="pun">.</span><span class="kwd">out</span><span class="pun">.</span><span class="pln">println</span><span class="pun">(</span><span class="str">"\n Call mailCheck using Employee reference--"</span><span class="pun">);</span><span class="pln">
      e</span><span class="pun">.</span><span class="pln">mailCheck</span><span class="pun">();</span><span class="pln">
   </span><span class="pun">}</span><span class="pln">
</span><span class="pun">}</span></pre>
<p>When you compile the above class, it gives you the following error −</p>
<pre class="result notranslate">Employee.java:46: Employee is abstract; cannot be instantiated
      Employee e = new Employee("George W.", "Houston, TX", 43);
                   ^
1 error
</pre>
<h2>Inheriting the Abstract Class</h2>
<p>We can inherit the properties of Employee class just like concrete class in the following way −</p>
<h3>Example</h3>
<pre class="prettyprint notranslate prettyprinted" style=""><span class="com">/* File name : Salary.java */</span><span class="pln">
</span><span class="kwd">public</span><span class="pln"> </span><span class="kwd">class</span><span class="pln"> </span><span class="typ">Salary</span><span class="pln"> </span><span class="kwd">extends</span><span class="pln"> </span><span class="typ">Employee</span><span class="pln"> </span><span class="pun">{</span><span class="pln">
   </span><span class="kwd">private</span><span class="pln"> </span><span class="kwd">double</span><span class="pln"> salary</span><span class="pun">;</span><span class="pln">   </span><span class="com">// Annual salary</span><span class="pln">
   
   </span><span class="kwd">public</span><span class="pln"> </span><span class="typ">Salary</span><span class="pun">(</span><span class="typ">String</span><span class="pln"> name</span><span class="pun">,</span><span class="pln"> </span><span class="typ">String</span><span class="pln"> address</span><span class="pun">,</span><span class="pln"> </span><span class="kwd">int</span><span class="pln"> number</span><span class="pun">,</span><span class="pln"> </span><span class="kwd">double</span><span class="pln"> salary</span><span class="pun">)</span><span class="pln"> </span><span class="pun">{</span><span class="pln">
      </span><span class="kwd">super</span><span class="pun">(</span><span class="pln">name</span><span class="pun">,</span><span class="pln"> address</span><span class="pun">,</span><span class="pln"> number</span><span class="pun">);</span><span class="pln">
      setSalary</span><span class="pun">(</span><span class="pln">salary</span><span class="pun">);</span><span class="pln">
   </span><span class="pun">}</span><span class="pln">
   
   </span><span class="kwd">public</span><span class="pln"> </span><span class="kwd">void</span><span class="pln"> mailCheck</span><span class="pun">()</span><span class="pln"> </span><span class="pun">{</span><span class="pln">
      </span><span class="typ">System</span><span class="pun">.</span><span class="kwd">out</span><span class="pun">.</span><span class="pln">println</span><span class="pun">(</span><span class="str">"Within mailCheck of Salary class "</span><span class="pun">);</span><span class="pln">
      </span><span class="typ">System</span><span class="pun">.</span><span class="kwd">out</span><span class="pun">.</span><span class="pln">println</span><span class="pun">(</span><span class="str">"Mailing check to "</span><span class="pln"> </span><span class="pun">+</span><span class="pln"> getName</span><span class="pun">()</span><span class="pln"> </span><span class="pun">+</span><span class="pln"> </span><span class="str">" with salary "</span><span class="pln"> </span><span class="pun">+</span><span class="pln"> salary</span><span class="pun">);</span><span class="pln">
   </span><span class="pun">}</span><span class="pln">
 
   </span><span class="kwd">public</span><span class="pln"> </span><span class="kwd">double</span><span class="pln"> getSalary</span><span class="pun">()</span><span class="pln"> </span><span class="pun">{</span><span class="pln">
      </span><span class="kwd">return</span><span class="pln"> salary</span><span class="pun">;</span><span class="pln">
   </span><span class="pun">}</span><span class="pln">
   
   </span><span class="kwd">public</span><span class="pln"> </span><span class="kwd">void</span><span class="pln"> setSalary</span><span class="pun">(</span><span class="kwd">double</span><span class="pln"> newSalary</span><span class="pun">)</span><span class="pln"> </span><span class="pun">{</span><span class="pln">
      </span><span class="kwd">if</span><span class="pun">(</span><span class="pln">newSalary </span><span class="pun">&gt;=</span><span class="pln"> </span><span class="lit">0.0</span><span class="pun">)</span><span class="pln"> </span><span class="pun">{</span><span class="pln">
         salary </span><span class="pun">=</span><span class="pln"> newSalary</span><span class="pun">;</span><span class="pln">
      </span><span class="pun">}</span><span class="pln">
   </span><span class="pun">}</span><span class="pln">
   
   </span><span class="kwd">public</span><span class="pln"> </span><span class="kwd">double</span><span class="pln"> computePay</span><span class="pun">()</span><span class="pln"> </span><span class="pun">{</span><span class="pln">
      </span><span class="typ">System</span><span class="pun">.</span><span class="kwd">out</span><span class="pun">.</span><span class="pln">println</span><span class="pun">(</span><span class="str">"Computing salary pay for "</span><span class="pln"> </span><span class="pun">+</span><span class="pln"> getName</span><span class="pun">());</span><span class="pln">
      </span><span class="kwd">return</span><span class="pln"> salary</span><span class="pun">/</span><span class="lit">52</span><span class="pun">;</span><span class="pln">
   </span><span class="pun">}</span><span class="pln">
</span><span class="pun">}</span></pre>
<p>Here, you cannot instantiate the Employee class, but you can instantiate the Salary Class, and using this instance you can access all the three fields and seven methods of Employee class as shown below.</p>
<pre class="prettyprint notranslate prettyprinted" style=""><span class="com">/* File name : AbstractDemo.java */</span><span class="pln">
</span><span class="kwd">public</span><span class="pln"> </span><span class="kwd">class</span><span class="pln"> </span><span class="typ">AbstractDemo</span><span class="pln"> </span><span class="pun">{</span><span class="pln">

   </span><span class="kwd">public</span><span class="pln"> </span><span class="kwd">static</span><span class="pln"> </span><span class="kwd">void</span><span class="pln"> main</span><span class="pun">(</span><span class="typ">String</span><span class="pln"> </span><span class="pun">[]</span><span class="pln"> args</span><span class="pun">)</span><span class="pln"> </span><span class="pun">{</span><span class="pln">
      </span><span class="typ">Salary</span><span class="pln"> s </span><span class="pun">=</span><span class="pln"> </span><span class="kwd">new</span><span class="pln"> </span><span class="typ">Salary</span><span class="pun">(</span><span class="str">"Mohd Mohtashim"</span><span class="pun">,</span><span class="pln"> </span><span class="str">"Ambehta, UP"</span><span class="pun">,</span><span class="pln"> </span><span class="lit">3</span><span class="pun">,</span><span class="pln"> </span><span class="lit">3600.00</span><span class="pun">);</span><span class="pln">
      </span><span class="typ">Employee</span><span class="pln"> e </span><span class="pun">=</span><span class="pln"> </span><span class="kwd">new</span><span class="pln"> </span><span class="typ">Salary</span><span class="pun">(</span><span class="str">"John Adams"</span><span class="pun">,</span><span class="pln"> </span><span class="str">"Boston, MA"</span><span class="pun">,</span><span class="pln"> </span><span class="lit">2</span><span class="pun">,</span><span class="pln"> </span><span class="lit">2400.00</span><span class="pun">);</span><span class="pln">
      </span><span class="typ">System</span><span class="pun">.</span><span class="kwd">out</span><span class="pun">.</span><span class="pln">println</span><span class="pun">(</span><span class="str">"Call mailCheck using Salary reference --"</span><span class="pun">);</span><span class="pln">
      s</span><span class="pun">.</span><span class="pln">mailCheck</span><span class="pun">();</span><span class="pln">
      </span><span class="typ">System</span><span class="pun">.</span><span class="kwd">out</span><span class="pun">.</span><span class="pln">println</span><span class="pun">(</span><span class="str">"\n Call mailCheck using Employee reference--"</span><span class="pun">);</span><span class="pln">
      e</span><span class="pun">.</span><span class="pln">mailCheck</span><span class="pun">();</span><span class="pln">
   </span><span class="pun">}</span><span class="pln">
</span><span class="pun">}</span></pre>
<p>This produces the following result −</p>
<h3>Output</h3>
<pre class="result notranslate">Constructing an Employee
Constructing an Employee
Call mailCheck using Salary reference --
Within mailCheck of Salary class 
Mailing check to Mohd Mohtashim with salary 3600.0

 Call mailCheck using Employee reference--
Within mailCheck of Salary class 
Mailing check to John Adams with salary 2400.0
</pre>
<h2>Abstract Methods</h2>
<p>If you want a class to contain a particular method but you want the actual implementation of that method to be determined by child classes, you can declare the method in the parent class as an abstract.</p>
<ul class="list">
<li><p><b>abstract</b> keyword is used to declare the method as abstract.</p></li>
<li><p>You have to place the <b>abstract</b> keyword before the method name in the method declaration.</p></li>
<li><p>An abstract method contains a method signature, but no method body.</p></li>
<li><p>Instead of curly braces, an abstract method will have a semoi colon (;) at the end.</p></li>
</ul>
<p>Following is an example of the abstract method.</p>
<h3>Example</h3>
<pre class="prettyprint notranslate prettyprinted" style=""><span class="kwd">public</span><span class="pln"> </span><span class="kwd">abstract</span><span class="pln"> </span><span class="kwd">class</span><span class="pln"> </span><span class="typ">Employee</span><span class="pln"> </span><span class="pun">{</span><span class="pln">
   </span><span class="kwd">private</span><span class="pln"> </span><span class="typ">String</span><span class="pln"> name</span><span class="pun">;</span><span class="pln">
   </span><span class="kwd">private</span><span class="pln"> </span><span class="typ">String</span><span class="pln"> address</span><span class="pun">;</span><span class="pln">
   </span><span class="kwd">private</span><span class="pln"> </span><span class="kwd">int</span><span class="pln"> number</span><span class="pun">;</span><span class="pln">
   
   </span><span class="kwd">public</span><span class="pln"> </span><span class="kwd">abstract</span><span class="pln"> </span><span class="kwd">double</span><span class="pln"> computePay</span><span class="pun">();</span><span class="pln">
   </span><span class="com">// Remainder of class definition</span><span class="pln">
</span><span class="pun">}</span></pre>
<p>Declaring a method as abstract has two consequences −</p>
<ul class="list">
<li><p>The class containing it must be declared as abstract.</p></li>
<li><p>Any class inheriting the current class must either override the abstract method or declare itself as abstract.</p></li>
</ul>
<p><b>Note</b> − Eventually, a descendant class has to implement the abstract method; otherwise, you would have a hierarchy of abstract classes that cannot be instantiated.</p>
<p>Suppose Salary class inherits the Employee class, then it should implement the <b>computePay()</b> method as shown below −</p>
<pre class="prettyprint notranslate prettyprinted" style=""><span class="com">/* File name : Salary.java */</span><span class="pln">
</span><span class="kwd">public</span><span class="pln"> </span><span class="kwd">class</span><span class="pln"> </span><span class="typ">Salary</span><span class="pln"> </span><span class="kwd">extends</span><span class="pln"> </span><span class="typ">Employee</span><span class="pln"> </span><span class="pun">{</span><span class="pln">
   </span><span class="kwd">private</span><span class="pln"> </span><span class="kwd">double</span><span class="pln"> salary</span><span class="pun">;</span><span class="pln">   </span><span class="com">// Annual salary</span><span class="pln">
  
   </span><span class="kwd">public</span><span class="pln"> </span><span class="kwd">double</span><span class="pln"> computePay</span><span class="pun">()</span><span class="pln"> </span><span class="pun">{</span><span class="pln">
      </span><span class="typ">System</span><span class="pun">.</span><span class="kwd">out</span><span class="pun">.</span><span class="pln">println</span><span class="pun">(</span><span class="str">"Computing salary pay for "</span><span class="pln"> </span><span class="pun">+</span><span class="pln"> getName</span><span class="pun">());</span><span class="pln">
      </span><span class="kwd">return</span><span class="pln"> salary</span><span class="pun">/</span><span class="lit">52</span><span class="pun">;</span><span class="pln">
   </span><span class="pun">}</span><span class="pln">
   </span><span class="com">// Remainder of class definition</span><span class="pln">
</span><span class="pun">}</span></pre>

<div class="space-bottom" style="margin-bottom:20px;"></div>

</div>', 2, 19)
GO
INSERT [dbo].[Topics] ([Name], [Description], [CourseId], [TopicId]) VALUES (N'Lists', N'<div class="mui-col-md-6 tutorial-content">
<h1>Python - Lists</h1>




<div class="clearer"></div>
<p>The most basic data structure in Python is the <b>sequence</b>. Each element of a sequence is assigned a number - its position or index. The first index is zero, the second index is one, and so forth.</p>
<p>Python has six built-in types of sequences, but the most common ones are lists and tuples, which we would see in this tutorial.</p>
<p>There are certain things you can do with all sequence types. These operations include indexing, slicing, adding, multiplying, and checking for membership. In addition, Python has built-in functions for finding the length of a sequence and for finding its largest and smallest elements.</p>
<h2>Python Lists</h2>
<p>The list is a most versatile datatype available in Python which can be written as a list of comma-separated values (items) between square brackets. Important thing about a list is that items in a list need not be of the same type.</p>
<p>Creating a list is as simple as putting different comma-separated values between square brackets. For example −</p>
<pre class="result notranslate">list1 = [''physics'', ''chemistry'', 1997, 2000];
list2 = [1, 2, 3, 4, 5 ];
list3 = ["a", "b", "c", "d"]
</pre>
<p>Similar to string indices, list indices start at 0, and lists can be sliced, concatenated and so on.</p>
<h2>Accessing Values in Lists</h2>
<p>To access values in lists, use the square brackets for slicing along with the index or indices to obtain value available at that index. For example −</p>

<pre class="prettyprint notranslate prettyprinted" style=""><span class="com">#!/usr/bin/python</span><span class="pln">

list1 </span><span class="pun">=</span><span class="pln"> </span><span class="pun">[</span><span class="str">''physics''</span><span class="pun">,</span><span class="pln"> </span><span class="str">''chemistry''</span><span class="pun">,</span><span class="pln"> </span><span class="lit">1997</span><span class="pun">,</span><span class="pln"> </span><span class="lit">2000</span><span class="pun">];</span><span class="pln">
list2 </span><span class="pun">=</span><span class="pln"> </span><span class="pun">[</span><span class="lit">1</span><span class="pun">,</span><span class="pln"> </span><span class="lit">2</span><span class="pun">,</span><span class="pln"> </span><span class="lit">3</span><span class="pun">,</span><span class="pln"> </span><span class="lit">4</span><span class="pun">,</span><span class="pln"> </span><span class="lit">5</span><span class="pun">,</span><span class="pln"> </span><span class="lit">6</span><span class="pun">,</span><span class="pln"> </span><span class="lit">7</span><span class="pln"> </span><span class="pun">];</span><span class="pln">
</span><span class="kwd">print</span><span class="pln"> </span><span class="str">"list1[0]: "</span><span class="pun">,</span><span class="pln"> list1</span><span class="pun">[</span><span class="lit">0</span><span class="pun">]</span><span class="pln">
</span><span class="kwd">print</span><span class="pln"> </span><span class="str">"list2[1:5]: "</span><span class="pun">,</span><span class="pln"> list2</span><span class="pun">[</span><span class="lit">1</span><span class="pun">:</span><span class="lit">5</span><span class="pun">]</span></pre>
<p>When the above code is executed, it produces the following result −</p>
<pre class="result notranslate">list1[0]:  physics
list2[1:5]:  [2, 3, 4, 5]
</pre>
<h2>Updating Lists</h2>
<p>You can update single or multiple elements of lists by giving the slice on the left-hand side of the assignment operator, and you can add to elements in a list with the append() method. For example −</p>

<pre class="prettyprint notranslate prettyprinted" style=""><span class="com">#!/usr/bin/python</span><span class="pln">

list </span><span class="pun">=</span><span class="pln"> </span><span class="pun">[</span><span class="str">''physics''</span><span class="pun">,</span><span class="pln"> </span><span class="str">''chemistry''</span><span class="pun">,</span><span class="pln"> </span><span class="lit">1997</span><span class="pun">,</span><span class="pln"> </span><span class="lit">2000</span><span class="pun">];</span><span class="pln">
</span><span class="kwd">print</span><span class="pln"> </span><span class="str">"Value available at index 2 : "</span><span class="pln">
</span><span class="kwd">print</span><span class="pln"> list</span><span class="pun">[</span><span class="lit">2</span><span class="pun">]</span><span class="pln">
list</span><span class="pun">[</span><span class="lit">2</span><span class="pun">]</span><span class="pln"> </span><span class="pun">=</span><span class="pln"> </span><span class="lit">2001</span><span class="pun">;</span><span class="pln">
</span><span class="kwd">print</span><span class="pln"> </span><span class="str">"New value available at index 2 : "</span><span class="pln">
</span><span class="kwd">print</span><span class="pln"> list</span><span class="pun">[</span><span class="lit">2</span><span class="pun">]</span></pre>
<p><b>Note</b> − append() method is discussed in subsequent section.</p>
<p>When the above code is executed, it produces the following result −</p>
<pre class="result notranslate">Value available at index 2 :
1997
New value available at index 2 :
2001
</pre>
<h2>Delete List Elements</h2>
<p>To remove a list element, you can use either the del statement if you know exactly which element(s) you are deleting or the remove() method if you do not know. For example −</p>

<pre class="prettyprint notranslate prettyprinted" style=""><span class="com">#!/usr/bin/python</span><span class="pln">

list1 </span><span class="pun">=</span><span class="pln"> </span><span class="pun">[</span><span class="str">''physics''</span><span class="pun">,</span><span class="pln"> </span><span class="str">''chemistry''</span><span class="pun">,</span><span class="pln"> </span><span class="lit">1997</span><span class="pun">,</span><span class="pln"> </span><span class="lit">2000</span><span class="pun">];</span><span class="pln">
</span><span class="kwd">print</span><span class="pln"> list1
</span><span class="kwd">del</span><span class="pln"> list1</span><span class="pun">[</span><span class="lit">2</span><span class="pun">];</span><span class="pln">
</span><span class="kwd">print</span><span class="pln"> </span><span class="str">"After deleting value at index 2 : "</span><span class="pln">
</span><span class="kwd">print</span><span class="pln"> list1</span></pre>
<p>When the above code is executed, it produces following result −</p>
<pre class="result notranslate">[''physics'', ''chemistry'', 1997, 2000]
After deleting value at index 2 :
[''physics'', ''chemistry'', 2000]
</pre>
<p><b>Note</b> − remove() method is discussed in subsequent section.</p>

<p>Lists respond to the + and * operators much like strings; they mean concatenation and repetition here too, except that the result is a new list, not a string.</p>
<p>In fact, lists respond to all of the general sequence operations we used on strings in the prior chapter.</p>

<h2>Indexing, Slicing, and Matrixes</h2>
<p>Because lists are sequences, indexing and slicing work the same way for lists as they do for strings.</p>
<p>Assuming following input −</p>
<pre class="result notranslate">L = [''spam'', ''Spam'', ''SPAM!'']
</pre>
<p></p>
<table class="table table-bordered" style="text-align:center;">
<tbody><tr>
<th style="text-align:center;width:33%">Python Expression</th>
<th style="text-align:center;width:33%">Results</th>
<th style="text-align:center;width:33%">Description</th>
</tr>
<tr>
<td>L[2]</td>
<td>SPAM!</td>
<td>Offsets start at zero</td>
</tr>
<tr>
<td class="ts">L[-2]</td>
<td class="ts">Spam</td>
<td>Negative: count from the right</td>
</tr>
<tr>
<td>L[1:]</td>
<td>[''Spam'', ''SPAM!'']</td>
<td>Slicing fetches sections</td>
</tr>
</tbody></table>






<div class="space-bottom" style="margin-bottom:20px;"></div>

</div>', 3, 20)
GO
INSERT [dbo].[Topics] ([Name], [Description], [CourseId], [TopicId]) VALUES (N'Tuples', N'<div class="mui-col-md-6 tutorial-content">
<h1>Python - Tuples</h1>




<div class="clearer"></div>
<p>A tuple is a collection of objects which ordered and immutable. Tuples are sequences, just like lists. The differences between tuples and lists are, the tuples cannot be changed unlike lists and tuples use parentheses, whereas lists use square brackets.</p>
<p>Creating a tuple is as simple as putting different comma-separated values. Optionally you can put these comma-separated values between parentheses also. For example −</p>
<pre class="result notranslate">tup1 = (''physics'', ''chemistry'', 1997, 2000);
tup2 = (1, 2, 3, 4, 5 );
tup3 = "a", "b", "c", "d";
</pre>
<p>The empty tuple is written as two parentheses containing nothing −</p>
<pre class="result notranslate">tup1 = ();
</pre>
<p>To write a tuple containing a single value you have to include a comma, even though there is only one value −</p>
<pre class="result notranslate">tup1 = (50,);
</pre>
<p>Like string indices, tuple indices start at 0, and they can be sliced, concatenated, and so on.</p>
<h2>Accessing Values in Tuples</h2>
<p>To access values in tuple, use the square brackets for slicing along with the index or indices to obtain value available at that index. For example −</p>

<pre class="prettyprint notranslate prettyprinted" style=""><span class="com">#!/usr/bin/python</span><span class="pln">

tup1 </span><span class="pun">=</span><span class="pln"> </span><span class="pun">(</span><span class="str">''physics''</span><span class="pun">,</span><span class="pln"> </span><span class="str">''chemistry''</span><span class="pun">,</span><span class="pln"> </span><span class="lit">1997</span><span class="pun">,</span><span class="pln"> </span><span class="lit">2000</span><span class="pun">);</span><span class="pln">
tup2 </span><span class="pun">=</span><span class="pln"> </span><span class="pun">(</span><span class="lit">1</span><span class="pun">,</span><span class="pln"> </span><span class="lit">2</span><span class="pun">,</span><span class="pln"> </span><span class="lit">3</span><span class="pun">,</span><span class="pln"> </span><span class="lit">4</span><span class="pun">,</span><span class="pln"> </span><span class="lit">5</span><span class="pun">,</span><span class="pln"> </span><span class="lit">6</span><span class="pun">,</span><span class="pln"> </span><span class="lit">7</span><span class="pln"> </span><span class="pun">);</span><span class="pln">
</span><span class="kwd">print</span><span class="pln"> </span><span class="str">"tup1[0]: "</span><span class="pun">,</span><span class="pln"> tup1</span><span class="pun">[</span><span class="lit">0</span><span class="pun">];</span><span class="pln">
</span><span class="kwd">print</span><span class="pln"> </span><span class="str">"tup2[1:5]: "</span><span class="pun">,</span><span class="pln"> tup2</span><span class="pun">[</span><span class="lit">1</span><span class="pun">:</span><span class="lit">5</span><span class="pun">];</span></pre>
<p>When the above code is  executed, it produces the following result −</p>
<pre class="result notranslate">tup1[0]:  physics
tup2[1:5]:  [2, 3, 4, 5]
</pre>
<h2>Updating Tuples</h2>
<p>Tuples are immutable which means you cannot update or change the values of tuple elements. You are able to take portions of existing tuples to create new tuples as the following example demonstrates −</p>

<pre class="prettyprint notranslate prettyprinted" style=""><span class="com">#!/usr/bin/python</span><span class="pln">

tup1 </span><span class="pun">=</span><span class="pln"> </span><span class="pun">(</span><span class="lit">12</span><span class="pun">,</span><span class="pln"> </span><span class="lit">34.56</span><span class="pun">);</span><span class="pln">
tup2 </span><span class="pun">=</span><span class="pln"> </span><span class="pun">(</span><span class="str">''abc''</span><span class="pun">,</span><span class="pln"> </span><span class="str">''xyz''</span><span class="pun">);</span><span class="pln">

</span><span class="com"># Following action is not valid for tuples</span><span class="pln">
</span><span class="com"># tup1[0] = 100;</span><span class="pln">

</span><span class="com"># So let''s create a new tuple as follows</span><span class="pln">
tup3 </span><span class="pun">=</span><span class="pln"> tup1 </span><span class="pun">+</span><span class="pln"> tup2</span><span class="pun">;</span><span class="pln">
</span><span class="kwd">print</span><span class="pln"> tup3</span><span class="pun">;</span></pre>
<p>When the above code is executed, it produces the following result −</p>
<pre class="result notranslate">(12, 34.56, ''abc'', ''xyz'')
</pre>
<h2>Delete Tuple Elements</h2>
<p>Removing individual tuple elements is not possible. There is, of course, nothing wrong with putting together another tuple with the undesired elements discarded.</p>
<p>To explicitly remove an entire tuple, just use the <b>del</b> statement. For example −</p>

<pre class="prettyprint notranslate prettyprinted" style=""><span class="com">#!/usr/bin/python</span><span class="pln">

tup </span><span class="pun">=</span><span class="pln"> </span><span class="pun">(</span><span class="str">''physics''</span><span class="pun">,</span><span class="pln"> </span><span class="str">''chemistry''</span><span class="pun">,</span><span class="pln"> </span><span class="lit">1997</span><span class="pun">,</span><span class="pln"> </span><span class="lit">2000</span><span class="pun">);</span><span class="pln">
</span><span class="kwd">print</span><span class="pln"> tup</span><span class="pun">;</span><span class="pln">
</span><span class="kwd">del</span><span class="pln"> tup</span><span class="pun">;</span><span class="pln">
</span><span class="kwd">print</span><span class="pln"> </span><span class="str">"After deleting tup : "</span><span class="pun">;</span><span class="pln">
</span><span class="kwd">print</span><span class="pln"> tup</span><span class="pun">;</span></pre>
<p>This produces the following result. Note an exception raised, this is because after <b>del tup</b> tuple does not exist any more −</p>
<pre class="result notranslate">(''physics'', ''chemistry'', 1997, 2000)
After deleting tup :
Traceback (most recent call last):
   File "test.py", line 9, in &lt;module&gt;
      print tup;
NameError: name ''tup'' is not defined
</pre>
<h2>Basic Tuples Operations</h2>
<p>Tuples respond to the + and * operators much like strings; they mean concatenation and repetition here too, except that the result is a new tuple, not a string.</p>
<p>In fact, tuples respond to all of the general sequence operations we used on strings in the prior chapter −</p>
<table class="table table-bordered" style="text-align:center;">
<tbody><tr>
<th style="text-align:center;">Python Expression</th>
<th style="text-align:center;">Results</th>
<th style="text-align:center;">Description</th>
</tr>
<tr>
<td>len((1, 2, 3))</td>
<td>3</td>
<td>Length</td>
</tr>
<tr>
<td>(1, 2, 3) + (4, 5, 6)</td>
<td>(1, 2, 3, 4, 5, 6)</td>
<td>Concatenation</td>
</tr>
<tr>
<td>(''Hi!'',) * 4</td>
<td>(''Hi!'', ''Hi!'', ''Hi!'', ''Hi!'')</td>
<td>Repetition</td>
</tr>
<tr>
<td>3 in (1, 2, 3)</td>
<td>True</td>
<td>Membership</td>
</tr>
<tr>
<td>for x in (1, 2, 3): print x,</td>
<td>1 2 3</td>
<td>Iteration</td>
</tr>
</tbody></table>
<h2>Indexing, Slicing, and Matrixes</h2>
<p>Because tuples are sequences, indexing and slicing work the same way for tuples as they do for strings. Assuming following input −</p>
<pre class="prettyprint notranslate prettyprinted" style=""><span class="pln">L </span><span class="pun">=</span><span class="pln"> </span><span class="pun">(</span><span class="str">''spam''</span><span class="pun">,</span><span class="pln"> </span><span class="str">''Spam''</span><span class="pun">,</span><span class="pln"> </span><span class="str">''SPAM!''</span><span class="pun">)</span></pre>
<p>&nbsp;</p>
<table class="table table-bordered" style="text-align:center;">
<tbody><tr>
<th style="text-align:center;width:33%">Python Expression</th>
<th style="text-align:center;width:33%">Results</th>
<th style="text-align:center;width:33%">Description</th>
</tr>
<tr>
<td>L[2]</td>
<td>''SPAM!''</td>
<td>Offsets start at zero</td>
</tr>
<tr>
<td class="ts">L[-2]</td>
<td class="ts">''Spam''</td>
<td>Negative: count from the right</td>
</tr>
<tr>
<td>L[1:]</td>
<td>[''Spam'', ''SPAM!'']</td>
<td>Slicing fetches sections</td>
</tr>
</tbody></table>
<h2>No Enclosing Delimiters</h2>
<p>Any set of multiple objects, comma-separated, written without identifying symbols, i.e., brackets for lists, parentheses for tuples, etc., default to tuples, as indicated in these short examples −</p>

<pre class="prettyprint notranslate prettyprinted" style=""><span class="com">#!/usr/bin/python</span><span class="pln">

</span><span class="kwd">print</span><span class="pln"> </span><span class="str">''abc''</span><span class="pun">,</span><span class="pln"> </span><span class="pun">-</span><span class="lit">4.24e93</span><span class="pun">,</span><span class="pln"> </span><span class="lit">18</span><span class="pun">+</span><span class="lit">6.6j</span><span class="pun">,</span><span class="pln"> </span><span class="str">''xyz''</span><span class="pun">;</span><span class="pln">
x</span><span class="pun">,</span><span class="pln"> y </span><span class="pun">=</span><span class="pln"> </span><span class="lit">1</span><span class="pun">,</span><span class="pln"> </span><span class="lit">2</span><span class="pun">;</span><span class="pln">
</span><span class="kwd">print</span><span class="pln"> </span><span class="str">"Value of x , y : "</span><span class="pun">,</span><span class="pln"> x</span><span class="pun">,</span><span class="pln">y</span><span class="pun">;</span></pre>
<p>When the above code is executed, it produces the following result −</p>
<pre class="result notranslate">abc -4.24e+93 (18+6.6j) xyz
Value of x , y : 1 2
</pre>





</div>', 3, 21)
GO
SET IDENTITY_INSERT [dbo].[Topics] OFF
GO
