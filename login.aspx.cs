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


public partial class register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!Page.IsPostBack)
        {
            Captcha_Image ci = new Captcha_Image();
            captcha.Attributes["src"] = ci.create_captcha_image();
        }
    }

    protected void enter_click( object sender, EventArgs e)
    {
        string captcha_code = txt_captcha_code.Value.ToString();
        if(captcha_code == Session["captcha_image_text"].ToString())
        {
            authentication(sel_sign_in_type.Value.ToString(), txt_username.Value.ToString(), txt_password.Value.ToString());
        }
        else
        {
            Show_Message("متن تصویر اشتباه است لطفا دوباره وارد نمایید");
            Captcha_Image ci = new Captcha_Image();
            captcha.Attributes["src"] = ci.create_captcha_image();
        }
    }
    protected void authentication(string sign_in_mode , string username , string password)
    {
        SqlCommand cmd_check_user_login = new SqlCommand();
        cmd_check_user_login.Connection = SQLConnection_Class.sqlconn;
        cmd_check_user_login.CommandType = CommandType.StoredProcedure;
        if(sign_in_mode == "کاربر")
        {
            cmd_check_user_login.CommandText = "check_user_login";
        }
        if(sign_in_mode == "فروشنده")
        {
            cmd_check_user_login.CommandText = "check_store_boss_login";
        }
        if (sign_in_mode == " انتخاب نوع کاربر ")
        {
            Show_Message("نوع ورود خود را انتخاب کنید");
            return;
        }
        cmd_check_user_login.Parameters.Add("@Username", SqlDbType.NVarChar);
        cmd_check_user_login.Parameters.Add("@Password", SqlDbType.NVarChar);

        try
        {
            cmd_check_user_login.Parameters["@Username"].Value = username;
            cmd_check_user_login.Parameters["@Password"].Value = password;
            object User_ID = cmd_check_user_login.ExecuteScalar();
            int int_user_ID = Convert.ToInt32(User_ID);
            if (int_user_ID != 0)
            {
                if (sign_in_mode == "کاربر")
                {
                    Session["user_login"] = "user";
                }
                if (sign_in_mode == "فروشنده")
                {
                    Session["user_login"] = "store_boss";
                }
                Session["int_user_id"] = int_user_ID.ToString();
                Response.Redirect("~/default.aspx");
            }
            else
            {
                Show_Message("نام کاربری یا رمز عبور صحیح نیست");
                Captcha_Image ci = new Captcha_Image();
                captcha.Attributes["src"] = ci.create_captcha_image();

            }
        }
        catch(Exception e)
        {
            //string s =e.ToString();
            //return;
        }
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


    protected void btn_register_ServerClick(object sender, EventArgs e)
    {
        Response.Redirect("~/sign_up.aspx");
    }
}
