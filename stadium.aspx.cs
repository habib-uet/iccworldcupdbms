using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace iccworldcupdbms
{
    public partial class stadium : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (!(string.IsNullOrEmpty(Request.QueryString["stad_id"])))
                {
                    string firstname = Request.QueryString["stad_id"];
                    Label1.Text = "STADIUM INFORMATION";
                    int id = 0;
                    id = Convert.ToInt32(firstname);
                    SqlConnection connection = new SqlConnection(@"Data Source=DESKTOP-EQN8E2P\SQLSERVER;Initial Catalog=ICcWORLDCUPDBMS;Integrated Security=True; MultipleActiveResultSets=True");
                    string query = "select * from stadium"; // for int,bigint.
                    SqlCommand command = new SqlCommand(query, connection);
                    connection.Open();
                    SqlDataReader reader = command.ExecuteReader();
                    GridView1.DataSource = reader;
                    GridView1.DataBind();
                    connection.Close();
                    reader.Close();
                }
                else
                {
                    Label1.Text = "STADIUM INFORMATION IS NOT AVLIABLE";
                }
            }
        }
    }
}