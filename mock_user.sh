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

-m prints the current users mock 

-p 


#!/bin/bash

# Function to display usage information
usage() {
    echo "Usage: $0 [-a] [-b <arg>] [-c]"
    echo "  -c        Prints the company code that mark bailey is set to"
    echo "  -C <arg>  Sets mark baileys company code to the arg. Can be the id or the 'ATS' identifier"
    echo "  -q        Prints the quick ( perName, id, perEmail, TSGCompanyID, TSGCompanyAbbrev, perMockUser ) of Mark Bailey"
    echo "  -Q <arg>  Prints the quick ( perName, id, perEmail, TSGCompanyID, TSGCompanyAbbrev, perMockUser ) of the given user id or pername or perEmail LIKE '%<arg>%"
    exit 1
}

# Initialize variables for options
opt_a=false
opt_b=""
opt_c=false

# Parse options using getopts
while getopts "ab:c" opt; do
    case "$opt" in
        a)
            opt_a=true
            ;;
        b)
            opt_b="$OPTARG"
            ;;
        c)
            opt_c=true
            ;;
        *)
            usage
            ;;
    esac
done

# Shift positional arguments after options
shift $((OPTIND - 1))

# Display parsed options and arguments
echo "Option A: $opt_a"
echo "Option B: $opt_b"
echo "Option C: $opt_c"
echo "Remaining arguments: $@"

# Example logic based on options
if $opt_a; then
    echo "Option A is enabled."
fi

if [ -n "$opt_b" ]; then
    echo "Option B argument: $opt_b"
fi

if $opt_c; then
    echo "Option C is enabled."
fi
