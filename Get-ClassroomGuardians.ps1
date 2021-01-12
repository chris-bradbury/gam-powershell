##-- function returns registered guardians for given student --##
function Get-ClassroomGuardians {
    param (
        $Student
    )

    ##-- location of gam.exe --##
    $gamLocation = "gam.exe"

    ##-- create the overarching array --##
    $guardiansArray = @()

    ##-- pull the guardians for the given student and iterate --##
    .\gam.exe print guardians student $student | ForEach-Object {

        ##-- split the returned csv into an array --##
        $guardians = $_.Split(",")

        ##-- ignore if it's the header --##
        if($guardians[0] -ne "studentEmail"){

            ##-- studentEmail,studentId,invitedEmailAddress,guardianId,guardianProfile.id,guardianProfile.name.givenName,guardianProfile.name.familyName,guardianProfile.name.fullName,guardianProfile.emailAddress,guardianProfile.photoUrl --##
            $guardiansArray+= @{ studentEmail = $guardians[0]; studentId = $guardians[1]; invitedEmailAddress = $guardians[2]; guardianId = $guardians[3]; guardianProfileid = $guardians[4]; guardianProfilenamegivenName = $guardians[5]; guardianProfilenamefamilyName = $guardians[6]; guardianProfilenamefullName = $guardians[7]; guardianProfileemailAddress = $guardians[8]; guardianProfilephotoUrl = $guardians[9]; }
        
        }

    }

    ##-- output the array as an object --##
    $guardiansArray | % { new-object PSObject -Property $_}

}