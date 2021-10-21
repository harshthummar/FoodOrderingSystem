<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Payment_Online.aspx.cs" Inherits="FOOD.WebForms.Payment_Online" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <title></title>
    <style>
body {
  font-family: Arial;
  font-size: 17px;
  padding: 8px;
}

* {
  box-sizing: border-box;
}

.row {
  display: -ms-flexbox; 
  display: flex;
  -ms-flex-wrap: wrap; 
  flex-wrap: wrap;
  margin: 0 -16px;
}

.col-25 {
  -ms-flex: 25%; 
  flex: 25%;
}

.col-50 {
  -ms-flex: 50%; 
  flex: 50%;
}

.col-75 {
  -ms-flex: 75%; 
  flex: 75%;
}

.col-25,
.col-50,
.col-75 {
  padding: 0 16px;
}

.container {
  background-color: #f2f2f2;
  padding: 5px 20px 15px 20px;
  border: 1px solid lightgrey;
  border-radius: 3px;
}

input[type=text] {
  width: 100%;
  margin-bottom: 20px;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 3px;
}

label {
  margin-bottom: 10px;
  display: block;
}

.icon-container {
  margin-bottom: 20px;
  padding: 7px 0;
  font-size: 24px;
}

.btn {
  background-color: #04AA6D;
  color: white;
  padding: 12px;
  margin: 10px 0;
  border: none;
  width: 100%;
  border-radius: 3px;
  cursor: pointer;
  font-size: 17px;
}

.btn:hover {
  background-color: #45a049;
}

a {
  color: #2196F3;
}

hr {
  border: 1px solid lightgrey;
}

span.price {
  float: right;
  color: grey;
}

@media (max-width: 800px) {
  .row {
    flex-direction: column-reverse;
  }
  .col-25 {
    margin-bottom: 20px;
  }
}
        .auto-style1 {
            margin-left: 284px;
            margin-right: 307px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" class="auto-style1">
        <div>
              <div class="col-50">
            <h3 style="text-align:center">Payment</h3>
            <label for="fname">Accepted Cards</label>
            <div class="icon-container">
              <i class="fa fa-cc-visa" style="color:navy;"></i>
              <i class="fa fa-cc-amex" style="color:blue;"></i>
              <i class="fa fa-cc-mastercard" style="color:red;"></i>
              <i class="fa fa-cc-discover" style="color:orange;"></i>
            </div>
            <label for="cname">Card Holder&#39;s Name<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                  &nbsp;<br />
                  <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                  </label>
&nbsp;
            <label for="ccnum">Credit card number<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="*" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                  &nbsp;<asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="please enter valid number" ForeColor="#FF3300" MaximumValue="9999999999999999" MinimumValue="1000000000000000"></asp:RangeValidator>
                  <br />
                  <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                  </label>
            &nbsp;
            <label for="expmonth">Exp Month<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="*" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                  &nbsp;<br />
                  <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                  </label>
            &nbsp;
            <div class="row">
              <div class="col-50">
                <label for="expyear">Exp Year<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="*" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                  &nbsp;<asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="TextBox4" ErrorMessage="please enter valid year" ForeColor="#FF3300" MaximumValue="2100" MinimumValue="2000"></asp:RangeValidator>
                  <br />
                  <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                  </label>
                &nbsp;
              </div>
              <div class="col-50">
                <label for="cvv">CVV<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" ErrorMessage="*" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                  &nbsp;<asp:RangeValidator ID="RangeValidator3" runat="server" ControlToValidate="TextBox5" ErrorMessage="please enter valid cvv" ForeColor="#FF3300" MaximumValue="999" MinimumValue="100"></asp:RangeValidator>
                  <br />
                  <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                  </label>&nbsp;
              </div>
            </div>
          </div>
        </div>
        
        <asp:Button class="btn" ID="Button1" runat="server" Text="Make Payment" OnClick="Button1_Click" />
        <br />
         <br />
         <center><asp:Button class="btn" ID="Button2" runat="server" Text="Cancle" OnClick="Button2_Click" /></center>
    </form>
</body>
</html>
