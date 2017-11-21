using Business.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GerenciadorHotel
{
    public partial class login : System.Web.UI.Page
    {
        //propriedades
        LoginService loginService = new LoginService();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            { 

            }
            txtSenha.Focus();
        }

        protected void btnLogar_Click(object sender, EventArgs e)
        {
            logar();
        }

        public void logar()
        {
            if (string.IsNullOrEmpty(txtLogin.Text) || string.IsNullOrEmpty(txtSenha.Text))
            {
                this.ExibirAlerta(Mensagem.TipoMensagem.Alerta, "Usuario ou Senha em Branco");
                txtLogin.Text = string.Empty;
                txtSenha.Text = string.Empty;
                txtLogin.Focus();
                return;
            }
            else 
            {
                if (loginService.ValidarUsuario(txtLogin.Text, txtSenha.Text))
                {
                    Response.Redirect("~/TelaInicio.aspx");
                }
                else
                {
                    this.ExibirAlerta(Mensagem.TipoMensagem.Alerta, "Usuario inexistente ou inativo");
                    return;
                }
            }
        }
    }
}