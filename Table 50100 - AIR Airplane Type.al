table 50100 "AIR Airplane Type"
{

    fields
    {
        field(1;"ICAO Code";Code[20])
        {CaptionML = ENU = 'ICAO Code';
         AccessByPermission = tabledata "Item" = R;
        }
        field(10;Description;Text[250])
        {
        }
        field(11;Popularity;Decimal)
        {
        }
        
    }

    keys
    {
        key(PK;"ICAO Code")
        {
            //Clustered = true;
        }
        key(SK;Popularity)
        {
            Clustered = true;
        }
    }
    
    var
        //myInt : Integer;

    trigger OnInsert();
    begin
    end;

    trigger OnModify();
    begin
    end;

    trigger OnDelete();
    begin
    end;

    trigger OnRename();
    begin
    end;

}