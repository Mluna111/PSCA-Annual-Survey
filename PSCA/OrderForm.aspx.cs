using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PSCA_Annual_Sruvey_2024.PSCA
{
    public partial class OrderForm : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void CalculateTotal() 
        {
            Page.Validate();
            int Price = 0;
            if (Page.IsValid)
            {
                if (TextQuantity.Text != null)
                {

                    if (optRegularPrice.Checked == true)
                    {
                        Price = 295;
                    }
                    else if (optMemberPrice.Checked == true)
                    {
                        Price = 95;
                    }

                    int Qty = (int.Parse(TextQuantity.Text));
                    int Total = Qty * Price;
                    //lblTotalCost.Text = T.ToString();
                    lblTotalCost.Text = String.Format("{0:C}", Total);
                }
            }
        }

        protected void optRegularPrice_CheckedChanged(object sender, EventArgs e)
        {
            CalculateTotal();
        }

        protected void optMemberPrice_CheckedChanged(object sender, EventArgs e)
        {
            CalculateTotal();
        }

        protected void TextQuantity_TextChanged(object sender, EventArgs e)
        {
            CalculateTotal();

        }

        protected void cmdSubmit_Click(object sender, EventArgs e)
        {

        }

        protected void cmdCancel_Click(object sender, EventArgs e)
        {

        }

        protected void chkBillingShipping_CheckedChanged(object sender, EventArgs e)
        {
            if (chkBillingShipping.Checked == true) 
            {
                txtShippingName.Text = txtBillingName.Text;
                txtShippingAddress1.Text = txtBillingAddress1.Text;
                txtShippingAddress2.Text = txtBillingAddress2.Text;
                txtShippingCity.Text = txtBillingCity.Text;
                txtShippingState.Text = txtBillingState.Text;
                txtShippingZipCode.Text = txtBillingZipCode.Text;


            }
            else
            {
                txtShippingName.Text = null;
                txtShippingAddress1.Text = null;
                txtShippingAddress2.Text = null;
                txtShippingCity.Text = null;
                txtShippingState.Text = null;
                txtShippingZipCode.Text = null;
            }
        }
    }
}