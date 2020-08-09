#This script can be scheduled daily to Search expired accounts, get the account's manager details and send email to them.
#This can be modified easily for additional filters on users, scoping etc., like service accounts only.
#The script is capable of handling missing manager details and sending email to admin notifying about those accounts.
#Its using PS active directory module 
#1:20 PM 7/1/2015 -Satyajit

#Searching expired accounts
 $AcsExp = Search-ADAccount -AccountExpired

#Looping through each for email
 ForEach ($AcExp in $AcsExp)
 {

    #Setting SMTP email variables
	$mgrEmail = $null
	$AdminEmail = "Administrators@domain.com"
	$Fromusr = "AccountExpiry@domain.com"
	$ExpDate = $AcExp.AccountExpirationDate
	$AcName = $AcExp.Name
	$Sub = "Account $AcName has Expired on $ExpDate."

    #SMTP sender as anonymous
	$anonUser = "anonymous"
	$anonPass = ConvertTo-SecureString "anonymous" -AsPlainText -Force
	$anonCred = New-Object System.Management.Automation.PSCredential($anonUser, $anonPass)
	$Smtpsvr = "EXCH-1" #Anonymous allowed for the user or machine running this script

    #Extracting manager's email id ;we can add 'if' to filter selective account types or names only
	$mgr = (Get-Aduser $AcExp -Properties *).manager

    #Sending Email as per manager's availability
	if($mgr -ne $null)
		{
			$mgrEmail = (Get-Aduser $mgr -Properties *).mail
		}
	if ($mgrEmail -eq $null)
		{
			#Send email to admin
			#Write-host "$AcName , Manager is null"
			Send-MailMessage -to $AdminEmail -from $fromusr -subject "$sub And Manager is null." -SmtpServer $Smtpsvr -Credential $anonCred
		}
	else
		{
			#Send email to manager
			Send-MailMessage -to $mgrEmail -from $fromusr -subject $sub -SmtpServer $Smtpsvr -Credential $anonCred
		}


 }#For
