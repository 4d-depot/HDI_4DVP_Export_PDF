C_TEXT:C284($selectedFile)

If (FORM Event:C1606.code=On Clicked:K2:4)
	
	$selectedFile:=Select document:C905("";".pdf";"Select the pdf file";File name entry:K24:17)
	If (OK=1)
		Form:C1466.pdfPath:=Document
	End if 
End if 