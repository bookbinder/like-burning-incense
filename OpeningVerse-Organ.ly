\version "2.18.2"
\include "../../lbi_defs.ily"

#(set-global-staff-size 15)
\paper {
    print-page-number = #f
    }

ll = { \once \override LyricText.self-alignment-X = #LEFT }

global = {
    \key a \minor
    \cadenzaOn
    \set tieWaitForNote = ##t
    \autoBeamOff
}

text = \lyricmode {
	\set includeGraceNotes = ##t

    "V. O" God, come to my as -- sis -- tance.
    "R. Lord, " make haste to help me. 
    \ll "Glory to the Father, and to" the Son,
    \ll "and to the" Ho -- ly Spi -- rit:
    \ll "as it was in the beginning," is now,
    and will be for ev -- er. A -- men. Al -- le -- lu -- ia. 
}
   

sopMusic = \relative a' {
    \global
    \override Lyrics.LyricSpace.minimum-distance = #2.0
    \voiceOne
    a8 a4 a8[ b] a a g g[ a] a4 \bar "|"
    a4 a8 a g \bar "" g[ a] \bar "" a4 \bar "|"
    a\breve a8 \bar "" g4 \bar "'" a\breve a8 g \bar "" g[ a] \bar "" a4 \bar "|"
    a\breve a8 \bar "" g4 g8 \bar "" a a a \bar "" a g4 \bar "" g8[ a] \bar "" a4 \bar "'"
    a8 \bar "" a[ b] \bar "" a[ g] g4 \bar "||"     
}

altoMusic = \relative c' {
    \global
    \voiceTwo
    s8 s4 s4 s4. s4 s4
    c\breve*5/16 d4 e4~
    e\breve s8 d4
    e\breve s4 d e4~
    e\breve~ s8 e4.~ e4.~ e4.~ e4~ e4~ 
    e8 g4 e d

}
    
tenorMusic = \relative g {
    \global
    \voiceOne
    s8 s4 s4 s4. s4 s4 \bar "|"
    e\breve*5/16 b'4 c \bar "|"
    a\breve s8 b4 \bar "'"
    c\breve s4 b4 c~
    c\breve s8 b4. c d~ d4 c4~ c8
    d4 c b \bar "||"
}

bassMusic = \relative ges, {
    \global
    \voiceTwo
    s8 s4 s4 s4. s4 s4 \bar "|"
    a\breve*5/16~ a2 c\breve~ s8 c4~ c\breve s4 a'2
    a,\breve s8 e'2.~ e4. a4~ a~ a8
    g2~ g4

}

\score {
    
    <<
        \transpose e e {
        \new ChoirStaff %\with { instrumentName = \markup {
                                %\center-column { \bold "Ant. 2"
                                %\line {  "(37)"  } 
                                %}
                                %}
                            %} 
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
