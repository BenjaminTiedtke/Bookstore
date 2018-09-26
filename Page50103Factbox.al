page 50103 "Book FactBox"
{
    PageType = CardPart;
    SourceTable = Book;
    Caption = 'Book FactBox';
    
    layout
    {
        area(content)
        {
            group("Customer Books")
            {
                field("No.";"No.")
                {
                    ApplicationArea = All;
                    DrillDownPageId = "Book Card";
                }
                field(Title;Title)
                {
                    ApplicationArea = All;
                }
                field(Autor;Autor)
                {
                    ApplicationArea = All;
                }
                field("No. of Customers";"No. of Customers")
                {
                    ApplicationArea = All;                    
                }
            }
        }
    }
}