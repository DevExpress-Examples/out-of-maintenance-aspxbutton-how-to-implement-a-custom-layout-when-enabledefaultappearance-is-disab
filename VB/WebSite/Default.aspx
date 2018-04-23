<%@ Page Language="vb" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .customButton
        {
            background-color: Red;           
            font-weight: bold;
            border: 3px solid #b3b4c3;
            border-right: 3px solid #090e61;
            border-bottom: 3px solid #090e61;
        }
        .customButtonPressed
        {
            background-color: #AA0000;
        }
        .customButtonDisabled
        {
            background-color: #F24141;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <dx:ASPxButton ID="btnCustom" runat="server" ClientInstanceName="button" Text="Custom ASPxButton"
        EnableDefaultAppearance="false" CssClass="customButton" Cursor="pointer" Width="160" Height="30">
        <PressedStyle CssClass="customButtonPressed">
        </PressedStyle>
        <DisabledStyle CssClass="customButtonDisabled">
        </DisabledStyle>
        <HoverStyle BackColor="#FF4040">
        </HoverStyle>       
        <FocusRectBorder BorderWidth="1" BorderStyle="Dotted" BorderColor="White" />
    </dx:ASPxButton>
    <br />
    <dx:ASPxCheckBox ID="ASPxCheckBox1" runat="server" CheckState="Checked" Text="Enable/Disable button">
        <ClientSideEvents CheckedChanged="function(s, e) {
            button.SetEnabled(s.GetChecked());
        }" />
    </dx:ASPxCheckBox>
    </form>
</body>
</html>