using {SuperMarket.db as my} from '../db/schema';

service MyService {

    entity OrderItems as projection on my.OrderItems;
    entity OrderTypes as projection on my.OrderTypes;
    entity Customers  as projection on my.Customers;
    entity Products   as projection on my.Products;

    entity Orders @(
        odata.draft.enabled         : true,
        Common.DefaultValuesFunction: 'setDefaultValue'
    )                 as projection on my.Orders;

    function setDefaultValue() returns Orders;

}
