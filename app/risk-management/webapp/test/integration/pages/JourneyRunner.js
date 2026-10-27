sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"riskmanagement/test/integration/pages/RisksList.gen",
	"riskmanagement/test/integration/pages/RisksObjectPage.gen"
], function (JourneyRunner, RisksListGenerated, RisksObjectPageGenerated) {
    'use strict';

    const runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('riskmanagement') + '/test/flp.html#app-preview',
        pages: {
			onTheRisksListGenerated: RisksListGenerated,
			onTheRisksObjectPageGenerated: RisksObjectPageGenerated
        },
        async: true
    });

    return runner;
});

