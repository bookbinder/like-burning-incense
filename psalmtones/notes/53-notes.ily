\version "2.18.2"

divisioMinima = {
    \bar ""
    \once \override BreathingSign.stencil = #ly:breathing-sign::divisio-minima
    \once \override BreathingSign.Y-offset = #0
    \breathe
}

dm = {
    \bar ""
    \once \override BreathingSign.stencil = #ly:breathing-sign::divisio-maior
    \once \override BreathingSign.Y-offset = #0
    \breathe
}
divisioMaxima = {
    \bar ""
    \once \override BreathingSign.stencil = #ly:breathing-sign::divisio-maxima
    \once \override BreathingSign.Y-offset = #0
    \breathe
}

fi = { \bar "||" }
ll = { \once \override LyricText.self-alignment-X = #LEFT }
sm = { \set melismaBusyProperties = #'() }
usm = { \unset melismaBusyProperties }

global = {
    \key gis \minor
    \cadenzaOn
    \set tieWaitForNote = ##t
    \autoBeamOff
    %\hide Staff.Stem
}

sopranoOneFlex = { \afterGrace gis'\breve^"A†" fis'4 \breathe gis'\breve fis'8 gis' ais'4 \bar "|" gis'\breve fis'8 dis'4 \bar "||" }
sopranoOne = { gis'\breve^"A" fis'8 gis' ais'4 \bar "|" gis'\breve fis'8 dis'4 \bar "||" }
sopranoTwoFlex = { \afterGrace gis'\breve^"B†" fis'4 \breathe gis'\breve fis'8 gis' ais'4 \bar "|" gis'\breve fis'8 dis'4 \bar "||" }
sopranoTwo = { gis'\breve^"B" fis'8 gis' ais'4 \bar "|" gis'\breve fis'8 dis'4 \bar "||" }

altoOneFlex = { \afterGrace dis'\breve~ dis'4~ dis'\breve s4 dis'4 cis'\breve s8 dis'4 }
altoOne = { dis'\breve s4 dis'4 cis'\breve s8 dis'4 }
altoTwoFlex = { \afterGrace cis'\breve dis'4 cis'\breve~ s4 cis'4 ~ cis'\breve s8 b4}
altoTwo = { cis'\breve~ s4 cis'4 ~ cis'\breve s8 b4 }

tenorOneFlex = { \afterGrace b\breve ais4 \breathe b\breve s4 ais4 \bar "|" cis'\breve s8 b4 \bar "||" }
tenorOne = { b\breve s4 ais4 \bar "|" cis'\breve s8 b4 \bar "||" }
tenorTwoFlex = { \afterGrace gis\breve ais4 \breathe gis\breve s4 fis4 \bar "|" e\breve s8 gis4 \bar "||"}
tenorTwo = { gis\breve s4 fis4 \bar "|" e\breve s8 gis4 \bar "||" }

bassOneFlex = { \afterGrace gis\breve s4 gis\breve s4 fis4 e\breve s8 gis4 }
bassOne = { gis\breve s4 fis4 e\breve s8 gis4 }
bassTwoFlex = { \afterGrace e\breve fis4 e\breve s4 fis4 cis\breve s8 gis,4 }
bassTwo = { e\breve s4 fis4 cis\breve s8 gis,4 }


