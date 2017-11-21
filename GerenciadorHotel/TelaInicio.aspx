<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TelaInicio.aspx.cs" Inherits="GerenciadorHotel.TelaInicio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>Gerenciamento de Reservas - Little Aligator</title>
</head>
<body>
    <h1>HOTEL LITTLE ALIGATOR</h1>
    <h3>Gerenciamento de Reservas</h3>
    <form id="form1" runat="server">
    <div>
       <div>
           <% string usuario = (string)Session["Usuario"];
               Response.Write("Bem Vindo: " + usuario); %>
           <br />
           Nome:<br />
           <asp:TextBox ID="tb_Nome" runat="server"></asp:TextBox>
           <br />
           Nascimento:<br />
           <asp:TextBox ID="tb_Nascimento" runat="server" TextMode="Date"></asp:TextBox>
           <br />
           Genero:<br />
           <asp:DropDownList ID="dl_generos" runat="server">
               <asp:ListItem>Feminino</asp:ListItem>
               <asp:ListItem>Masculino</asp:ListItem>
               <asp:ListItem>Outros</asp:ListItem>
           </asp:DropDownList>
           <br />
           Identificação:<br />
           <asp:TextBox ID="tb_cpf" runat="server" TextMode="Number">CPF</asp:TextBox>
           <br />
           <h3>Contato </h3>Telefone:<br />
           <asp:TextBox ID="tb_telefone" runat="server" TextMode="Phone"></asp:TextBox>
           <br />
           Email:<br />
           <asp:TextBox ID="tb_email" runat="server" TextMode="Email"></asp:TextBox>
           <br />
           Endereço:<br />
           <asp:TextBox ID="tb_rua" runat="server"></asp:TextBox>
           <br />
           <asp:TextBox ID="tb_bairro" runat="server"></asp:TextBox>
           <br />
           <asp:DropDownList ID="dl_estados" runat="server">
               <asp:ListItem>Acre</asp:ListItem>
               <asp:ListItem>Alagoas</asp:ListItem>
               <asp:ListItem>Amapa</asp:ListItem>
               <asp:ListItem>Amazonas</asp:ListItem>
               <asp:ListItem>Bahia</asp:ListItem>
               <asp:ListItem>Ceara</asp:ListItem>
               <asp:ListItem>Distrito Federal</asp:ListItem>
               <asp:ListItem>Espirito Santo</asp:ListItem>
               <asp:ListItem>Goias</asp:ListItem>
               <asp:ListItem>Maranhao</asp:ListItem>
               <asp:ListItem>Mato Grosso</asp:ListItem>
               <asp:ListItem>Mato Grosso do Sul</asp:ListItem>
               <asp:ListItem>Minas Gerais</asp:ListItem>
               <asp:ListItem>Para</asp:ListItem>
               <asp:ListItem>Paraiba</asp:ListItem>
               <asp:ListItem>Parana</asp:ListItem>
               <asp:ListItem>Pernambuco</asp:ListItem>
               <asp:ListItem>Piaui</asp:ListItem>
               <asp:ListItem>Rio de Janeiro</asp:ListItem>
               <asp:ListItem>Rio Grande do Norte</asp:ListItem>
               <asp:ListItem>Rio Grande do Sul</asp:ListItem>
               <asp:ListItem>Rondonia</asp:ListItem>
               <asp:ListItem>Roraima</asp:ListItem>
               <asp:ListItem>Santa Catarina</asp:ListItem>
               <asp:ListItem>Sao Paulo</asp:ListItem>
               <asp:ListItem>Sergipe</asp:ListItem>
               <asp:ListItem>Tocantins</asp:ListItem>
           </asp:DropDownList>
           <br />
           <asp:TextBox ID="tb_cidade" runat="server"></asp:TextBox>
           <br />
           <br />
           <br />
           
       </div>
    </div>
    </form>
</body>
</html>
