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
        addbefore(Control149)
        {
            part(BooksFactBox; "Book FactBox")
            {
                Caption = 'Book Details';
                SubPageLink = "No." = field("Favorite Book No.");
                ApplicationArea = All;
            }
        }        
    }

}