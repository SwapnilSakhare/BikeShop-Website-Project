using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class blogpage : System.Web.UI.Page
{
    String c1, c2, c3, c4;
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["logid"]==null)
        { Response.Redirect("home.aspx"); }
       
    }

    protected void commentbtn_Click(object sender, EventArgs e)
    {
        c2 = Session["logid"].ToString();
        c3 = commenttxt.Text.ToString();
        c4 = Session["blogid"].ToString();
        if(c2!="" && c3!="" && c4!="")
        { submitdetails(); }
        else{prntmsg.Text="place a comment first";}
    }
    private void submitdetails()
    {

        try
        {

            string str = ConfigurationManager.ConnectionStrings["cstr"].ConnectionString;
            SqlConnection sqlcon = new SqlConnection(str);

            sqlcon.Open();
            //command 1
            String strid = "select count(cid) from commenttbl";
            SqlCommand cmd = new SqlCommand(strid, sqlcon);
            int rowid = Convert.ToInt32(cmd.ExecuteScalar());
            rowid = rowid + 1;
            String eid = rowid.ToString().Trim();
            c1 = "cm" + eid;
            //
            //command 2
            string sqlquery = "insert into commenttbl values('" + c1 + "','" + c2 + "','" + c3 + "','" + c4 + "')";
            SqlCommand cmd1 = new SqlCommand(sqlquery, sqlcon);


            int k = cmd1.ExecuteNonQuery();
            if (k != 0)
            {
                prntmsg.Text = "Succesfully";
                Response.Redirect("blogpage.aspx");

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