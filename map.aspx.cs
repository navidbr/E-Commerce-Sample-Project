using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class map : System.Web.UI.Page
{
    private string _lat = "";
    private string _lng = "";

    protected string LAT { get { return _lat; } }
    protected string LNG { get { return _lng; } }
    protected void Page_Load(object sender, EventArgs e)
    {
        #region get location
        try
        {
            _lat = Request["Location_Lat"].ToString();
            _lng = Request["Location_Lng"].ToString();
        }
        catch
        {
            Response.Redirect("~/default.aspx");
        }
        #endregion
    }
}