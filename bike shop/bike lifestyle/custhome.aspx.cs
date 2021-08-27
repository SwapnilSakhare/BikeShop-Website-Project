using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class custhome : System.Web.UI.Page
{
    String p1, p2, p3, p4;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["logid"] == null)
        {
            Response.Redirect("home.aspx");
        }
    }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if(e.CommandName=="imgbtn")
        {
            Session["blogid"] = e.CommandArgument.ToString();
            Response.Redirect("blogpage.aspx");
        }
    }
    protected void postbtn_Click(object sender, EventArgs e)
    {
        p2 = Session["logid"].ToString();
        p4 = pcomment.Text.ToString().Trim();

        uploadpost.SaveAs(Server.MapPath("~/blogimage/") + Path.GetFileName(uploadpost.FileName));

        p3 = "blogimage/" + Path.GetFileName(uploadpost.FileName);

        if(p2!="" && p3!="" && p4!="")
        { submitdetails(); }
        else{prntmsg.Text="fill all details";}
    }
    private void submitdetails()
    {

        try
        {

            string str = ConfigurationManager.ConnectionStrings["cstr"].ConnectionString;
            SqlConnection sqlcon = new SqlConnection(str);

            sqlcon.Open();
            //command 1
            String strid = "select count(bgid) from blogtbl";
            SqlCommand cmd = new SqlCommand(strid, sqlcon);
            int rowid = Convert.ToInt32(cmd.ExecuteScalar());
            rowid = rowid + 1;
            String eid = rowid.ToString().Trim();
            p1 = "bgi" + eid;
            //
            //command 2
            string sqlquery = "insert into blogtbl values('" + p1 + "','" + p2 + "','" + p3 + "','" + p4 + "')";
            SqlCommand cmd1 = new SqlCommand(sqlquery, sqlcon);


            int k = cmd1.ExecuteNonQuery();
            if (k != 0)
            {
                prntmsg.Text = "Succesfully";
                Response.Redirect("custhome.aspx");


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