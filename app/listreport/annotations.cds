using MyService as service from '../../srv/Service';

annotate service.Orders with @(
    UI.FieldGroup #GeneratedGroup: {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Label: 'ID',
                Value: ID,
            },
            {
                $Type: 'UI.DataField',
                Label: 'Description',
                Value: descr,
            },
            {
                $Type: 'UI.DataField',
                Label: 'Type',
                Value: type_ID,
            },
            {
                $Type: 'UI.DataField',
                Label: 'Total Amount',
                Value: totalamount,
            },
            {
                $Type: 'UI.DataField',
                Label: 'Customer',
                Value: customer_ID,
            },
        ],
    },
    UI.HeaderInfo                : {
        TypeName      : 'Order',
        TypeNamePlural: 'Orders',
        Title         : {
            $Type: 'UI.DataField',
            Value: ID,
        },
        Description   : {
            Value: descr,
            $Type: 'UI.DataField'
        },
        ImageUrl      : 'https://cdn.dribbble.com/users/276825/screenshots/6162035/sap.png'
    },

    UI.Facets                    : [{
        $Type : 'UI.CollectionFacet',
        ID    : 'GeneratedFacet1',
        Label : 'General Information',
        Facets: [
            {
                $Type : 'UI.ReferenceFacet',
                Label : 'General Information',
                Target: '@UI.FieldGroup#GeneratedGroup',
            },
            {
                $Type : 'UI.ReferenceFacet',
                Label : 'Order Item Details Information',
                Target: 'items/@UI.LineItem#orderItems',
            }
        ]
    }, ],
    UI.LineItem                  : [
        {
            $Type: 'UI.DataField',
            Label: 'ID',
            Value: ID,
        },
        {
            $Type: 'UI.DataField',
            Label: 'Description',
            Value: descr,
        },
        {
            $Type: 'UI.DataField',
            Label: 'Type',
            Value: type_ID,
        },
        {
            $Type: 'UI.DataField',
            Label: 'Total Amount',
            Value: totalamount,
        },
        {
            $Type: 'UI.DataField',
            Label: 'Customers',
            Value: customer_ID,
        },
    ],
);


annotate service.Orders with {
    type @Common.ValueList: {
        $Type         : 'Common.ValueListType',
        CollectionPath: 'OrderTypes',
        Parameters    : [
            {
                $Type            : 'Common.ValueListParameterInOut',
                LocalDataProperty: type_ID,
                ValueListProperty: 'ID',
            },
            {
                $Type            : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty: 'descr',
            },
        ],
    }
};

annotate service.Orders with {
    customer @Common.ValueList: {
        $Type         : 'Common.ValueListType',
        CollectionPath: 'Customers',
        Parameters    : [
            {
                $Type            : 'Common.ValueListParameterInOut',
                LocalDataProperty: customer_ID,
                ValueListProperty: 'ID',
            },
            {
                $Type            : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty: 'name',
            },
        ],
    }
};

annotate service.OrderItems with @(UI.LineItem #orderItems: [
    {
        $Type: 'UI.DataField',
        Value: ID,
    },
    {
        $Type: 'UI.DataField',
        Value: order_ID,
    },
    {
        $Type: 'UI.DataField',
        Value: product_ID,
    }
],

);
