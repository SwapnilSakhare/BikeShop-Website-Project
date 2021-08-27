using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class signup : System.Web.UI.Page
{
    String u1, u2, u3, u4, u5, u6;
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["logid"] = null;
    }

    protected void submitbtn_Click(object sender, EventArgs e)
    {
        u2 = uname.Text.ToString().Trim();
        u3 = ucontact.Text.ToString().Trim();
        u4 = uemail.Text.ToString().Trim();
        u5 = uaddress.Text.ToString().Trim();
        u6 = upassword.Text.ToString().Trim();

        if (u2 != "" && u3 != "" && u4 != "" && u5 != "" && u6 != "")
        {
            submitdetails();
        }
        else{prntmsg.Text="all details required";}
    }

    private void submitdetails()
    {
       
        try
        {

            string str = ConfigurationManager.ConnectionStrings["cstr"].ConnectionString;
            SqlConnection sqlcon = new SqlConnection(str);

            sqlcon.Open();
            //command 1
            String strid = "select count(uid) from custtbl";
            SqlCommand cmd = new SqlCommand(strid, sqlcon);
            int rowid = Convert.ToInt32(cmd.ExecuteScalar());
            rowid = rowid + 1;
            String eid = rowid.ToString().Trim();
            u1 = "user" + eid;
            //
            //command 2
            string sqlquery = "insert into custtbl values('" + u1 + "','" + u2 + "','" + u3 + "','" + u4 + "','" + u5 + "','" + u6 + "')";
            SqlCommand cmd1 = new SqlCommand(sqlquery, sqlcon);


            int k = cmd1.ExecuteNonQuery();
            if (k != 0)
            {
                prntmsg.Text = "register Succesfully";
                

            }
            else
            {
                prntmsg.Text = "failed";
            }


            sqlcon.Close();


        }
        catch (Exception ex)
        {
            prntmsg.Text = "contact administrator";
            // prntmsg.Text = ex.Message;
        }
    }
  
}