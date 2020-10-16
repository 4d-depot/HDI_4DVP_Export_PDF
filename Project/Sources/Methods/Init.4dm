//%attributes = {}
C_TEXT:C284($picture)
$picture:="4D.png"

EnableObject (False:C215)


Form:C1466.EventList:=New collection:C1472

Form:C1466.pdf:=New object:C1471
Form:C1466.pdf.bestFitColumns:=False:C215
Form:C1466.pdf.bestFitRows:=False:C215
Form:C1466.pdf.blackAndWhite:=False:C215
Form:C1466.pdf.showBorder:=False:C215
Form:C1466.pdf.showGridLine:=False:C215
Form:C1466.pdf.useMax:=False:C215


  // init printCentering array:
ARRAY TEXT:C222(PrintCentering;0)
APPEND TO ARRAY:C911(PrintCentering;"None")
APPEND TO ARRAY:C911(PrintCentering;"Horizontal")
APPEND TO ARRAY:C911(PrintCentering;"Vertical")
APPEND TO ARRAY:C911(PrintCentering;"Horizontal + Vertical")
PrintCentering:=1

  // init PrintPageOrientation array
ARRAY TEXT:C222(PrintPageOrientation;0)
APPEND TO ARRAY:C911(PrintPageOrientation;"Portrait")
APPEND TO ARRAY:C911(PrintPageOrientation;"Landscape")
PrintPageOrientation:=1

  //init PrintPageOrder array
ARRAY TEXT:C222(PrintPageOrder;0)
APPEND TO ARRAY:C911(PrintPageOrder;"Auto")
APPEND TO ARRAY:C911(PrintPageOrder;"Down then over ")
APPEND TO ARRAY:C911(PrintPageOrder;"Over then down")
PrintPageOrder:=1

  //init PrintColumnHeader array
ARRAY TEXT:C222(PrintColumnHeader;0)
APPEND TO ARRAY:C911(PrintColumnHeader;"Inherit")
APPEND TO ARRAY:C911(PrintColumnHeader;"Hide")
APPEND TO ARRAY:C911(PrintColumnHeader;"Show on each page")
APPEND TO ARRAY:C911(PrintColumnHeader;"Show once")
PrintColumnHeader:=1

  //init PrintColumnHeader array
ARRAY TEXT:C222(PrintRowHeader;0)
APPEND TO ARRAY:C911(PrintRowHeader;"Inherit")
APPEND TO ARRAY:C911(PrintRowHeader;"Hide")
APPEND TO ARRAY:C911(PrintRowHeader;"Show on each page")
APPEND TO ARRAY:C911(PrintRowHeader;"Show once")
PrintRowHeader:=1

Form:C1466.pdf.footerCenter:=""
Form:C1466.pdf.footerLeft:="&G"
Form:C1466.pdf.footerRight:="Page &P of &N pages"
Form:C1466.pdf.headerCenter:="Export PDF"
Form:C1466.pdf.headerLeft:="DOC_237891"
Form:C1466.pdf.headerRight:="Draft"

Form:C1466.pdf.footerCenterImage:=$picture
Form:C1466.pdf.footerLeftImage:=$picture
Form:C1466.pdf.footerRightImage:=$picture
Form:C1466.pdf.headerCenterImage:=$picture
Form:C1466.pdf.headerLeftImage:=$picture
Form:C1466.pdf.headerRightImage:=$picture

Form:C1466.pdfPath:="TestExport.pdf"

Form:C1466.watermarkPath:="draft.png"