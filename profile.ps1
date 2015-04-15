Write-Host “		Loading Powershell profile” –ForegroundColor green
write-Host "	##########################################" –ForegroundColor darkgreen
write-Host "		**Asking for credentials**" -ForegroundColor green
write-Host "	##########################################" –ForegroundColor darkgreen
$credcheck = read-host "	$$ Login in to Powershell session? Y/N $$"
switch ($credcheck) {
	Y {$cred = get-credential umsja\su.heidarj
	}
	N {write-Host " 	   Maybe next time" -ForegroundColor green
	}
}
try {
	$win2k = $cred.username
	$username = $win2k -replace 'umsja\\',''
	$person = get-aduser $username | select "givenname"
	Write-host "		Credentials have been stored" -ForegroundColor green
	write-host "		# Welcome" $person.givenname "#" -ForegroundColor green
}
catch {
	write-Host "	   No credentials set for this session" -ForegroundColor red
}
write-Host "	##########################################" –ForegroundColor darkgreen
cd c:\path