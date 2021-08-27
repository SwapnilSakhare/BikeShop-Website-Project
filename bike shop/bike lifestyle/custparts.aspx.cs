using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class custparts : System.Web.UI.Page
{
    String p1, p2, p3, p4, p5, p6, p7, p8;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["logid"] == null)
        {
            Response.Redirect("home.aspx");
        }
        pamount.Text = Session["pramnt"].ToString().Trim();
        pid.Text = Request.QueryString["bkpid".ToString()];

    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        p2 = Request.QueryString["bkpid".ToString()];
        p3 = Session["logid"].ToString().Trim();
        p4 = Session["pramnt"].ToString().Trim();
        //p5 = pcardno.Text.ToString().Trim();
        //p6 = patmpin.Text.ToString().Trim();
        //p7 = pexdate.Text.ToString().Trim();
        //p8 = pcvv.Text.ToString().Trim();


        if (p2 != "" && p3 != "" && p4 != ""/* && p5 != "" && p6 != "" && p7 != "" && p8 != ""*/)
        { submitdetails(); }
        else { prntmsg.Text = "all fields required"; }
    }

    private void submitdetails()
    {

        try
        {

            string str = ConfigurationManager.ConnectionStrings["cstr"].ConnectionString;
            SqlConnection sqlcon = new SqlConnection(str);

            sqlcon.Open();
            //command 1
            String strid = "select count(reqid) from requesttbl";
            SqlCommand cmd = new SqlCommand(strid, sqlcon);
            int rowid = Convert.ToInt32(cmd.ExecuteScalar());
            rowid = rowid + 1;
            String eid = rowid.ToString().Trim();
            p1 = "req" + eid;
            //
            //command 2
            string sqlquery = "insert into requesttbl values('" + p1 + "','" + p2 + "','" + p3 + "','" + p4 + "')";
            SqlCommand cmd1 = new SqlCommand(sqlquery, sqlcon);


            int k = cmd1.ExecuteNonQuery();
            if (k != 0)
            {
                prntmsg.Text = " Purchased Succesfully";
                submitupdatedetails();

            }
            else
            {
                prntmsg.Text = "failed";
            }


            sqlcon.Close();


        }
        catch (Exception ex)
        {
            prntmsg.Text = "Something went wrong Contact Administrator";
            // prntmsg.Text = ex.Message;
        }
    }
    private void submitupdatedetails()
    {

        try
        {

            String qntt = Session["prqntt"].ToString().Trim();
            int qn = Convert.ToInt32(qntt);
            qn = qn - 1;
            string str = ConfigurationManager.ConnectionStrings["cstr"].ConnectionString;
            SqlConnection sqlcon = new SqlConnection(str);

            sqlcon.Open();

            //command 2
            string sqlquery = "update bikeparttbl set bpquantity='" + qn + "' where bpid='" + p2 + "' ";
            SqlCommand cmd1 = new SqlCommand(sqlquery, sqlcon);


            int k = cmd1.ExecuteNonQuery();
            if (k != 0)
            {

                Response.Write("sussessfull");

            }
            else
            {
                Response.Write("failed");
            }


            sqlcon.Close();


        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
            // prntmsg.Text = ex.Message;
        }
    }

}