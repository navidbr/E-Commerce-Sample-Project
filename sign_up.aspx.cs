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


public partial class sign_up : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btn_submit_ServerClick(object sender, EventArgs e)
    {
        //if (txt_first_name.Value.ToString() != "" && txt_last_name.Value.ToString() != "" && txt_email.Value.ToString() != "" && txt_address.Value.ToString() != "" && sel_state.Value.ToString() != " لطفا استان خود را انتخاب کنید" && sel_city.Value.ToString() != " لطفا شهر خود را انتخاب کنید" && sel_sign_up_type.Value.ToString() != " لطفا نوع ثبت نام خود را انتخاب کنید" )
        if(true)
        {
            string first_name = "";
            string last_name = "";
            string email = "";
            string phone = "";
            string address = "";
            string region = "";
            string city = "";
            string sign_up_type = "";
            string store_address = "";
            string store_name = "";
            string sex = "";
            string describe = "";
            first_name = txt_first_name.Value.ToString();
            last_name = txt_last_name.Value.ToString();
            email = txt_email.Value.ToString();
            phone = txt_phone.Value.ToString();
            address = txt_address.ToString();
            region = sel_state.Value.ToString();
            city = sel_city.Value.ToString();
            sign_up_type = sel_sign_up_type.Value.ToString();
            if(sign_up_type == " فروشنده ")
            {
                store_address = txt_store_address.Value.ToString();
                store_name = txt_store_name.Value.ToString();
            }
            if(chb_man.Checked)
            {
                sex = "man";
            }
            if(chb_woman.Checked)
            {
                sex = "woman";
            }
            describe = txt_describe.Value.ToString();
            SqlCommand cmd = new SqlCommand();


        }
    }
}