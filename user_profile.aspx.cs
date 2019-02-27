using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web.Security;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
using System.IO;
using System.Globalization;
using System.Security.Cryptography;
using System.Security.Cryptography.X509Certificates;
using System.Web.UI.HtmlControls;


public partial class default_user_profile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        #region login_check
        int user_id = 0;
        try
        {
            user_id = Convert.ToInt32(Session["int_user_id"].ToString());
        }
        catch
        {
            Response.Redirect("~/default.aspx");
        }
        #endregion

        Multiview.ActiveViewIndex=0;



    }
    protected void mainpage_ServerClick(object sender, EventArgs e)//صفحه ی اصلی
    {
        Multiview.ActiveViewIndex = 0;
    }
    protected void main_diagnotice_ServerClick(object sender, EventArgs e)//مشخصات شخصی
    {
        Multiview.ActiveViewIndex = 1;
    }
    protected void diagnotic_change_ServerClick(object sender, EventArgs e)//تغییر مشخصات
    {
        Multiview.ActiveViewIndex = 2;
    }
    protected void security_ServerClick(object sender, EventArgs e)//تغییر رمزعبور و نام کاربری
    {
        Multiview.ActiveViewIndex = 3;

    }




    protected void change_security_ServerClick(object sender, EventArgs e)
    {
        Multiview.ActiveViewIndex = 4;
    }



    private void Show_Message(string message)
    {

        string script = "<script type=";
        script += '"'.ToString();
        script += "text/javascript";
        script += '"'.ToString();
        script += ">alert('" + message + "');</script>";


        // Gets the executing web page 
        Page page = HttpContext.Current.CurrentHandler as Page;

        // Checks if the handler is a Page and that the script isn't allready on the Page 
        if (page != null && !page.ClientScript.IsClientScriptBlockRegistered("alert"))
        {
            page.ClientScript.RegisterClientScriptBlock(script.GetType(), "alert", script);
        }
    }

    protected void btn_favori_ServerClick(object sender, EventArgs e)
    {
        Response.Redirect("~/list_goods.aspx?favori_user_id=" + Session["int_user_id"].ToString());
    }
}
