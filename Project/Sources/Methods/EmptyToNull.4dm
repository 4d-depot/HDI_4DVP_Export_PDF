//%attributes = {}
  // Return Null if the value is empty, else return value
C_VARIANT:C1683($1;$0)

$0:=$1
If (Value type:C1509($1)=Is text:K8:3)
	If ($1="")
		$0:=Null:C1517
	End if 
End if 