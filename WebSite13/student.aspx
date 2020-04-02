<%@ Page Language="C#"  %>
<%@ Import Namespace="System.Data.SqlClient" %>
<!DOCTYPE html>

<script runat="server">
    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString="Data Source=(LocalDB)\\v11.0;AttachDbFilename=|data directory| studentdo.mdf;Integrated Security=True";
      
        
        string strInsert = "INSERT INTO Table "
                             + " VALUES('" + firstname.Text + "', '"
                             +lastname.Text + "', '"
                             + country.SelectedValue + "', '"       
                             + faclty.SelectedValue + "', '"     
                             + gender.SelectedValue + "', '"
                          
                             + email.Text + "', '"
                            + address.Text + "', '"
                             + Password.Text + "')";
        
        // Create SQL Command
        SqlCommand cmdInsert = new SqlCommand(strInsert, conn);

        conn.Open();

        cmdInsert.ExecuteNonQuery();

        conn.Close();



        lblMsg.Text = "Welcome " + firstname.Text +  "Your Account Has Been Successfully Created!!";
         
    }

</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1
        {
            width: 100%;
        }
        .auto-style2
        {
        }
        .auto-style3
        {
            width: 228px;
            height: 24px;
        }
        .auto-style4
        {
            height: 24px;
        }
        #Password2
        {
            width: 244px;
        }
        #Password1
        {
            width: 245px;
        }
        .auto-style7
        {
            width: 228px;
            height: 27px;
            font-size: xx-large;
        }
        .auto-style8
        {
            height: 27px;
        }
        .auto-style9
        {
            width: 288px;
        }
        .auto-style12
        {
            height: 27px;
            width: 288px;
        }
        .auto-style13
        {
            width: 288px;
            height: 24px;
        }
        #Password
        {
            width: 237px;
        }
        #password3
        {
            width: 227px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="font-size: large; text-align: left">
    
        new student
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">first name </td>
                <td class="auto-style9">
                    <asp:TextBox ID="firstname" runat="server" Width="239px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">lastname</td>
                <td class="auto-style9">
                    <asp:TextBox ID="lastname" runat="server" Width="241px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Gender</td>
                <td id="gender" class="auto-style9">
                    <asp:RadioButtonList ID="gender" runat="server" Width="113px">
                        <asp:ListItem>female</asp:ListItem>
                        <asp:ListItem>male</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">BIRTHDATE</td>
                <td class="auto-style9">
                    <asp:Calendar ID="Calendar1" runat="server" style="margin-top: 0px"></asp:Calendar>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">email</td>
                <td class="auto-style9">
                    <asp:TextBox ID="email" runat="server" Width="241px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">phone number</td>
                <td class="auto-style13" id="phonenumber">
                    <asp:TextBox ID="TextBox4" runat="server" Width="239px"></asp:TextBox>
                </td>
                <td class="auto-style4"></td>
                <td class="auto-style4"></td>
                <td class="auto-style4"></td>
            </tr>
            <tr>
                <td class="auto-style2">address</td>
                <td class="auto-style9">
                    <asp:TextBox ID="address" runat="server" Width="242px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">password</td>
                <td class="auto-style9">
                    <input id="password" type="password" style="width: 238px" /></td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">confirm_password</td>
                <td class="auto-style9">
                    <input id="password3" type="password" /></td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">country</td>
                <td class="auto-style13">
                    <asp:DropDownList ID="country" runat="server" Height="17px" Width="102px">
                        <asp:ListItem>egypt</asp:ListItem>
                        <asp:ListItem>south africa</asp:ListItem>
                        <asp:ListItem>franc</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style4"></td>
                <td class="auto-style4"></td>
                <td class="auto-style4"></td>
            </tr>
            <tr>
                <td class="auto-style2">faculty</td>
                <td class="auto-style9">
                    <asp:DropDownList ID="faclty" runat="server" Width="97px" Height="16px">
                        <asp:ListItem>FUE</asp:ListItem>
                        <asp:ListItem>BUE</asp:ListItem>
                        <asp:ListItem>AUC</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Submit" Width="124px" Height="40px" />
                </td>
                <td class="auto-style12"></td>
                <td class="auto-style8">
                    <br />
                </td>
                <td class="auto-style8"></td>
                <td class="auto-style8"></td>
            </tr>
            <tr>
                <td class="auto-style2" colspan="5">
                    <asp:Label ID="lblMsg" runat="server" Font-Bold="True" ForeColor="#CC0000"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
