<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Payment_Offline.aspx.cs" Inherits="FOOD.WebForms.Payment_Offline" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .btn {
  background-color: #04AA6D;
  color: white;
  padding: 12px;
  margin: 10px 0;
  border: none;
  width: 30%;
  border-radius: 3px;
  cursor: pointer;
  font-size: 17px;
}
        .design{
             width: 20%;
             height:30%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div>
                <div>
                     
                      <center>
                         <br />
                         <br />
                         <br />
                         <br />
                         <br />
                         <br />
            
                         <asp:Button class="btn" ID="Button1" runat="server" Text="Case On Delivery" OnClick="Button1_Click" />
                         <br/><br/>
                         <center class="design"><asp:Button class="btn"  ID="Button2" runat="server" Text="Cancle" OnClick="Button2_Click" /></center>
                    </center>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
