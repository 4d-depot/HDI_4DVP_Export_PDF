C_TEXT:C284($selectedFile)
If (FORM Event:C1606.code=On Clicked:K2:4)
	
	$selectedFile:=Select document:C905("";".png";"Select the pdf file";Package open:K24:8)
	If (OK=1)
		Form:C1466.watermarkPath:=Document
	End if 
End if 