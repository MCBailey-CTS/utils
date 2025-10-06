#!/bin/bash

powershell --FILE



# When ran this should print mark baileys
# perName
# UID
UID	EmailAddress	CompanyID	CanAdmin	CanEnterJobs	UserRoleID	perCreated	perCreatedBy	perModified	perModifiedBy	PhoneNumber	ProviderID	perDefaultFilterID	crm	perName	perMasterboardEdit	perRFQ	perATP	perUccVerification	perTechReviewer	perFinReviewer	perPoApprover	perJobApproval	perCanDeleteCTSJob	perCTSDesignReview	perDefaultJobApprover	perDefaultFinancialApprover	perDefaultPOApprover	perCTSMetrics	perDefaultTechApprover	perSecureView	perJobNotify	perJobKickoff	perAtpProcessor	perMockUser
TSGComapanyAbbrev

-s will set mark to be the provided integer id

-a lists all persons and id who have a per mock user set to something other than null.

-u sets the user that is being edited. Left unset it should default to mark bailey

-q prints a quick reference to import poeple and their ids.
    derek, dan, joe and so on.
