xmlport 50100 "Export Books"
{
    caption = 'Export Books';
    Format = Xml;
    UseRequestPage = false;
    Direction = Export;
    
    schema
    {
        textelement(Books)
        {
            tableelement(Book; Book)
            {
                fieldattribute(Number; Book."No.") { }
                fieldelement(Titel; Book.Title) { }
                fieldelement(Autor; Book.Autor) {}
                fieldelement(PageCount; Book."Page Count") { }
                fieldelement(HardCover; Book.Hardcover) {}               
            }
        }
    }
}