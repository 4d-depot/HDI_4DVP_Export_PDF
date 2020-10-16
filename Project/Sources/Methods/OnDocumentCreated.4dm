//%attributes = {}
C_TEXT:C284($1;$2)
C_OBJECT:C1216($3;$4)

If ($3.ProgressBarID#Null:C1517)
	Progress QUIT ($3.ProgressBarID)
End if 

  // if export is a succes, open the file
If ($4.success)
	ALERT:C41("PDF document created")
	OPEN URL:C673($2)
Else 
	ALERT:C41($4.errorMessage)
End if 