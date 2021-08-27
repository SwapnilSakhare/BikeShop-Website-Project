using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class custbuybike : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["logid"] == null)
        {
            Response.Redirect("home.aspx");
        }
    }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "quanbtn")
        {
            Label lbl = e.Item.FindControl("bpriceLabel") as Label;
            Session["pramnt"] = lbl.Text.ToString().Trim();

            Label lbl1 = e.Item.FindControl("bquantityLabel") as Label;
            Session["prqntt"] = lbl1.Text.ToString().Trim();
            Response.Redirect("custbike.aspx?bkid="+e.CommandArgument.ToString());

        }
    }
}