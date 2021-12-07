\version "2.18.2"
\include "../lbi_defs.ily"

\paper {
    print-page-number = #f
    }

ll = { \once \override LyricText.self-alignment-X = #LEFT }

global = {
    \key f \minor
    \cadenzaOn
    \set tieWaitForNote = ##t
    \autoBeamOff
}

text = \lyricmode {
    \set includeGraceNotes = ##t
    Let ev -- ery -- thing in hea -- ven and on "earth * " bend the knee at the name of Je -- sus, al -- le -- lu -- ia.
}
   

sopMusic = \relative e' {
    \global
    \override Lyrics.LyricSpace.minimum-distance = #2.0
    \voiceOne
    r8 c8 c des c bes ees ees f aes g[( f] ees4) \bar "'" ees8[ f] ees f4 f8 ees des ees des[ c] c4 \bar "'" ees8 ees[ des] des[ c] c4 \bar "||"
}

altoMusic = \relative c' {
    \global
    \voiceTwo
    r8 s1 s2 s8 c\breve*13/16 s8 bes4~ bes4 aes
}
    
tenorMusic = \relative g {
    \global
    \voiceOne
    aes2.~ aes2 bes2 aes\breve*9/16 g\breve*4/16 s8 f4~ f2
}

bassMusic = \relative f {
    \global
    \voiceTwo
    f2. c2 ees4( g) aes\breve*9/16 ees\breve*4/16 s8 bes4 f2
}

\score {
    
    <<
        \transpose e e {
        \new ChoirStaff \with { instrumentName = \markup {
                                \center-column { \bold "Ant. 3."
                                \line {  "(20)"  } 
                                }
                                }
                            } 
            <<
                \new Staff ="up"
                    <<
                        \clef treble
                        \accidentalStyle forget
                        \new Voice = "Soprano" \sopMusic
                        \new Voice = "Alto" \altoMusic
                        \new Lyrics \lyricsto Soprano \text
                        %\new Lyrics \lyricsto Soprano \textB
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
