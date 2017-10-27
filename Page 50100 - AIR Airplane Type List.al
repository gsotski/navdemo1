page 50100 "AIR Airplane Type List"
{
    PageType = List;
    SourceTable = "AIR Airplane Type";
    

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("ICAO Code";"ICAO Code")
                {
                    ApplicationArea = All;
                }
                field("Description";Description)
                {
                    ApplicationArea  = All;
                }
                field("Popularity";"Popularity")
                {
                    ApplicationArea = All;
                }
            }
        }
        area(factboxes)
        {
        }
    }
    
    actions
    {
        area(processing)
        {
            Action(getAirType)
            {
                Promoted = True;
                Caption = 'Get Airplane Types';
                ApplicationArea = All;
                image = GetLines
                trigger OnAction();
                var
                cu50100 : Codeunit 50100;
                begin 
                 cu50100.GetAirplaneTypes;  
                end;
            }
        }
    }
}