<p><strong>Description:</strong></p>
<p>This script can be scheduled daily to Search expired accounts, get the account's manager details and send email to them.<br /> This can be modified easily for additional filters on users, scoping etc., like service accounts only.<br /> The script is capable of handling missing manager details and sending email to admin notifying about those accounts.<br /> Its using PS active directory module,</p>
<p>Email triggered has the ExpiredAccount Name,Expired date &amp; time on the subject line itself.</p>
<p>The script is fairly simple configurable componets\variables are inside the script.</p>
<p>You can refer to the below guide for setting up the scheduled task</p>
<p><a href="https://gallery.technet.microsoft.com/Detect-IP-address-change-aeb51118">https://gallery.technet.microsoft.com/Detect-IP-address-change-aeb51118</a></p>
<p><strong>&nbsp;</strong></p>
<p><strong>Usage:</strong></p>
<p>&nbsp;</p>
<div class="scriptcode">
<div class="pluginEditHolder" pluginCommand="mceScriptCode">
<div class="title"><span>PowerShell</span></div>
<div class="pluginLinkHolder"><span class="pluginEditHolderLink">Edit</span>|<span class="pluginRemoveHolderLink">Remove</span></div>
<span class="hidden">powershell</span>
<pre class="hidden">PS C:\scripts&gt; .\AccountExpiryEmail.ps1
PS C:\scripts&gt;</pre>
<div class="preview">
<pre class="powershell"><span class="powerShell__alias">PS</span>&nbsp;C:\scripts&gt;&nbsp;.\AccountExpiryEmail.ps1&nbsp;
<span class="powerShell__alias">PS</span>&nbsp;C:\scripts&gt;</pre>
</div>
</div>
</div>
<div class="endscriptcode">&nbsp;</div>
<p><strong>Sample Emails</strong> Triggered upon executing the script:</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<div class="scriptcode">
<div class="pluginEditHolder" pluginCommand="mceScriptCode">
<div class="title"><span>HTML</span></div>
<div class="pluginLinkHolder"><span class="pluginEditHolderLink">Edit</span>|<span class="pluginRemoveHolderLink">Remove</span></div>
<span class="hidden">html</span>
<pre class="hidden">#Email sent to Administrator for Expired accounts without email id.
________________________________________
From: AccountExpiry@domain.com &lt;AccountExpiry@domain.com&gt;
Sent: Wednesday, July 1, 2015 2:44 AM
To: Administrator
Subject: Account SB Test has Expired on 07/01/2015 00:00:00. And Manager is null.



#Normal Expired email sent to manager(satyajit)
_______________________________________
From: AccountExpiry@domain.com &lt;AccountExpiry@domain.com&gt;
Sent: Wednesday, July 1, 2015 2:44 AM
To: Satyajit
Subject: Account SatyaTEST1 has Expired on 08/01/2014 00:00:00.
</pre>
<div class="preview">
<pre class="html">#Email&nbsp;sent&nbsp;to&nbsp;Administrator&nbsp;for&nbsp;Expired&nbsp;accounts&nbsp;without&nbsp;email&nbsp;id.&nbsp;
________________________________________&nbsp;
From:&nbsp;AccountExpiry@domain.com&nbsp;<span class="html__tag_start">&lt;AccountExpiry</span>@domain.com<span class="html__tag_start">&gt;&nbsp;
</span>Sent:&nbsp;Wednesday,&nbsp;July&nbsp;1,&nbsp;2015&nbsp;2:44&nbsp;AM&nbsp;
To:&nbsp;Administrator&nbsp;
Subject:&nbsp;Account&nbsp;SB&nbsp;Test&nbsp;has&nbsp;Expired&nbsp;on&nbsp;07/01/2015&nbsp;00:00:00.&nbsp;And&nbsp;Manager&nbsp;is&nbsp;null.&nbsp;
&nbsp;
&nbsp;
&nbsp;
#Normal&nbsp;Expired&nbsp;email&nbsp;sent&nbsp;to&nbsp;manager(satyajit)&nbsp;
_______________________________________&nbsp;
From:&nbsp;AccountExpiry@domain.com&nbsp;<span class="html__tag_start">&lt;AccountExpiry</span>@domain.com<span class="html__tag_start">&gt;&nbsp;
</span>Sent:&nbsp;Wednesday,&nbsp;July&nbsp;1,&nbsp;2015&nbsp;2:44&nbsp;AM&nbsp;
To:&nbsp;Satyajit&nbsp;
Subject:&nbsp;Account&nbsp;SatyaTEST1&nbsp;has&nbsp;Expired&nbsp;on&nbsp;08/01/2014&nbsp;00:00:00.&nbsp;
</pre>
</div>
</div>
</div>
<div class="endscriptcode"><strong>Major cmdlet doing the job:</strong></div>
<div class="endscriptcode">You can try it out directly on Windows PowerShell to test the expected output</div>
<div class="endscriptcode">
<div class="scriptcode">
<div class="pluginEditHolder" pluginCommand="mceScriptCode">
<div class="title"><span>PowerShell</span></div>
<div class="pluginLinkHolder"><span class="pluginEditHolderLink">Edit</span>|<span class="pluginRemoveHolderLink">Remove</span></div>
<span class="hidden">powershell</span>
<pre class="hidden">Search-ADAccount -AccountExpired


AccountExpirationDate : 8/1/2014 12:00:00 AM
DistinguishedName     : CN=SatyaTEST1,OU=Test Use...
Enabled               : True
LastLogonDate         : 6/22/2015 12:23:28 AM
LockedOut             : False
Name                  : SatyaTEST1</pre>
<div class="preview">
<pre class="powershell">Search<span class="powerShell__operator">-</span>ADAccount&nbsp;<span class="powerShell__operator">-</span>AccountExpired&nbsp;
&nbsp;
&nbsp;
AccountExpirationDate&nbsp;:&nbsp;8<span class="powerShell__operator">/</span>1<span class="powerShell__operator">/</span>2014&nbsp;12:00:00&nbsp;AM&nbsp;
DistinguishedName&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;CN=SatyaTEST1,OU=Test&nbsp;Use...&nbsp;
Enabled&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;True&nbsp;
LastLogonDate&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;6<span class="powerShell__operator">/</span>22<span class="powerShell__operator">/</span>2015&nbsp;12:23:28&nbsp;AM&nbsp;
LockedOut&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;False&nbsp;
Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;SatyaTEST1</pre>
</div>
</div>
</div>
<div class="endscriptcode">&nbsp;</div>
</div>
