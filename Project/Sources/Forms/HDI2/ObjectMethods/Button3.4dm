If (FORM Event:C1606.code=On Clicked:K2:4)
	
	Form:C1466.pdf.centering:=PrintCentering-1
	Form:C1466.pdf.orientation:=PrintPageOrientation
	Form:C1466.pdf.pageOrder:=PrintPageOrder-1
	Form:C1466.pdf.showColumnHeader:=PrintColumnHeader-1
	Form:C1466.pdf.showRowHeader:=PrintRowHeader-1
	
	Form:C1466.pdf.columnStart:=EmptyToNull (Form:C1466.pdf.columnStart)
	Form:C1466.pdf.rowStart:=EmptyToNull (Form:C1466.pdf.rowStart)
	Form:C1466.pdf.columnEnd:=EmptyToNull (Form:C1466.pdf.columnEnd)
	Form:C1466.pdf.rowEnd:=EmptyToNull (Form:C1466.pdf.rowEnd)
	Form:C1466.pdf.fitPagesTall:=EmptyToNull (Form:C1466.pdf.fitPagesTall)
	Form:C1466.pdf.fitPagesWide:=EmptyToNull (Form:C1466.pdf.fitPagesWide)
	Form:C1466.pdf.zoomFactor:=EmptyToNull (Form:C1466.pdf.zoomFactor)
	Form:C1466.pdf.paperSize:=New object:C1471("kind";"a4")
	
	  // add watermark if exist
	If (String:C10(Form:C1466.watermarkPath)#"")
		If (Form:C1466.pdf.orientation=vk print page orientation portrait:K89:90)
			Form:C1466.pdf.watermark:=New collection:C1472(New object:C1471("x";125;"y";350;"imageSrc";Form:C1466.watermarkPath;"page";"all";"width";600;"height";400))
		Else 
			Form:C1466.pdf.watermark:=New collection:C1472(New object:C1471("x";250;"y";225;"imageSrc";Form:C1466.watermarkPath;"page";"all";"width";600;"height";400))
		End if 
	Else 
		Form:C1466.pdf.watermark:=Null:C1517
	End if 
	
	  // set the print info options
	VP SET PRINT INFO ("ViewProArea";Form:C1466.pdf)
	
	  // export in pdf according to the print info options
	VP PRINT ("ViewProArea")
	
End if 