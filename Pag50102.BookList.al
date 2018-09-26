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
        area(Reporting)
        {
            action("Print Books")
            {
                Promoted = true;
                ApplicationArea = All;
                Caption = 'Print Books';
                PromotedCategory = Report;
                trigger OnAction()               
                begin
                    Report.Run(50100, true, false, rec);    
                end;                          
            }
            action(Export)
            {
                Promoted = true;
                Image = CreateXMLFile;
                ApplicationArea = All;
                Caption = 'Export Books';
                PromotedCategory = Report;
                trigger OnAction()  
                var 
                    ExportBooks: XmlPort "Export Books";
                    Books: Record Book;
                begin 
                    CurrPage.SetSelectionFilter(Books);
                    ExportBooks.SetTableView(Books);
                    ExportBooks.Run;
                end;
            }
        }
        
    }
}