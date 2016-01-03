function template {
	
	<#
  .SYNOPSIS
   short description
  .DESCRIPTION
	long description
  .EXAMPLE
  self explanatory
  .PARAMETER "parameter name"
  parameter description
  #>
	
	[cmdletbinding()] #makes this an advanced function "()"accepts parameters
	
	Param #define input parameters
	(
		[parameter(ValueFromPipeline = $true, Mandatory = $true, Position = 0)]	#more parameters available
		[String[]]
		$param1, #"," used to separate parameters listed
		
		[parameter(ValueFromPipeline = $false)]
		[String]
		$param2="default value" #last param does not need ","
	)
	
    begin {
        #runs once before main function
    }
    
    process {
        #runs once for each item in the pipeline
    }
    
    end {
        #runs once after main function
    }
}
