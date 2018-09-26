pageextension 50100 "Customer Book Extension" extends "Customer Card"
{
    layout
    {
        // Add changes to page layout here

        addlast(General)
        {
            field("Favorite Book No.";"Favorite Book No.")
            {
               ApplicationArea = All; 
            }
        }
    }

}