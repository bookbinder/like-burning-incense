\version "2.18.2"

%†



\paper {
    print-page-number = #f
    %indent = 0
}

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
    \key f \minor
    \cadenzaOn
    \set tieWaitForNote = ##t
    \autoBeamOff
    %\hide Staff.Stem
}

text = \lyricmode {
    \set includeGraceNotes = ##t
}


sopranoAnt = { }
sopranoOneFlex = { \afterGrace aes'\breve^"A†" f'4 \breathe aes'\breve g'8 f'8 aes'4 \bar "|" g'\breve aes'8 f'4 \bar "||" }
sopranoOne = { aes'\breve^"A" g'8 f'8 aes'4 \bar "|" g'\breve aes'8 f'4 \bar "||" }
sopranoTwoFlex = { \afterGrace aes'\breve^"B†" f'4 \breathe aes'\breve g'8 f'8 aes'4 \bar "|" g'\breve aes'8 f'4 \bar "||" }
sopranoTwo = { aes'\breve^"B" g'8 f'8 aes'4 \bar "|" g'\breve aes'8 f'4 \bar "||" }

altoAnt = {  }
altoOneFlex = { \afterGrace c'\breve des'4 c'\breve s4 des'4~ des'\breve s8 c'4 }
altoOne = { c'\breve s4 des'4~ des'\breve s8 c'4 }
altoTwoFlex = { \afterGrace f'\breve des'4 f'\breve s4 ees'4 ees'\breve s8 c'4 }
altoTwo = { f'\breve s4 ees'4 ees'\breve s8 c'4 }

tenorAnt = {  }
tenorOneFlex = { \afterGrace aes\breve bes4 \breathe aes\breve s2 \bar "|" bes\breve s8 aes4 \bar "||" }
tenorOne = { aes\breve s2 \bar "|" bes\breve s8 aes4 \bar "||" }
tenorTwoFlex = { \afterGrace aes\breve bes4 \breathe aes\breve~ s4 aes4 \bar "|" bes\breve s8 aes4 \bar "||" }
tenorTwo = { aes\breve~ s4 aes4 \bar "|" bes\breve s8 aes4 \bar "||" }

bassAnt = {  }
bassOneFlex = { \afterGrace f\breve~ f4~ f\breve~ s2 f\breve~ s8 f4 }
bassOne = { f\breve~ s2 f\breve~ s8 f4 }
bassTwoFlex = { \afterGrace des\breve~ des4~ des\breve s4 c4~ c\breve s8 f4 }
bassTwo = { des\breve s4 c4~ c\breve s8 f4 }

sopMusic = {
    \global
    \voiceOne
    \sopranoOneFlex
    \sopranoTwoFlex
    %\sopranoOne
    %\sopranoTwo
}
altoMusic = {
    \global
    \voiceTwo
    \altoOneFlex
    \altoTwoFlex
    %\altoOne
    %\altoTwo
}

tenorMusic = {
    \global
    \voiceOne
    \tenorOneFlex
    \tenorTwoFlex
    %\tenorOne
    %\tenorTwo
}

bassMusic = {
    \global
    \voiceTwo
    \bassOneFlex
    \bassTwoFlex
    %\bassOne
    %\bassTwo
}

\score {

    \header {
        %piece = \markup { \fontsize #2 \bold "LBI_3a" }
    }
    <<
        \transpose e e {



            \new ChoirStaff \with { instrumentName = #"48" } % LBI_12a
            <<
                \new Staff ="up"
                <<
                    \clef treble
                    \accidentalStyle forget
                    \new Voice = "Soprano" \sopMusic
                    \new Voice = "Alto" \altoMusic
                    %\new Lyrics \lyricsto Soprano \text
                >>
                \new Staff ="down"
                <<
                    \clef bass
                    \accidentalStyle forget
                    \new Voice = "Tenor" \tenorMusic
                    \new Voice = "Bass" \bassMusic
                >>
            >>
        }
    >>

    \layout 
    { 
        ragged-last = ##t
        \context 
        { 
            \Staff 
            \remove Time_signature_engraver 
        } 

    } 

}
