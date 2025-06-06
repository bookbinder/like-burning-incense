\version "2.18.2"
\include "../../../lbi_defs.ily"

antKeysig = \key g \major
antiphon = "3"
% this is a special musical setting, not a normal psalm tone
psalmnum = "Rev_19_1-7"
psalmtonestruct = "special"
psalmtone = "68"
frompitch = a
topitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
    Let us live in ho -- li -- ness and "love * " as we pa -- tient -- ly
    a -- wait our bles -- sed hope, the co -- ming of our Sa -- vior.
}
sopNotesAnt = \relative fis' {

		
    
    
    g8 g g[ a] g fis g fis e d4 d8 d e8[ g] g e g a4 b8 \bar ""
    d8[ c] b \bar "" a4 \bar "'"
    a8 \bar "" b a g a \bar "" a4 g4 \bar "||"
}
altoNotesAnt = \relative d' {

    
    
    d\breve*5/16 c2 b2 d\breve*5/16~ d4. e4.~ e4. d2~ d2
}    
tenorNotesAnt = \relative g {

    
    
    g\breve*5/16~ g2~ g2~ g\breve*5/16 fis4. g4. c4.~ c2 b2
}
bassNotesAnt = \relative c {

    
    
    b\breve*5/16 c2 g2 b\breve*5/16 d4. c4.~ c4. g2~ g2
}