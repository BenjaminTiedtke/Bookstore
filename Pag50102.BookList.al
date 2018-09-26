page 50102 "Book List"
{
    PageType = List;
    SourceTable = Book;
    Editable = false;
    Caption = 'Books';
    CardPageId = "Book Card";
    ApplicationArea = All;
    UsageCategory = Lists;
    
    layout
    {
        area(content)
        {
            repeater(BookRepeater)
            {
                field("No."; "No.")
                {
                   ApplicationArea = All; 
                }
                field(Title;Title)
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
            
            }
        }
    }
    actions
    {
        area(processing)
        {
            action("Card")
            {
                Promoted = true;
                ApplicationArea = All;

                trigger OnAction()
                begin
                    Page.RUN(50100,rec)
                end;
            }
        }
    }
}