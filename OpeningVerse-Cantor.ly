\version "2.22.1"

#(set-global-staff-size 15)

ll = { \once \override LyricText.self-alignment-X = #LEFT }

\relative a' {
    \key a \minor
    \cadenzaOn
    \set tieWaitForNote = ##t
    \autoBeamOff

    a8 a4 a8[ b] a a g g[ a] a4 \bar "|"
    a4 a8 a g \bar "" g[ a] \bar "" a4 \bar "|"
    a\breve a8 \bar "" g4 \bar "'" a\breve a8 g \bar "" g[ a] \bar "" a4 \bar "|"
    a\breve a8 \bar "" g4 g8 \bar "" a a a \bar "" a g4 \bar "" g8[ a] \bar "" a4 \bar "'"
    a8 \bar "" a[ b] \bar "" a[ g] g4 \bar "||"     
}


\addlyrics {
	\set includeGraceNotes = ##t
    "V. O" God, come to my as -- sis -- tance.
    "R. Lord, " make haste to help me. 
    \ll "Glory to the Father, and to" the Son,
    \ll "and to the" Ho -- ly Spi -- rit:
    \ll "as it was in the beginning," is now,
    and will be for ev -- er. A -- men. Al -- le -- lu -- ia. 
}
   

