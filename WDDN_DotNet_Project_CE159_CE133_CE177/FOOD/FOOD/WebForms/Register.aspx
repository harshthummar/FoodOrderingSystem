<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="FOOD.WebForms.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            width: 73%;
            margin-right: 0px;
        }
        .auto-style3 {
            width: 338px;
        }
        .auto-style5 {
            width: 592px;
        }
        .auto-style6 {
            width: 150px;
        }

        .auto-style8 {
            margin-left: 216px;
            margin-right: 43px;
        }
        .auto-style9 {
            width: 1247px;
        }

        .auto-style10 {
            margin-left: 320px;
        }

        .auto-style11 {
            width: 150px;
            height: 28px;
        }
        .auto-style12 {
            width: 338px;
            height: 28px;
        }
        .auto-style13 {
            width: 592px;
            height: 28px;
        }
        .auto-style14 {
            height: 28px;
        }

    </style>
        <link href="../Content/bootstrap.min.css" rel="stylesheet" />
</head>
<body style="height: 100px">
    <h1 style="text-align:center" class="auto-style9" >Register </h1>
    <form id="form1" runat="server" class="auto-style8">
        <div style="font-size: medium">
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <table class="auto-style2">
                <tr>
                    <td class="auto-style6">UserName:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                    <td class="auto-style3">
                        <asp:TextBox class="form-control" ID="TextBox1" runat="server" Width="427px"></asp:TextBox>
                    </td>
                    <td class="auto-style5">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style11">Email:</td>
                    <td class="auto-style12">
                        <asp:TextBox class="form-control" ID="TextBox2" runat="server" TextMode="Email" Width="429px"></asp:TextBox>
                    </td>
                    <td class="auto-style13">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style14">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">Password:</td>
                    <td class="auto-style3">
                        <asp:TextBox class="form-control" ID="TextBox3" runat="server"  TextMode="Password" Width="428px"></asp:TextBox>
                    </td>
                    <td class="auto-style5">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">Re-Password:</td>
                    <td class="auto-style3">
                        <asp:TextBox class="form-control" ID="TextBox4" runat="server" Width="429px"></asp:TextBox>
                    </td>
                    <td class="auto-style5">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="*" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    &nbsp;<asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox3" ControlToValidate="TextBox4" ErrorMessage="Please Enter The Correct Password" ForeColor="Red"></asp:CompareValidator>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
        </div>
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
        <p class="auto-style10">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button class="btn btn-primary btn-lg" ID="Register1" runat="server" OnClick="Register1_Click" Text="Register" />
        </p>
    </form>
</body>
</html>
