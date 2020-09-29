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
    public partial class Master1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] != null)
            {
                string userName = Session["username"].ToString().ToUpper();
                CurrentUser.Text = "Logout";
                Session["userprofile"] = userName;
                ImageButton1.PostBackUrl = "Profile.aspx";
                String CS = ConfigurationManager.ConnectionStrings["ProfileDB"].ConnectionString;
                SqlConnection con = new SqlConnection(CS);
                con.Open();
                SqlCommand cmd = new SqlCommand("masterimage", con);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@uname", userName);
                SqlDataReader rdr = cmd.ExecuteReader();

                while (rdr.Read())
                {
                    if (rdr["picture"] == null || rdr["picture"] == DBNull.Value)
                    {
                        ImageButton1.ImageUrl = "~/icons/defaultlogo.ico";
                    }
                    else
                    {
                        ImageButton1.ImageUrl = "~/pics/" + rdr["picture"];
                    }
                }

                //GridView1.DataSource = cmd.ExecuteReader();
                //GridView1.DataBind();
                con.Close();

            }
            else
            {
                CurrentUser.Text = "Login";
                ImageButton1.PostBackUrl = "User.aspx";
            }

        }

        protected void CurrentUser_Click(object sender, EventArgs e)
        {
            if (CurrentUser.Text == "Logout")
            {
                Session.Clear();
            }
            Response.Redirect("User.aspx");
            //Session["userprofile"] = CurrentUser.Text;
            //if (Session["username"] != null)
            //{
            //    Response.Redirect("Profile.aspx");
            //}
            //else
            //{
            //    Response.Redirect("User.aspx");
            //}
        }
        //protected void btnSubmit_Click(object sender, EventArgs e)
        //{
        //    lblModalTitle.Text = "Validation Errors List for HP7 Citation";
        //    lblModalBody.Text = "This is modal body";
        //    ScriptManager.RegisterStartupScript(Page, Page.GetType(), "myModal", "$('#myModal').modal();", true);
        //    upModal.Update();
        //}
    }
}