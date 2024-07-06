<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OrderForm.aspx.cs" Inherits="PSCA_Annual_Sruvey_2024.PSCA.OrderForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>PSCA Annual Survey Form</title>
</head>
<body>
    <form id="formOrderForm" runat="server">
        <p><center><img src="psca_logo.gif" /></center></p>
        <h1><center>PSCA’s 46th Annual Survey of <br />
        Profit Sharing and 401(k) Plans</center></h1>
        
        <p>To place your secure order online via credit card, please fill out the information below.</p>
        
        <p>Indicate Cost (check one):</p>

        <asp:RequiredFieldValidator ID="valTotalCost_Required" runat="server" ErrorMessage="Please check the Total" ControlToValidate="TextQuantity" SetFocusOnError="True"></asp:RequiredFieldValidator>
        <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Please check the Quantity" ControlToValidate="TextQuantity" MaximumValue="100" MinimumValue="1" SetFocusOnError="True" Type="Integer"></asp:RangeValidator>
        <br />
        <asp:RadioButton ID="optRegularPrice" runat="server" Text="Regular Price $295" OnCheckedChanged="optRegularPrice_CheckedChanged" GroupName="Price" AutoPostBack="True" /><br />
        <asp:RadioButton ID="optMemberPrice" runat="server" Text="PSCA Member Price $95" OnCheckedChanged="optMemberPrice_CheckedChanged" GroupName="Price" AutoPostBack="True" />

        <p>Quantity: <asp:TextBox ID="TextQuantity" runat="server" Columns="3" MaxLength="2" TextMode="Number" AutoPostBack="True" OnTextChanged="TextQuantity_TextChanged" >1</asp:TextBox></p>
        <p>Total Cost: <asp:Label ID="lblTotalCost" runat="server" Text="0.00"></asp:Label></p>

        <p><asp:Button ID="cmdSubmit" runat="server" Text="SUBMIT" OnClick="cmdSubmit_Click" />&nbsp;&nbsp;<asp:LinkButton ID="cmdCancel" runat="server" OnClick="cmdCancel_Click">Cancel</asp:LinkButton> </p>

        <p>Please enter your billing and shipping information:</p>
        <p><b><u>Billing Information</u></b></p>
        <table>
            <tr>
                <td>Name: </td>
                <td width="5">&nbsp&nbsp</td>
                <td>
                    <asp:TextBox ID="txtBillingName" runat="server"></asp:TextBox></td>
            </tr>

            <tr>
                <td>Addres 1:</td>
                <td width="5"></td>
                <td>
                    <asp:TextBox ID="txtBillingAddress1" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Address 2:</td>
                <td width="5"></td>
                <td>
                    <asp:TextBox ID="txtBillingAddress2" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>City: </td>
                <td width="5"></td>
                <td>
                    <asp:TextBox ID="txtBillingCity" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>State: </td>
                <td width="5"></td>
                <td>
                    <asp:TextBox ID="txtBillingState" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Zip Code: </td>
                <td width="5"></td>
                <td>
                    <asp:TextBox ID="txtBillingZipCode" runat="server"></asp:TextBox></td>
            </tr>
        </table>

        <p><b><u>Shipping Information</u></b></p>
        <table>
            <tr>
                <td>
                    <asp:CheckBox ID="chkBillingShipping" runat="server" OnCheckedChanged="chkBillingShipping_CheckedChanged" AutoPostBack="True" Text="Billing address is the same as shipping address" /></td>
            </tr>
            <tr>
                <td>Name: </td>
                <td width="5"></td>
                <td>
                    <asp:TextBox ID="txtShippingName" runat="server"></asp:TextBox></td>
            </tr>

            <tr>
                <td>Addres 1:</td>
                <td width="5"></td>
                <td>
                    <asp:TextBox ID="txtShippingAddress1" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Address 2:</td>
                <td width="5"></td>
                <td>
                    <asp:TextBox ID="txtShippingAddress2" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>City: </td>
                <td width="5"></td>
                <td>
                    <asp:TextBox ID="txtShippingCity" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>State: </td>
                <td width="5"></td>
                <td>
                    <asp:TextBox ID="txtShippingState" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Zip Code: </td>
                <td width="5"></td>
                <td>
                    <asp:TextBox ID="txtShippingZipCode" runat="server"></asp:TextBox></td>
            </tr>
        </table>

        
    </form>
</body>
</html>
