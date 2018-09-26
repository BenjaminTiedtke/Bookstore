profile "BTIProfile"
{
    Description = 'Test Profil in Schulung';
    RoleCenter = "Order Processor Role Center";
    Customizations = BTICustomerListCustomization, BTICustomerCardCustomization;
}

pagecustomization BTICustomerListCustomization customizes "Customer List"
{
    layout
    {
        modify("Location Code")
        {
            Visible = false;

        }
    }
    actions
    {
        moveafter(NewSalesOrder; NewSalesInvoice)

    }

    //Variables, procedures and triggers are not allowed on Page Customizations
}

pagecustomization BTICustomerCardCustomization customizes "Customer Card"
{
    layout
    {
        modify("Location Code")
        {
            Visible = false;

        }
    }
    actions
    {
        moveafter(NewSalesOrder; NewSalesInvoice)
    }
}