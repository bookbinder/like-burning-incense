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

sopranoOneFlex = { \afterGrace gis'\breve^"A†" fis'4 \breathe  gis'\breve fis'8 dis'4 \bar "|" ais'\breve gis'4 \bar "||" }
sopranoOne = { gis'\breve^"A" fis'8 dis'4 \bar "|" ais'\breve gis'4 \bar "||" }
sopranoShort = { \override Stem.stencil = ##f
                 \afterGrace gis'\breve*1/2 \parenthesize fis'4_"+"
                 \revert Stem.stencil
                 fis'8 dis'4 \bar "|" \allowBreak ais'\breve*1/2 gis'4 \bar "||"  }
sopranoTwoFlex = { \afterGrace gis'\breve^"B†" fis'4 \breathe  gis'\breve fis'8 dis'4 \bar "|" ais'\breve gis'4 \bar "||" }
sopranoTwo = { gis'\breve^"B" fis'8 dis'4 \bar "|" ais'\breve gis'4 \bar "||" }

altoOneFlex = { \afterGrace cis'\breve dis'4 cis'\breve s8 dis'4 fis'\breve dis'4 }
altoOne = { cis'\breve s8 dis'4 fis'\breve dis'4 }
altoTwoFlex = { \afterGrace b\breve dis'4 b\breve~ s8 b4 cis'\breve b4 }
altoTwo = { b\breve~ s8 b4 cis'\breve b4 }

tenorOneFlex = { \afterGrace cis'\breve ais4 \breathe cis'\breve s8 b4 \bar "|" cis'\breve b4 \bar "||" }
tenorOne = { cis'\breve s8 b4 \bar "|" cis'\breve b4 \bar "||" }
tenorTwoFlex = { \afterGrace gis\breve ais4 \breathe gis\breve~ s8 gis4 \bar "|" fis\breve dis4 \bar "||" }
tenorTwo = { gis\breve~ s8 gis4 \bar "|" fis\breve dis4 \bar "||" }

bassOneFlex = { \afterGrace e\breve fis4 e\breve s8 gis4 dis\breve gis4 }
bassOne = { e\breve s8 gis4 dis\breve gis4 }
bassTwoFlex = { \afterGrace e\breve dis4 e\breve s8 b,4 fis,\breve gis,4 }
bassTwo = { e\breve s8 b,4 fis,\breve gis,4 }


