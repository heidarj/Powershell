function connect-hrprint {
	
	$cred = import-clixml C:\Users\admin\Documents\WindowsPowerShell\modules\scripts\cred.xml
	$PrinterPath = "\\hrprint\Followme_Black" 
	$net = new-Object -com WScript.Network
	$net.AddWindowsPrinterConnection($PrinterPath)
	
}