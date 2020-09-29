using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace LoginWithBootstrap
{
    public partial class Routine : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            
            if (Session["loading"] == null || Session["discharge"] == null || Session["date"] == null)
            {
                Response.Redirect("Index.aspx");
            }
            txtloading.Text = Session["loading"].ToString();
            txtdischarge.Text = Session["discharge"].ToString();
            txtdate.Text = Session["date"].ToString();
            //if (Request.Cookies["Username"] != null)
            //{
                
            //    txtloading.Text = Request.Cookies["Use"].Value.ToString();
            //} 
            //bla.Text = "bhag bhag dk bose";


            //String CS = ConfigurationManager.ConnectionStrings["ConnectionString3"].ConnectionString;
            //SqlConnection con = new SqlConnection(CS);
            //con.Open();
            //SqlCommand cmd = new SqlCommand("SearchRoutine", con);
            //cmd.CommandType = System.Data.CommandType.StoredProcedure;
            //cmd.Parameters.AddWithValue("@depcity", (string)Session["TextBox1"]);
            //cmd.Parameters.AddWithValue("@arrcity", (string)Session["TextBox2"]);
            //cmd.Parameters.AddWithValue("@depdate", (string)Session["TextBox5"]);
            //GridView1.DataSource = cmd.ExecuteReader();
            //GridView1.DataBind();
            //con.Close();

        }
        protected void ScheduleButton_Click_Routine(object sender, EventArgs e)
        {

            //String CS = ConfigurationManager.ConnectionStrings["ConnectionString3"].ConnectionString;
            //SqlConnection con = new SqlConnection(CS);
            //con.Open();
            //SqlCommand cmd = new SqlCommand("SearchRoutine", con);
            //cmd.CommandType = System.Data.CommandType.StoredProcedure;
            //cmd.Parameters.AddWithValue("@depcity", TextBox1.Text);
            //cmd.Parameters.AddWithValue("@arrcity", TextBox2.Text);
            //cmd.Parameters.AddWithValue("@depdate", TextBox5.Text);
            //GridView1.DataSource = cmd.ExecuteReader();
            //GridView1.DataBind();
            //con.Close();

            //TextBox1.Text = "";
            //TextBox2.Text = "";
            //TextBox5.Text = "";



        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Select")
            {
                //Determine the RowIndex of the Row whose Button was clicked.
                int rowIndex = Convert.ToInt32(e.CommandArgument.ToString());

                //Reference the GridView Row.
                GridViewRow row = GridView1.Rows[rowIndex];

                //Fetch value of Name.
                string sendingid = (row.FindControl("snum") as Label).Text;

                //Fetch value of Country
                //string country = GridView1.Rows[rowIndex].Cells[0].Text;

                //ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Name: " + name + "\\nCountry: " + country + "');", true);
                //Label14.Text = rowIndex.ToString();
                Label13.Text = sendingid;
                Session["routeid"] = Label13.Text;
                Response.Redirect("Comments.aspx");
            }
        }
    }
}