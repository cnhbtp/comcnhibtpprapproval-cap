using { Currency, managed, cuid } from '@sap/cds/common';
namespace com.cnhi.btp.prapprovalsrvs;

entity PurchaceReq {
    key id              : UUID;
        pr              : String;
        status          : String;
        nextApprover    : String;
        requestor       : String;
        level           : Association to many Level on level.prID = $self;
        comments        : Association to many Comments on comments.prID = $self;
        history        : Association to many History on history.prID = $self;
}

entity Comments: managed {
    key id              : UUID;
        prID            : Association to PurchaceReq;
        pr              : String;
        type            : String;
        comment         : String;
        user            : String;
        authorID        : String;
        authorName      : String;
}

entity History: managed {
    key id              : UUID;
        prID            : Association to PurchaceReq;
        pr              : String;
        status          : String;
        userID           : String;
        userName         : String;
}

entity Level {
    key id              : UUID;
        prID            : Association to PurchaceReq;
        user            : String;
        levelId         : String;
}