using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string strNome = Request["Nome"];
            string strCognome = Request["Cognome"];
            string strCitta = Request["Citta"];
            string strQualifica = Request["Qualifica"];
            //Response.Write("Nome:"+Nome+"Cognome:"+Cognome+"Citta:"+Citta+"Qualifica:"+Qualifica); 
            SqlConnection cn = new SqlConnection
            (@"server = DESKTOP-EGQIVDK\SQLEXPRESS; database=HTML; Integrated Security= true");

            string strSql = "INSERT INTO dbo.Elenco (Nome, Cognome, Citta, Qualifica) VALUES (@nome, @cognome, @citta, @qual)";
            SqlCommand cmd = new SqlCommand(strSql, cn);

            cmd.Parameters.AddWithValue("@nome", strNome);
            cmd.Parameters.AddWithValue("@cognome", strCognome);
            cmd.Parameters.AddWithValue("@citta", strCitta);
            cmd.Parameters.AddWithValue("@qual", strQualifica);

            cn.Open();
            int result = cmd.ExecuteNonQuery();
            cmd.CommandText = "SELECT Cognome FROM dbo.Elenco WHERE Nome = 'Luca'";
            String cognome = (String)cmd.ExecuteScalar();
            cn.Close();

            Response.Write("Hai inserito " + result + " record, e il cognome con nome Luca è " + cognome);
        }
    }
}