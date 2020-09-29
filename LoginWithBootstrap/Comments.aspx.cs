using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;


namespace LoginWithBootstrap
{
    public partial class Comments : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["routeid"] == null)
            {
                Response.Redirect("Index.aspx");

            }
            Label6.Text = Session["routeid"].ToString().ToUpper();           

            if (Session["username"] != null)
            {
                Label7.Text = Session["username"].ToString().ToUpper();
                String CS = ConfigurationManager.ConnectionStrings["ProfileDB"].ConnectionString;
                SqlConnection con = new SqlConnection(CS);
                con.Open();
                SqlCommand cmd = new SqlCommand("masterimage", con);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@uname", Label7.Text);
                SqlDataReader rdr = cmd.ExecuteReader();

                while (rdr.Read())
                {
                    if (rdr["picture"] == null || rdr["picture"] == DBNull.Value)
                    {
                        imagelabel.Text = rdr["picture"].ToString().ToUpper();
                        ImageButton1.ImageUrl = "~/pics/defaultlogo.ico";
                    }
                    else
                    {
                        imagelabel.Text = rdr["picture"].ToString().ToUpper();
                        ImageButton1.ImageUrl = "~/pics/" + rdr["picture"];
                    }
                }

      

                //GridView1.DataSource = cmd.ExecuteReader();
                //GridView1.DataBind();
                con.Close();

            }
            else
            {
                Label8.Visible = false;
                Label7.Text = "*Please Login to Comment";
                Label7.Style.Add("color", "red");
                entercomment.ReadOnly = true;
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            //Label5.Text = Rating1.CurrentRating.ToString();
        }

        protected void About_Click(object sender, EventArgs e)
        {
            String CS = ConfigurationManager.ConnectionStrings["routesAndComments"].ConnectionString;
            SqlConnection con = new SqlConnection(CS);
            SqlDataAdapter da = new SqlDataAdapter("newinsertcomment", con);
            da.SelectCommand.CommandType = CommandType.StoredProcedure;
            da.SelectCommand.Parameters.AddWithValue("@uname", Label7.Text.ToLower());
            da.SelectCommand.Parameters.AddWithValue("@allcomment", entercomment.Text);
            da.SelectCommand.Parameters.AddWithValue("@rating", 4);
            da.SelectCommand.Parameters.AddWithValue("@picture", imagelabel.Text);
            da.SelectCommand.Parameters.AddWithValue("@routineid", Label6.Text);
            //da.SelectCommand.Parameters.AddWithValue("@commentdate", GetDataItem());

            DataSet ds = new DataSet();
            da.Fill(ds);
            entercomment.Text = "";
            commentGrid.DataBind();
           
        }
        protected void commentGrid_RowCommand(object sender, GridViewCommandEventArgs e)
        {

        }
    }
}