page 50100 "Book Card"
{
    PageType = Card;
    SourceTable = Book;
    Caption = 'Book Card';

    layout
    {
        area(content)
        {
            group(General)
            {
                caption = 'General';
                
                field("No."; "No.")
                {
                    ApplicationArea = All;  
                }
                field(Title; Title)
                {
                     ApplicationArea = All; 
                }
                field(Autor;Autor)
                {
                    ApplicationArea = All;
                }
                field(Hardcover;Hardcover)
                {
                    ApplicationArea = All;
                }
                field("Page Count";"Page Count")
                {
                    ApplicationArea = All;
                }
                field(Testfield;Testfield)
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}