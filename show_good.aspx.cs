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


using System.Runtime.Serialization;
using System.Runtime.Serialization.Json;

using System.Web.Script.Serialization;

public partial class show_good : System.Web.UI.Page
{
    class spec  //specification class for repeater source list
    {
        public spec(string title, string text , string css_class)
        {
            this.title = title;
            this.text = text;
            this.css_class = css_class;
        }
        public string title { get; set; }
        public string text { get; set; }
        public string css_class { get; set; }
    }

    class url__  //good image urls class for repeater source list
    {
        public url__(string u, string c, string n)
        {
            url = u;
            _class = c;
            number = n;
        }
        public string url { get; set; }
        public string _class { get; set; }
        public string number { get; set; }
    }

    protected void Page_Load(object sender, EventArgs e)
    { 

        #region get good id
        int good_id = 0;
        try
        {
            good_id = Convert.ToInt32(Request["good_id"].ToString());
        }
        catch
        {
            //return;
        }
        #endregion

        #region this product is favorit?
        try
        {
            SqlCommand cmd4 = new SqlCommand();
            cmd4.Connection = SQLConnection_Class.sqlconn;
            cmd4.CommandText = "is_favorit?";
            cmd4.CommandType = CommandType.StoredProcedure;

            cmd4.Parameters.Add("product_id", SqlDbType.Int);
            cmd4.Parameters["product_id"].Value = good_id;

            cmd4.Parameters.Add("user_id", SqlDbType.Int);
            int uid = Convert.ToInt32(Session["int_user_id"].ToString());
            cmd4.Parameters["user_id"].Value = uid;

            object o = cmd4.ExecuteScalar();
            string result = o.ToString();
            if(result != "0")
            {
                btn_add_to_favori.Attributes["class"] = "active btn btn-success";
                btn_add_to_favori.InnerHtml = " پاک کردن از لیست مورد علاقه ها";
            }
        }
        catch
        {

        }

        #endregion

        #region send query to data base
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = SQLConnection_Class.sqlconn;
        cmd.CommandText = "select_product";
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("product_id", SqlDbType.Int);
        cmd.Parameters["product_id"].Value = good_id;
        SqlDataAdapter da_good = new SqlDataAdapter();
        DataSet ds_good = new DataSet();
        da_good.SelectCommand = cmd;
        ds_good.Clear();
        da_good.Fill(ds_good);
        #endregion

        #region show good


        btn_submit_comment.Attributes["good_id"] = good_id.ToString();
        btn_add_to_favori.Attributes["good_id"] = good_id.ToString();
        btn_map_show.Attributes["Location_Lat"] = ds_good.Tables[0].Rows[0]["Location_Lat"].ToString();
        btn_map_show.Attributes["Location_Lng"] = ds_good.Tables[0].Rows[0]["Location_Lng"].ToString();


        good_name.InnerHtml = ds_good.Tables[0].Rows[0]["Name"].ToString();
        store_link.InnerHtml = ds_good.Tables[0].Rows[0]["Store_Name"].ToString();
        store_link.Attributes.Add("store_id", ds_good.Tables[0].Rows[0]["Store_ID"].ToString());
        post_date.InnerText = ds_good.Tables[0].Rows[0]["Product_Insert_Date"].ToString();
        List<url__> image_list = new List<url__>();
        string[] urls = new string[10];
        urls = (ds_good.Tables[0].Rows[0]["Picture_Url"].ToString()).Split(',');
        for(int i=0;i<urls.Length;i++)
        {
            if(urls[i] != "")
            {
                if(i==0)
                {
                    image_list.Add(new url__(urls[i],"active","0"));
                }
                else
                {
                    image_list.Add(new url__(urls[i], "", i.ToString()));
                }
                
            }
        }
        Repeater1.DataSource = image_list;
        Repeater1.DataBind();
        Image_Repeater.DataSource = image_list;
        Image_Repeater.DataBind();

        good_store_name.InnerHtml = ds_good.Tables[0].Rows[0]["Store_Name"].ToString();
        good_store_name.Attributes.Add("store_id", ds_good.Tables[0].Rows[0]["Store_ID"].ToString());

        JavaScriptSerializer jss = new JavaScriptSerializer();
        string specification_json = ds_good.Tables[0].Rows[0]["Specifications"].ToString();
        object ob_specification = jss.DeserializeObject(specification_json);
        Dictionary<string, object> key_value = new Dictionary<string, object>();
        key_value = (Dictionary<string, object>)ob_specification;
        List<spec> spec_list = new List<spec>();
        bool counter = true;                             // baraye in ke dar html yeki tire shavad yeki roshan
        if(key_value != null)
        {
            foreach (KeyValuePair<string, object> entry in key_value)
            {
                if (counter)
                {
                    spec_list.Add(new spec(entry.Key.ToString(), entry.Value.ToString(), "specification-list-bloc-white"));
                    counter = false;
                }
                else
                {
                    spec_list.Add(new spec(entry.Key.ToString(), entry.Value.ToString(), "specification-list-bloc-black"));
                    counter = true;
                }
            }
        }
        Repeater_spec.DataSource = spec_list;
        Repeater_spec.DataBind();
        #endregion

        #region query for comments
        SqlCommand cmd2 = new SqlCommand();
        cmd2.Connection = SQLConnection_Class.sqlconn;
        cmd2.CommandText = "select_comments";
        cmd2.CommandType = CommandType.StoredProcedure;
        cmd2.Parameters.Add("product_id", SqlDbType.Int);
        cmd2.Parameters["product_id"].Value = good_id;
        SqlDataAdapter da_comment = new SqlDataAdapter();
        DataSet ds_comment = new DataSet();
        da_comment.SelectCommand = cmd2;
        ds_comment.Clear();
        da_comment.Fill(ds_comment);
        #endregion

        #region show comments
        foreach(DataRow dr in ds_comment.Tables[0].Rows)
        {
            if(dr["User_ID"].ToString() == null || dr["User_ID"].ToString() == "")
            {
                dr["User_Name"] = "Guest User";
            }
        }
        Repeater2.DataSource = ds_comment.Tables[0];
        Repeater2.DataBind();
        #endregion

    }

    protected void store_link_ServerClick(object sender, EventArgs e)
    {
        HtmlButton btn = (HtmlButton)sender;
        string id = btn.Attributes["store_id"].ToString();
        //Response.Redirect("~/show_shop.aspx?shop_id=" + id.ToString());  TODO
    }

    protected void btn_submit_comment_ServerClick(object sender, EventArgs e)
    {
        string comment = txt_comment.Value.ToString();

        HtmlButton b = (HtmlButton)sender;
        int product_id =Convert.ToInt32(b.Attributes["good_id"].ToString());

        int user_id = 0;
        try
        {
            user_id =Convert.ToInt32(Session["int_user_id"].ToString());
        }
        catch
        {
            user_id = 0;
        }

        string time = DateTime.Now.Hour.ToString();
        time += ":";
        time+= DateTime.Now.Minute.ToString();
        time += ":";
        time += DateTime.Now.Second.ToString();

        string date = DateTime.Now.Year.ToString() + "/" + DateTime.Now.Month.ToString() + "/" + DateTime.Now.Day.ToString();

        #region comment insert query
        SqlCommand cmd2 = new SqlCommand();
        cmd2.Connection = SQLConnection_Class.sqlconn;
        cmd2.CommandText = "insert_comment";
        cmd2.CommandType = CommandType.StoredProcedure;


        cmd2.Parameters.Add("product_id", SqlDbType.Int);
        cmd2.Parameters["product_id"].Value = product_id;


        cmd2.Parameters.Add("review", SqlDbType.NVarChar);
        cmd2.Parameters["review"].Value = comment;


        cmd2.Parameters.Add("user_id", SqlDbType.Int);
        if(user_id==0)
        {
            cmd2.Parameters["user_id"].Value = DBNull.Value;
        }
        else
        {
            cmd2.Parameters["user_id"].Value = user_id;
        }


        cmd2.Parameters.Add("time", SqlDbType.NChar);
        cmd2.Parameters["time"].Value = time;


        cmd2.Parameters.Add("date", SqlDbType.NChar);
        cmd2.Parameters["date"].Value = date;

        //SQLConnection_Class.Connect();
        try
        {
            cmd2.ExecuteNonQuery();
        }
        catch
        {

        }
        #endregion

        #region query for comments
        SqlCommand cmd3 = new SqlCommand();
        cmd3.Connection = SQLConnection_Class.sqlconn;
        cmd3.CommandText = "select_comments";
        cmd3.CommandType = CommandType.StoredProcedure;
        cmd3.Parameters.Add("product_id", SqlDbType.Int);
        cmd3.Parameters["product_id"].Value = product_id;
        SqlDataAdapter da_comment = new SqlDataAdapter();
        DataSet ds_comment = new DataSet();
        da_comment.SelectCommand = cmd3;
        ds_comment.Clear();
        da_comment.Fill(ds_comment);
        #endregion

        #region show comments
        foreach (DataRow dr in ds_comment.Tables[0].Rows)
        {
            if (dr["User_ID"].ToString() == null || dr["User_ID"].ToString() == "")
            {
                dr["User_Name"] = "Guest User";
            }
        }
        //Repeater2.Controls.Clear();
        Repeater2.DataSource = ds_comment.Tables[0];
        Repeater2.DataBind();
        #endregion

    }

    protected void add_to_favorit_ServerClick(object sender, EventArgs e)
    {
        try
        {
            string uid = Session["int_user_id"].ToString();
            HtmlButton btn = (HtmlButton)sender;
            string product_id = btn.Attributes["good_id"].ToString();

            if(btn_add_to_favori.Attributes["class"].ToString() == "active btn btn-default")
            {
                #region favorit insert query
                SqlCommand cmd2 = new SqlCommand();
                cmd2.Connection = SQLConnection_Class.sqlconn;
                cmd2.CommandText = "insert_favorit";
                cmd2.CommandType = CommandType.StoredProcedure;

                cmd2.Parameters.Add("user_id", SqlDbType.Int);
                cmd2.Parameters["user_id"].Value = uid;


                cmd2.Parameters.Add("product_id", SqlDbType.Int);
                cmd2.Parameters["product_id"].Value = product_id;


                try
                {
                    cmd2.ExecuteNonQuery();
                    btn.Attributes["class"] = "active btn btn-success";
                    btn_add_to_favori.InnerHtml = " پاک کردن از لیست مورد علاقه ها";
                }
                catch
                {

                }
                #endregion
            }
            else if(btn_add_to_favori.Attributes["class"].ToString() == "active btn btn-success")
            {
                #region favorit delete query
                SqlCommand cmd2 = new SqlCommand();
                cmd2.Connection = SQLConnection_Class.sqlconn;
                cmd2.CommandText = "delete_favorit";
                cmd2.CommandType = CommandType.StoredProcedure;

                cmd2.Parameters.Add("user_id", SqlDbType.Int);
                cmd2.Parameters["user_id"].Value = uid;


                cmd2.Parameters.Add("product_id", SqlDbType.Int);
                cmd2.Parameters["product_id"].Value = product_id;


                try
                {
                    cmd2.ExecuteNonQuery();
                    btn.Attributes["class"] = "active btn btn-default";
                    btn.InnerHtml = " افزودن به لیست مورد علاقه ها";
                }
                catch
                {

                }
                #endregion
            }
        }
        catch(Exception ee)
        {
            if(ee.Message.ToString() == "Object reference not set to an instance of an object.")
            {
                Show_Message("برای افزودن کالا به لیست مورد علاقه ها ابتدا باید وارد شوید");
            }
        }
    }

    protected void btn_map_show_ServerClick(object sender, EventArgs e)
    {
        HtmlButton btn = (HtmlButton)sender;
        string Location_Lat = btn.Attributes["Location_Lat"].ToString();
        string Location_Lng = btn.Attributes["Location_Lng"].ToString();
        Response.Redirect("~/map.aspx?Location_Lat=" + Location_Lat+ "&Location_Lng="+Location_Lng);
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
}