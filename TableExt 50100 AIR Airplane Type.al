tableextension 50100 "Air Airplane Type" extends Item
{
    fields
    {
        field(50100;"AIR Airplane Type";Code[20])
        {
            Caption = 'AIR Airplane Type';
            TableRelation = "AIR Airplane Type";
            ValidateTableRelation = true;
            trigger OnValidate();
            var
                AIRAirplaneType : Record 50100;
            begin
              IF AIRAirplaneType.GET("AIR Airplane Type") then
                 Description := AIRAirplaneType.Description
              Else
                 Description := '';
            end;
        }
    }
    
    var

}