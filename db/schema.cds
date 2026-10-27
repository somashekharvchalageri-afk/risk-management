namespace RiskManagement;

using { BusinessPartnerA2X as external } from '../srv/external/BusinessPartnerA2X';

entity Risks
{
    key ID : UUID;
    miti : Association to one Mitigations;
    title : String(100);
    prio : String(5);
    descr : String(100);
    impact : Integer;
    criticality : Integer;
    bp : Association to one external.A_BusinessPartner;
    createdAt : Timestamp;
    createdBy : String(100);
    modifiedAt : Timestamp;
    modifiedBy : String(100);
}

entity Mitigations
{
    key ID : UUID;
    createdAt : String(100);
    createdBy : String(100);
    owner : String(100);
    description : String(100);
    timeline : String(100);
    risks : Association to many Risks on risks.miti = $self;
}
