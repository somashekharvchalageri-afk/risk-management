using { RiskManagement as my } from '../db/schema.cds';

using { BusinessPartnerA2X as external } from './external/BusinessPartnerA2X';

@path : '/service/RiskManagementService'
service RiskManagementService
{
    @cds.redirection.target
    @odata.draft.enabled
    entity Risks as
        projection on my.Risks;

    @cds.redirection.target
    @odata.draft.enabled
    entity Mitigations as
        projection on my.Mitigations;

    @readonly
    entity BusinessPartner as
        projection on external.A_BusinessPartner
        {
            BusinessPartner,
            Customer,
            Supplier,
            BusinessPartnerCategory,
            BusinessPartnerFullName,
            BusinessPartnerIsBlocked
        };
}

annotate RiskManagementService with @requires :
[
    'authenticated-user'
];
