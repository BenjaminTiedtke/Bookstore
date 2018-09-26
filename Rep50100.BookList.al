report 50100 "Book List"
{
    caption = 'Book List';
    DefaultLayout = RDLC;
    ApplicationArea = All;
    UsageCategory = ReportsAndAnalysis;
    RDLCLayout = 'Rep50100.Booklist.rdlc';

    dataset
    {
        dataitem(SingleRowData;Integer)
        {      
            DataItemTableView = sorting(Number) where (Number = Const(1));
            
            column(COMPANYNAME;CompanyProperty.DisplayName()) { }
            column(ShowCounter;ShowCounter){}
        }
        dataitem(Book; Book)
        {
            RequestFilterFields = "No.", Autor;

            column(No_Book;"No.") { IncludeCaption = true; }

            column(Title_Book;Title){ IncludeCaption = true; }
            
            column(Autor_Book;Autor){ IncludeCaption = true; }
            
            column(Page_Count_Book;"Page Count"){ IncludeCaption = true; }

            column(Hardcover_Book;Hardcover) { IncludeCaption = true; }

            column(No__of_Customers_Book;"No. of Customers") { AutoCalcField = true; IncludeCaption = true;}

            

        }
    }
    
    requestpage
    {
        SaveValues = true;

        layout
        {
            area(content)
            {
                group(Options)
                {
                    Caption = 'Options';
                    field(ShowNoOfCust; ShowCounter)
                    {
                        ApplicationArea = All;
                        Caption = 'Show No. of Customers';
                    }
                }
            }
        }
    }

    labels
    {
        TitelLbl = 'Titel Label';
        PageCount = 'Page {0} / {1}';
    }

    trigger OnInitReport()
    begin
        ShowCounter := true;
    end;

    var
        ShowCounter: Boolean;

    
}