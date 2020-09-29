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
using System.Globalization;


namespace LoginWithBootstrap
{
    public partial class Profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["userprofile"] != null)
            {
                getuserpro.Text = Session["userprofile"].ToString();

            }
            else
            {
                Response.Redirect("User.aspx");
            }
            if (!IsPostBack)
            {
                GetDataFromDB();

            }
            //if(!IsPostBack)
            //{
            //    Label8.Visible = false;
            //    HyperLink13.Visible = false;
            //}
        }

        protected void but_Click(object sender, EventArgs e)
        {
            //HttpPostedFile postedfile = file1.PostedFile;
            //string filename = Path.GetFileName(postedfile.FileName);
            //string fileextension = Path.GetExtension(filename);

            //if (fileextension.ToLower() == ".jpg" || fileextension.ToLower() == ".bmp" ||fileextension.ToLower() == ".gif" ||fileextension.ToLower() == ".png")
            //{
            //    Stream stream = postedfile.InputStream;
            //    BinaryReader binaryreader = new BinaryReader(stream);
            //    byte[] bytes = binaryreader.ReadBytes((int)stream.Length);

            //    String CS = ConfigurationManager.ConnectionStrings["ConnectionString3"].ConnectionString;
            //    SqlConnection con = new SqlConnection(CS);
            //    con.Open();
            //    SqlCommand cmd = new SqlCommand("completeprofile", con);
            //    cmd.CommandType = System.Data.CommandType.StoredProcedure;

            //    SqlParameter ParamName = new SqlParameter()
            //    {

            //    }

            //    con.Close();

        }

        private void GetDataFromDB()
        {
            String CS = ConfigurationManager.ConnectionStrings["ProfileDB"].ConnectionString;
            SqlConnection con = new SqlConnection(CS);
            SqlDataAdapter da = new SqlDataAdapter("getprofile", con);
            SqlCommand cmd = new SqlCommand("getprofile", con);
            da.SelectCommand.CommandType = CommandType.StoredProcedure;
            da.SelectCommand.Parameters.AddWithValue("@uname", getuserpro.Text);

            DataSet ds = new DataSet();
            da.Fill(ds, "localprofile");

            ds.Tables["localprofile"].PrimaryKey = new DataColumn[] { ds.Tables["localprofile"].Columns["profileid"] };

            Cache.Insert("DATASET", ds, null, DateTime.Now.AddHours(24), System.Web.Caching.Cache.NoSlidingExpiration);

            gvlocalprofile.DataSource = ds;
            gvlocalprofile.DataBind();


        }
        public string checkNull(object myValue)
        {
            //DateTime dateTime;
            if (myValue == DBNull.Value)
            {
                return "Null";
            }

            //if (DateTime.TryParse(myValue.ToString(), out dateTime))
            //{
            //    string MyString = myValue.ToString();
            //    DateTime dt1 = DateTime.ParseExact(MyString, "yyyy-MM-dd HH:mm tt",
            //                                      null).Date;
            //    return dt1.ToString();
            //}
            return myValue.ToString();
        }
        public string checkPic(object mypic)
        {
            if (mypic == DBNull.Value)
            {
                return "defaultlogo.ico";
            }

            return mypic.ToString();
        }
        public string checkDate(object myDate)
        {
            if (myDate == DBNull.Value)
            {
                return "Null";
            }
            DateTime dateValue = Convert.ToDateTime(myDate).Date;

            return dateValue.ToString("dd-MM-yyyy");
        }
        private void GetDataFromCache()
        {
            if (Cache["DATASET"] != null)
            {
                DataSet ds = (DataSet)Cache["DATASET"];
                gvlocalprofile.DataSource = ds;
                gvlocalprofile.DataBind();
            }
        }

        protected void gvlocalprofile_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gvlocalprofile.EditIndex = e.NewEditIndex;
            GetDataFromCache();
        }

        protected void gvlocalprofile_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            if (Cache["DATASET"] != null)
            {
                DataSet ds = (DataSet)Cache["DATASET"];
                DataRow dr = ds.Tables["localprofile"].Rows.Find(e.Keys["profileid"]);
                FileUpload FileUpload1 = (FileUpload)gvlocalprofile.Rows[e.RowIndex].FindControl("FileUpload1");
                string path = "~/pics/";
                string fname = FileUpload1.FileName;
                if (FileUpload1.HasFile)
                {
                    path += FileUpload1.FileName;
                    //save image in folder    
                    FileUpload1.SaveAs(MapPath(path));
                }
                else
                {
                    // use previous user image if new image is not changed    
                    Image img = (Image)gvlocalprofile.Rows[e.RowIndex].FindControl("img_user");
                    path = img.ImageUrl;
                }
                dr["name"] = e.NewValues["name"];
                dr["bio"] = e.NewValues["bio"];
                dr["mail"] = e.NewValues["mail"];
                dr["phone"] = e.NewValues["phone"];
                dr["city"] = e.NewValues["city"];
                dr["gender"] = e.NewValues["gender"];
                if((e.NewValues["birth"]) is string)
                {

                    DateTime dt = DateTime.ParseExact(e.NewValues["birth"].ToString(), "MM/dd/yyyy", CultureInfo.InvariantCulture);
                    //DateTime bdate = DateTime.ParseExact(e.NewValues["birth"].ToString(), "dd/MM/yyyy", null);
                    dr["birth"] = dt.Date;
                }
                else
                {
                    dr["birth"] = e.NewValues["birth"] ?? DBNull.Value;
                }
                
                //dr["birth"] = e.NewValues["birth"] ? DateTime.Parse(e.NewValues["birth"]) : (object)DBNull.Value;
                //dr["birth"] = e.NewValues["birth"];
                //dr["uname"] = e.NewValues["uname"];
                //dr["pass"] = e.NewValues["pass"];
                if (FileUpload1.HasFile)
                {
                    dr["picture"] = fname;
                }
                Cache.Insert("DATASET", ds, null, DateTime.Now.AddHours(24), System.Web.Caching.Cache.NoSlidingExpiration);
                gvlocalprofile.EditIndex = -1;
                GetDataFromCache();
            }
            btnupdatedb_Click1(this, null);

        }

        protected void gvlocalprofile_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gvlocalprofile.EditIndex = -1;
            GetDataFromCache();
        }

        protected void gvlocalprofile_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            if (Cache["DATASET"] != null)
            {
                DataSet ds = (DataSet)Cache["DATASET"];
                DataRow dr = ds.Tables["localprofile"].Rows.Find(e.Keys["profileid"]);
                dr.Delete();
                Cache.Insert("DATASET", ds, null, DateTime.Now.AddHours(24), System.Web.Caching.Cache.NoSlidingExpiration);
                GetDataFromCache();
            }
        }

        protected void btnupdatedb_Click1(object sender, EventArgs e)
        {
            String CS = ConfigurationManager.ConnectionStrings["ProfileDB"].ConnectionString;
            SqlConnection con = new SqlConnection(CS);
            SqlDataAdapter da = new SqlDataAdapter("getprofile", con);
            SqlCommand cmd = new SqlCommand("getprofile", con);
            da.SelectCommand.CommandType = CommandType.StoredProcedure;
            da.SelectCommand.Parameters.AddWithValue("@uname", getuserpro.Text);

            DataSet ds = (DataSet)Cache["DATASET"];

            string strupdate = "Update profile set name = @name, bio = @bio, mail = @mail, phone = @phone, city = @city, gender = @gender, birth = @birth, uname = @uname, pass = @pass, picture = @picture where profileid = @profileid";

            SqlCommand updatecommand = new SqlCommand(strupdate, con);

            updatecommand.Parameters.Add("@profileid", SqlDbType.Int, 0, "profileid");
            updatecommand.Parameters.Add("@name", SqlDbType.VarChar, 50, "name");
            updatecommand.Parameters.Add("@bio", SqlDbType.VarChar, 500, "bio");
            updatecommand.Parameters.Add("@mail", SqlDbType.VarChar, 30, "mail");
            updatecommand.Parameters.Add("@phone", SqlDbType.VarChar, 30, "phone");
            updatecommand.Parameters.Add("@city", SqlDbType.VarChar, 20, "city");
            updatecommand.Parameters.Add("@gender", SqlDbType.VarChar, 10, "gender");
            updatecommand.Parameters.Add("@birth", SqlDbType.Date, 1000, "birth");
            updatecommand.Parameters.Add("@uname", SqlDbType.VarChar, 30, "uname");
            updatecommand.Parameters.Add("@pass", SqlDbType.VarChar, 30, "pass");
            updatecommand.Parameters.Add("@picture", SqlDbType.VarChar, 50, "picture");

            da.UpdateCommand = updatecommand;
            string strdelete = "Delete from profile where profileid = @profileid";
            SqlCommand deletecommand = new SqlCommand(strdelete, con);
            deletecommand.Parameters.Add("@profileid", SqlDbType.Int, 0, "profileid");
            da.DeleteCommand = deletecommand;

            da.Update(ds, "localprofile");
            ScriptManager.RegisterStartupScript(this.Page, this.Page.GetType(),
          "err_msg",
          "alert('Tour is done. Please click Home, Experience and Explore the website.There are many other things. )');",
          true);
        }






    }
}