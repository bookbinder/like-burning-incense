\version "2.18.2"

toneStruct = "33"
toneKeysig = \key cis \minor


sopranoOneFlex = { \afterGrace gis'\breve^"A†" fis'4 \breathe \bar "" gis'\breve fis'8 gis'4 \bar "|" fis'\breve e'8 cis'4 \bar "||" }
sopranoOne = { gis'\breve^"A" fis'8 gis'4 \bar "|" fis'\breve e'8 cis'4 \bar "||"  }
sopranoShort = { \override Stem.stencil = ##f
                 \afterGrace gis'\breve*1/2 \parenthesize fis'4_"+"
                 \revert Stem.stencil
                 fis'8 gis'4 \bar "|" \allowBreak fis'\breve*1/2 e'8 cis'4 \bar "||"  }
sopranoTwoFlex = { \afterGrace gis'\breve^"B†" fis'4 \breathe \bar "" gis'\breve fis'8 gis'4 \bar "|" fis'\breve e'8 cis'4 \bar "||"  }
sopranoTwo = { gis'\breve^"B" fis'8 gis'4 \bar "|" fis'\breve e'8 cis'4 \bar "||"  }

altoOneFlex = {  }
altoOne = {   }
altoTwoFlex = {  }
altoTwo = {   }

tenorOneFlex = {  }
tenorOne = {  }
tenorTwoFlex = { }
tenorTwo = { }

bassOneFlex = { }
bassOne = {  }
bassTwoFlex = { }
bassTwo = {  }


