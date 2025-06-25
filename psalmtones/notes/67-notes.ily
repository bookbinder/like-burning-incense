\version "2.18.2"

toneStruct = "43"
toneKeysig = \key gis \minor


sopranoOneFlex = { \afterGrace gis'\breve^"A†" fis'4 \bar "'" \bar "" gis'\breve fis'8 ais' gis'4 \bar "|" fis'\breve e'8 dis'4 \bar "||" }
sopranoOne = {gis'\breve fis'8 ais' gis'4 \bar "|" fis'\breve e'8 dis'4 \bar "||" }
sopranoShort = { \override Stem.stencil = ##f
                 \afterGrace gis'\breve*1/2 \parenthesize fis'4_"+"
                 \revert Stem.stencil
                 fis'8 ais' gis'4 \bar "|" \allowBreak fis'\breve*1/2 e'8 dis'4 \bar "||"  }
sopranoTwoFlex = { \afterGrace gis'\breve^"B†" fis'4 \bar "'" \bar "" gis'\breve fis'8 ais' gis'4 \bar "|" fis'\breve e'8 dis'4 \bar "||" }
sopranoTwo = {gis'\breve fis'8 ais' gis'4 \bar "|" fis'\breve e'8 dis'4 \bar "||" }

altoOneFlex = { }% \afterGrace dis'\breve~ dis'4~ dis'\breve s4 dis'4 cis'\breve s8 dis'4 }
altoOne = { }%  dis'\breve s4 dis'4 cis'\breve s8 dis'4 }
altoTwoFlex = {  }% \afterGrace cis'\breve dis'4 cis'\breve~ s4 cis'4 ~ cis'\breve s8 b4}
altoTwo = {  }% cis'\breve~ s4 cis'4 ~ cis'\breve s8 b4 }

tenorOneFlex = {  }% \afterGrace b\breve ais4 \bar "'" \bar "" b\breve s4 ais4 \bar "|" cis'\breve s8 b4 \bar "||" }
tenorOne = { }%  b\breve s4 ais4 \bar "|" cis'\breve s8 b4 \bar "||" }
tenorTwoFlex = { }%  \afterGrace gis\breve ais4 \bar "'" \bar "" gis\breve s4 fis4 \bar "|" e\breve s8 gis4 \bar "||"}
tenorTwo = {  }% gis\breve s4 fis4 \bar "|" e\breve s8 gis4 \bar "||" }

bassOneFlex = { }%  \afterGrace gis\breve s4 gis\breve s4 fis4 e\breve s8 gis4 }
bassOne = {  }% gis\breve s4 fis4 e\breve s8 gis4 }
bassTwoFlex = {  }% \afterGrace e\breve fis4 e\breve s4 fis4 cis\breve s8 gis,4 }
bassTwo = { }%  e\breve s4 fis4 cis\breve s8 gis,4 }


