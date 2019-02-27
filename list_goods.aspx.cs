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
public partial class list_goods : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        #region get good type id or favori user id 
        int good_type_id = 0;
        int user_id = 0;
        string mode = "";
        try
        {
            good_type_id = Convert.ToInt32(Request["good_type_id"].ToString());
            mode = "good_type_id";
        }
        catch
        {
            try
            {
                user_id= Convert.ToInt32(Request["favori_user_id"].ToString());
                mode = "favori_user_id";
            }
            catch
            {

            }
            
        }
        #endregion

        #region send query to data base

        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter da_good = new SqlDataAdapter();
        DataSet ds_good = new DataSet();

        if (mode == "good_type_id")
        {
            cmd.Connection = SQLConnection_Class.sqlconn;
            cmd.CommandText = "select_products";
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("product_type_id", SqlDbType.Int);
            cmd.Parameters["product_type_id"].Value = good_type_id;
            da_good.SelectCommand = cmd;
            ds_good.Clear();
            try
            {
                da_good.Fill(ds_good);
            }
            catch
            {

            }
        }
        else
        {
            cmd.Connection = SQLConnection_Class.sqlconn;
            cmd.CommandText = "select_favorit";
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("user_id", SqlDbType.Int);
            cmd.Parameters["user_id"].Value = user_id;
            da_good.SelectCommand = cmd;
            ds_good.Clear();
            try
            {
                da_good.Fill(ds_good);
            }
            catch
            {

            }
        }
        

        #endregion

        #region list goods
        foreach(DataRow dr in ds_good.Tables[0].Rows)
        {
            try
            {
                string s = dr["Picture_Url"].ToString();
                string[] ss = new string[100];
                ss = s.Split(',');
                dr["Picture_Url"] = ss[0];
            }
            catch
            {

            }
            string sss = "";
            try
            {
                sss = dr["Exist"].ToString();
            }
            catch
            {

            }
            
            if (sss == "exist") dr["Exist"] = "موجود";
            if (sss == "not exist") dr["Exist"] = "نا موجود";
            if (sss == "notexist") dr["Exist"] = "نا موجود";
            if(dr["Product_Score"]==DBNull.Value)
            {
                dr["Product_Score"] = "0";
            }
        }
        try
        {
            Repeater1.DataSource = ds_good.Tables[0];
            Repeater1.DataBind();
        }
        catch
        {

        }
        
        #endregion
    }

    protected void product_serverclick(object sender, EventArgs e)
    {
        HtmlAnchor a = (HtmlAnchor)sender;
        int selected_product_id =Convert.ToInt32(a.Attributes["product_id"].ToString());
        Response.Redirect("~/show_good.aspx?good_id=" + selected_product_id.ToString());
    }
}