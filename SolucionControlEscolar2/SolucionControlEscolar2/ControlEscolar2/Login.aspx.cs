using System;
using System.Web.UI;

namespace ControlEscolar
{
    public partial class Login : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string username = txtUsername.Text;
            string password = txtPassword.Text;
            string role = ddlRole.SelectedValue;

            // Aquí deberías validar las credenciales y roles
            // Por ejemplo, podrías consultar una base de datos para verificar

            if (username == "admin" && password == "admin" && role == "Directivo")
            {
                Response.Redirect("DirectivoHome.aspx");
            }
            else if (username == "teacher" && password == "teacher" && role == "Maestro")
            {
                Response.Redirect("MaestroHome.aspx");
            }
            else if (username == "student" && password == "student" && role == "Alumno")
            {
                Response.Redirect("AlumnoHome.aspx");
            }
            else
            {
                lblMessage.Text = "Credenciales incorrectas";
            }
        }

        protected void txtUsername_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
