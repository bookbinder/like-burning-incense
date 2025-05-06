\version "2.18.2"
%% include "../../../lbi_defs.ily"

antiphon = "1"
psalmnum = "Ps_45_2-10"
psalmtone = "11"
psalmtonestruct = "33"
keysig = \key e \major
frompitch = a
topitch = gis

text = \lyricmode {
    \set includeGraceNotes = ##t
    Yours is more than mor -- tal beau -- ty; \markup \with-color #(x11-color 'gray36) { \tiny \raise #.5 \char ##x1F7B6 } 
    ev -- ery word you speak is full of grace.
}

sopNotesAnt = \relative e' {
    \keysig
    \global
    e8[ fis] e fis4 e8 dis e \bar "" cis4 b 
    \hideNotes b16 \unHideNotes %so that I can align the * better
    e8 fis \bar "" gis[ b] gis \bar "" fis[ gis] \allowBreak a \allowBreak gis4 fis8 e4 \bar "||"
}
altoNotesAnt = \relative c' {
    \keysig
    \global
    b4. cis\breve*11/16 s16 dis4. cis2. b4}
    tenorNotesAnt = \relative g {
        \keysig
    \global
        gis4. a\breve*5/16 gis2.~ s16
        gis4. a2. gis4
    }
    bassNotesAnt = \relative c {
        \keysig
    \global
        e4.~ e\breve*5/16~ e2. s16 b4. a2. e'4
    }
