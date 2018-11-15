<!-- default file list -->
*Files to look at*:

* [Default.aspx](./CS/WebSite/Default.aspx) (VB: [Default.aspx](./VB/WebSite/Default.aspx))
* [Default.aspx.cs](./CS/WebSite/Default.aspx.cs) (VB: [Default.aspx](./VB/WebSite/Default.aspx))
<!-- default file list end -->
# ASPxButton - How to implement a custom layout when EnableDefaultAppearance is disabled


<p><strong>Not</strong><strong>e</strong><strong> t</strong><strong>h</strong><strong>at since version 13.2 the EnableDefaultAppearance property has become obsolete. Now use recommendations from the </strong><a href="https://www.devexpress.com/Support/Center/p/KA18872">ASPxButton - How to disable default appearance starting with 13.2 (display only an image)</a><strong> KB article to customize ASPxButton.</strong></p><p><br />
This example demonstrates how to disable EnableDefaultAppearance of ASPxButton and define a custom style for it.</p><br />
<p>- Set the <strong>ASPxButton.EnableDefaultAppearance</strong> property to "false" to completely define a button style either via css or appropriate style properties;<br />
- Define a custom css class or set style properties for the button;</p><br />
<p>Css:</p>

```css
.customButton
{
  background-color: Red;
  cursor: pointer;
  font-weight: bold;
  border: 3px solid #b3b4c3;
  border-right: 3px solid #090e61;
  border-bottom: 3px solid #090e61;
}

<dx:ASPxButton EnableDefaultAppearance="false" CssClass="customButton" ...>
  ...
</dx:ASPxButton>



```

<p>Properties: </p>

```aspx
<dx:ASPxButton EnableDefaultAppearance="false" Cursor="pointer" Width="160" Height="30"...>
  ...
</dx:ASPxButton>



```

<p>- Define (if needed) custom css classes or properties for <strong>PressedStyle</strong>,<strong> DisabledStyle</strong>, <strong>HoverStyle</strong>, and <strong>CheckedStyle </strong>to create different styles for each state;<br />
- Define (if needed) the FocusRectBorder properties.</p><para><code lang="css">.customButtonPressed {  background-color: #AA0000; } <dx:ASPxButton ...EnableDefaultAppearance="false" CssClass="customButton" ...>  <PressedStyle CssClass="customButtonPressed">  </PressedStyle>       <HoverStyle BackColor="#FF4040">  </HoverStyle>  ...       <FocusRectBorder BorderWidth="1" BorderStyle="Dotted" BorderColor="White" /> </dx:ASPxButton>

<br/>


