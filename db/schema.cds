using {cuid} from '@sap/cds/common';

namespace SuperMarket.db;



entity Orders : cuid {   
        descr       : String(100);
        type        : Association to one OrderTypes;
        items       : Composition of many OrderItems
                          on items.order = $self;
        totalamount : Decimal(10, 2);
        customer    : Association to one Customers;

}


entity OrderItems : cuid {   
        order   : Association to one Orders;
        product : Association to one Products;
}

entity OrderTypes {
    key ID    : String(2)
        @Core.Description: 'Type Id';
        descr : String(100)
        @Core.Description: 'Type Description';
}

entity Customers {
    key ID   : Integer;
        name : String(200);
}

entity Products {
    key ID   : Integer;
        name : String(100);
}
