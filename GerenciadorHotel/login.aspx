<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="GerenciadorHotel.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Hotel Little Aligator</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>Gerenciador de Reservas</h1>
    </div>
        <div>
            <table>
                <tr>
                    <td>
                        <asp:Label runat="server" ID="lblLogin" Text="Login" Font-Bold="true"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox runat="server" ID="txtLogin" width="150px"></asp:TextBox>
                    </td>
                    <tr>

                    </tr>
                    <td>
                        <asp:Label runat="server" ID="lblSenha" Text="Senha" Font-Bold="true"></asp:Label>
                    </td>

                    <td>
                        <asp:TextBox runat="server" ID="txtSenha" TextMode="Password" width="150px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                <td>

                </td>
                <td>
                    <asp:Button runat="server" ID="btnLogar" Text="Entrar" OnClick="btnLogar_Click" />
                </td>

                </tr>
            </table>


        </div>
    </form>
</body>
</html>
