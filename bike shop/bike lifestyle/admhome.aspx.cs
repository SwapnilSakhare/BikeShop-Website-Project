using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admhome : System.Web.UI.Page
{
    String sr1, sr2, sr3, sr4, sr5;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["logid"] == null)
        {
            Response.Redirect("home.aspx");
        }
    }
    protected void submitbtn_Click(object sender, EventArgs e)
    {
        sr2 = srcontact.Text.ToString().Trim();
        sr3 = srdetails.Text.ToString().Trim();
        sr4 = DateTime.Now.ToString().Trim();
        sr5 = "Your feedback";
        if(sr2!="" && sr3!="" && sr4!="" && sr5!="")
        {
            submitdetails();
        }
        else{prntmsg.Text="all fields required";}
    }

    private void submitdetails()
    {

        try
        {

            string str = ConfigurationManager.ConnectionStrings["cstr"].ConnectionString;
            SqlConnection sqlcon = new SqlConnection(str);

            sqlcon.Open();
            //command 1
            String strid = "select count(srid) from suppreqtbl";
            SqlCommand cmd = new SqlCommand(strid, sqlcon);
            int rowid = Convert.ToInt32(cmd.ExecuteScalar());
            rowid = rowid + 1;
            String eid = rowid.ToString().Trim();
            sr1 = "user" + eid;
            //
            //command 2
            string sqlquery = "insert into suppreqtbl values('" + sr1 + "','" + sr2 + "','" + sr3 + "','" + sr4 + "','" + sr5 + "')";
            SqlCommand cmd1 = new SqlCommand(sqlquery, sqlcon);


            int k = cmd1.ExecuteNonQuery();
            if (k != 0)
            {
                prntmsg.Text = " Succesfully";
                Response.Redirect("admhome.aspx");

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