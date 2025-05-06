\version "2.18.2"

toneStruct = "33"
toneKeysig = \key gis \minor

sopranoOneFlex = {  gis'\breve^"A†" e'4 \breathe gis'\breve fis'8 dis'4 \bar "|" fis'\breve ais'8 gis'4 \bar "||"  }
sopranoOne = { gis'\breve^"A" fis'8 dis'4 \bar "|" fis'\breve ais'8 gis'4 \bar "||" }
sopranoShort = { \override Stem.stencil = ##f
                 \afterGrace gis'\breve*1/2 \parenthesize e'4_"+"
                 \revert Stem.stencil
                 fis'8 dis'4 \bar "|" \allowBreak fis'\breve*1/2 ais'8 gis'4 \bar "||"  }
sopranoTwoFlex = {  gis'\breve^"B†" e'4 \breathe gis'\breve fis'8 dis'4 \bar "|" fis'\breve ais'8 gis'4 \bar "||"  }
sopranoTwo = { gis'\breve^"B" fis'8 dis'4 \bar "|" fis'\breve ais'8 gis'4 \bar "||"  }

altoOneFlex = {  cis'\breve cis'4 cis'\breve s4. dis'\breve~ s8 dis'4  }
altoOne = { cis'\breve s4. dis'\breve~ s8 dis'4    }
altoTwoFlex = { cis'\breve s4 cis'\breve s8 ais4 dis'\breve s8 b4 }
altoTwo = { cis'\breve s8 ais4 dis'\breve s8 b4  }

tenorOneFlex = {  gis\breve ais4 gis\breve s8 ais4 \bar "|" ais\breve s8 b4 \bar "||" }
tenorOne = { gis\breve s8 ais4 \bar "|" ais\breve s8 b4 \bar "||"  }
tenorTwoFlex = {  e\breve ais4 e\breve s8 fis4 \bar "|" dis\breve~ s8 dis4 \bar "||" }
tenorTwo = {  e\breve s8 fis4 \bar "|" dis\breve~ s8 dis4 \bar "||" }

bassOneFlex = {  e\breve e4 e\breve s8 fis4 dis\breve s8 gis4 }
bassOne = { e\breve s8 fis4 dis\breve s8 gis4  }
bassTwoFlex = {  cis\breve cis4 cis\breve s8 dis4 ais,\breve s8 gis,4 }
bassTwo = {cis\breve s8 dis4 ais,\breve s8 gis,4   }


