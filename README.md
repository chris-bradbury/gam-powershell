# gam-powershell

A collection of powershell functions which use gam to return a very specific piece of information

## Get-ClassroomGuardians

Returns all the registered guardians for a given student. This only includes guardians who have accepted the guardian summaries invitation.

#### Function:
```powershell
Get-ClassroomGuardians -Student student@domain.school
```
#### Result:
```
Getting Guardians for student@domain.school (1/1)                                        

guardianProfilephotoUrl       : 
invitedEmailAddress           : parent1@email.domain
studentEmail                  : student@domain.school
studentId                     : xxxxxxxxxxxxxxxxxxxxx
guardianProfilenamefamilyName : 
guardianProfileemailAddress   : 
guardianProfilenamefullName   : 
guardianProfilenamegivenName  : 
guardianId                    : XXXXXX-XXXXXX
guardianProfileid             : parent1@email.domain

guardianProfilephotoUrl       : 
invitedEmailAddress           : parent2@email.domain
studentEmail                  : student@domain.school
studentId                     : xxxxxxxxxxxxxxxxxxxxx
guardianProfilenamefamilyName : 
guardianProfileemailAddress   : 
guardianProfilenamefullName   : 
guardianProfilenamegivenName  : 
guardianId                    : XXXXXX-XXXXXX
guardianProfileid             : parent2@email.domain
```

guardianProfile information is only returned if the guardian has signed up with a google account. All other accounts just return an email address.
