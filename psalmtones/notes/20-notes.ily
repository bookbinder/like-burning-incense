\version "2.18.2"

toneStruct = "42"
toneKeysig = \key a \major


sopranoOneFlex = { \afterGrace a'\breve^"A†" fis'4 \bar "'" a'\breve fis'8 a' gis'4 \bar "|" fis'\breve e'4 \bar "||"  }
sopranoOne = { a'\breve^"A" fis'8 a' gis'4 \bar "|" fis'\breve e'4 \bar "||" }
sopranoShort = { \override Stem.stencil = ##f
                 \afterGrace a'\breve*1/2 \parenthesize fis'4_"+"
                 \revert Stem.stencil
                 fis'8 a' gis'4 \bar "|" \allowBreak fis'\breve*1/2 e'4 \bar "||"  }
sopranoTwoFlex = { \afterGrace a'\breve^"B†" fis'4 \bar "'" a'\breve fis'8 a' gis'4 \bar "|" fis'\breve e'4 \bar "||" }
sopranoTwo = { a'\breve^"B" fis'8 a' gis'4 \bar "|" fis'\breve e'4 \bar "||" }

altoOneFlex = { \afterGrace cis'\breve~ cis'4~ cis'\breve~ s4 cis'4   d'\breve b4 }
altoOne = { cis'\breve~ s4 cis'4   d'\breve b4 }
altoTwoFlex = { \afterGrace cis'\breve~ cis'4~ cis'\breve~ s4 cis'4 d'\breve b4 }
altoTwo = { cis'\breve~ s4 cis'4 d'\breve b4 }

tenorOneFlex = { \afterGrace e\breve fis4 \bar "'" e\breve s4 gis4 \bar "|" a\breve gis4 \bar "||" }
tenorOne = { e\breve s4 gis4 \bar "|" a\breve gis4 \bar "||" }
tenorTwoFlex = { \afterGrace fis\breve a4 \bar "'" fis\breve s4 gis4 \bar "|" b\breve gis4 \bar "||" }
tenorTwo = { fis\breve s4 gis4 \bar "|" b\breve gis4 \bar "||" }

bassOneFlex = { \afterGrace a,\breve~ a,4~ a,\breve s4 e4 b,\breve e4 }
bassOne = { a,\breve s4 e4 b,\breve e4  }
bassTwoFlex = { \afterGrace s\breve fis4 s\breve s4 e4 d\breve e4 }
bassTwo = {s\breve s4 e4 d\breve e4  }


