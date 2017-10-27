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
                image = GetLines;
                trigger OnAction();
                var
                cu50100 : Codeunit 50100;
                begin 
                 cu50100.GetAirplaneTypes;  
                end;
            }
            Action(CreateNewItem)
            {
                Promoted = True;
                Caption = 'Create new Item';
                ApplicationArea = All;
                image = NewItem;
                trigger OnAction();
                var
                rec27 : record 27;
                begin 
                  TESTFIELD("ICAO Code");
                  rec27.init;
                  rec27."No." := '';
                  rec27.insert(TRUE);
                  rec27."AIR Airplane Type" :=  "ICAO Code";
                  rec27.Description := Description;
                  rec27.Modify(TRUE);
                  page.RUN(30,rec27);
                  
                end;
            }
        }
    }
}