pageextension 50100 "Air Airplane Type" extends "Item Card"
{
    layout
    {
        addafter("Item Category Code")
        {
            field("Air Airplane Type";"Air Airplane Type")
            {
                ApplicationArea = All;
                Caption = 'Air Airplane Type';
            }


        }
    
    }

    actions
    {
        // Add changes to page actions here
    }
    
    var
        myInt : Integer;
}