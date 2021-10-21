<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ColdDrinks_Items.aspx.cs" Inherits="FOOD.WebForms.ColdDrinks_Items" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            margin-left: 171px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" class="auto-style1">
         <div>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="menu" runat="server" Text="Menu"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
              <asp:HyperLink class="btn btn-warning" ID="checkyourorder" runat="server"  NavigateUrl="~/WebForms/MyOrder.aspx">CheckYourOrder</asp:HyperLink>
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <asp:HyperLink ID="back" runat="server" NavigateUrl="~/WebForms/Menu.aspx"  class="btn btn-warning">Back</asp:HyperLink>
            <br />
            &nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="image" runat="server" Text="Image"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="name" runat="server" Text="Name"></asp:Label>
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="price" runat="server" Text="Price"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="quantity" runat="server" Text="Quantity"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </div>
        <p>
            &nbsp;</p>
        <p>
            <asp:Image ID="Image1" runat="server" Height="100px" Width="150px" ImageUrl="~/Images/Orange.PNG" />
&nbsp;&nbsp;
            <asp:Label ID="orange" runat="server" Text="Orange"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
            <asp:Label ID="price1" runat="server" Text="15"></asp:Label>
&nbsp;Rs.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button class="btn btn-outline-info"  ID="add1" runat="server" Text="+" OnClick="add1_Click1" />
&nbsp;<asp:Label ID="Label1" runat="server" Text="0"></asp:Label>
&nbsp;<asp:Button class="btn btn-outline-info"  ID="sub1" runat="server" Text="-" OnClick="sub1_Click1" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button  class="btn btn-outline-success" ID="mycard1" runat="server" Text="MyCart" OnClick="mycard1_Click1" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button  class="btn btn-outline-danger" ID="update1" runat="server" Text="Update" OnClick="update1_Click1" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </p>
        <p>
            &nbsp;</p>
        <p>
            <asp:Image ID="Image2" runat="server" Height="100px" Width="150px" ImageUrl="~/Images/Jeera Masala.PNG" />
&nbsp;&nbsp;
            <asp:Label ID="jeeramasala" runat="server" Text="Jeera Masala"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="price2" runat="server" Text="15 "></asp:Label>
            Rs.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button  class="btn btn-outline-info" ID="add2" runat="server" Text="+" OnClick="add2_Click1" />
&nbsp;<asp:Label ID="Label2" runat="server" Text="0"></asp:Label>
&nbsp;<asp:Button  class="btn btn-outline-info" ID="sub2" runat="server" Text="-" OnClick="sub2_Click1" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button  class="btn btn-outline-success" ID="mycard2" runat="server" Text="MyCart" OnClick="mycard2_Click1" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button  class="btn btn-outline-danger" ID="update2" runat="server" Text="Update" OnClick="update2_Click1" style="height: 29px" />
        </p>
        <p>
            &nbsp;</p>
        <p>
            <asp:Image ID="Image3" runat="server" Height="100px" Width="150px" ImageUrl="~/Images/Nimbu Soda.PNG" />
&nbsp;&nbsp;
            <asp:Label ID="nimbusoda" runat="server" Text="Nimbu Soda"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="price3" runat="server" Text="20 "></asp:Label>
            Rs.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button  class="btn btn-outline-info" ID="add3" runat="server" Text="+" OnClick="add3_Click1" />
&nbsp;<asp:Label ID="Label3" runat="server" Text="0"></asp:Label>
&nbsp;<asp:Button class="btn btn-outline-info"  ID="sub3" runat="server" Text="-" OnClick="sub3_Click1" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button class="btn btn-outline-success"  ID="mycard3" runat="server" Text="MyCart" OnClick="mycard3_Click1" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
            <asp:Button  class="btn btn-outline-danger" ID="update3" runat="server" Text="Update" OnClick="update3_Click1" />
        </p>
         <p>
             &nbsp;</p>
         <p>
             <asp:Image ID="Image4" runat="server" Height="100px" Width="150px" ImageUrl="~/Images/Guava Soda.PNG" />
&nbsp;
             <asp:Label ID="guavasoda" runat="server" Text="Guava Soda"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <asp:Label ID="price4" runat="server" Text="15"></asp:Label>
&nbsp;Rs.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
             <asp:Button  class="btn btn-outline-info" ID="add4" runat="server" Text="+" OnClick="add4_Click1" />
&nbsp;<asp:Label ID="Label4" runat="server" Text="0"></asp:Label>
&nbsp;<asp:Button class="btn btn-outline-info"  ID="sub4" runat="server" Text="-" OnClick="sub4_Click1" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <asp:Button  class="btn btn-outline-success" ID="mycard4" runat="server" Text="MyCart" OnClick="mycard4_Click1" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <asp:Button  class="btn btn-outline-danger" ID="update4" runat="server" Text="Update" OnClick="update4_Click1" />
        </p>
    </form>
</body>
</html>
