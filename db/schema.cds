namespace com.products;

define type Name : String(20);

type Address {
        Street     : String;
        City       : String;
        State      : String;
        PostalCode : String(5);
        Country    : String;
}
define type EmailAddresses_01: array of {
    kind: String;
    email: String;
}

define type EmailAddresses_02 {
    kind: String;
    email: String;
}
entity Emails {
    email_01 : EmailAddresses_01;
    email_02 : many EmailAddresses_02;
    email_03 : many {
    kind: String;
    email: String;
}
}
type Gender : String enum {
    male;
    female;
};
//TAMBIEN PUEDES HACER EL ENUM CON INT, LE DAS UN "NOMBRE = VALOR;"
entity Order {
    clientGender:Gender;
    priority : String @assert.range enum {
        high;
        medium;
        low;
    }    
}
type Dec : Decimal(16, 2);
entity Products {
    key ID              : UUID;
        Name            : String default 'SIN NOMBRE' not null;
        Description     : String;
        ImageUrl        : String;
        ReleaseDate     : DateTime default $now;
        creationDate    : Date default CURRENT_DATE;
        DiscontinuedDate : DateTime;
        Price           : Dec;
        Height          : type of Price;
        Width           : Decimal(16, 2);
        Depth           : Decimal(16, 2);
        Quantity        : Decimal(16, 2);
}

entity Supplier {
    key ID         : UUID;
        Name       : type of Products: Name;
        Street     : Products: Name;
        City       : String;
        State      : String;
        PostalCode : String(5);
        Country    : String;
        Email      : String;
        Phone      : String;
        Fax        : String;
}

entity Supplier_01 {
    key ID         : UUID;
        Name       : String;
        Address    : Address;
        Email      : String;
        Phone      : String;
        Fax        : String;
}

entity Supplier_02 {
    key ID         : UUID;
        Name       : String;
        Address    :  
        {
            Street     : String;
            City       : String;
            State      : String;
            PostalCode : String(5);
            Country    : String;
        };
        Email      : String;
        Phone      : String;
        Fax        : String;
}
entity Category {
    key ID   : String(1);
        Name : String;
}

entity StockAvilability {
    key ID          : Integer;
        Description : String;
}

entity Currencies {
    key ID          : String(3);
        Description : String;
}

entity UnitOfMeasures {
    key ID          : String(2);
        Description : String;
}

entity DimensionUnits {
    key ID          : String(2);
        Description : String;
}

entity Months {
    key ID               : String(2);
        Description      : String;
        ShortDescription : String(3);
}

entity ProductReview {
    key Name    : String;
        Rating  : Integer;
        Comment : String;
}

entity SalesData {
    key DeliveryDate : DateTime;
        Revenue      : Decimal(16, 2);
}
