sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'listreport/test/integration/FirstJourney',
		'listreport/test/integration/pages/OrdersList',
		'listreport/test/integration/pages/OrdersObjectPage',
		'listreport/test/integration/pages/OrderItemsObjectPage'
    ],
    function(JourneyRunner, opaJourney, OrdersList, OrdersObjectPage, OrderItemsObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('listreport') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheOrdersList: OrdersList,
					onTheOrdersObjectPage: OrdersObjectPage,
					onTheOrderItemsObjectPage: OrderItemsObjectPage
                }
            },
            opaJourney.run
        );
    }
);