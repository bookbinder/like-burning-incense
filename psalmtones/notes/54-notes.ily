\version "2.18.2"

toneStruct = "42"
toneKeysig = \key gis \minor


sopranoOneFlex = { \afterGrace gis'\breve^"A†" fis'4 \bar "'" gis'\breve fis'8 gis'8 ais'4  \bar "|" ais'\breve gis'4 \bar "||" }
sopranoOne = { gis'\breve^"A" fis'8 gis'8 ais'4  \bar "|" ais'\breve gis'4 \bar "||" }
sopranoShort = { \override Stem.stencil = ##f
                 \afterGrace gis'\breve*1/2 \parenthesize fis'4_"+"
                 \revert Stem.stencil
                 fis'8 gis' ais'4 \bar "|" \allowBreak ais'\breve*1/2 gis'4 \bar "||"  }
sopranoTwoFlex = { \afterGrace gis'\breve^"B†" fis'4 \bar "'" gis'\breve fis'8 gis'8 ais'4  \bar "|" ais'\breve gis'4 \bar "||" }
sopranoTwo = { gis'\breve^"B" fis'8 gis'8 ais'4  \bar "|" ais'\breve gis'4 \bar "||" }

altoOneFlex = { \afterGrace dis'\breve~ dis'4~ dis'\breve~ s4 dis'4 cis'\breve dis'4}
altoOne = { dis'\breve~ s4 dis'4 cis'\breve dis'4 }
altoTwoFlex = { \afterGrace cis'\breve dis'4 cis'\breve s4 dis'4 cis'\breve b4 }
altoTwo = { cis'\breve s4 dis'4 cis'\breve b4 }

tenorOneFlex = { \afterGrace b\breve ais4 \bar "'" b\breve s4 ais4 \bar "|" gis\breve b4 \bar "||" }
tenorOne = { b\breve s4 ais4 \bar "|" gis\breve b4 \bar "||" }
tenorTwoFlex = { \afterGrace gis\breve ais4 \bar "'" gis\breve s4 fis4 \bar "|" dis\breve~ dis4 \bar "||" }
tenorTwo = {gis\breve s4 fis4 \bar "|" dis\breve~ dis4 \bar "||"  }

bassOneFlex = { gis\breve gis\breve s4 fis4 e\breve gis4 }
bassOne = { gis\breve s4 fis4 e\breve gis4 }
bassTwoFlex = { \afterGrace e\breve fis4 e\breve s4 dis4 fis,\breve gis,4 }
bassTwo = { e\breve s4 dis4 fis,\breve gis,4 }


