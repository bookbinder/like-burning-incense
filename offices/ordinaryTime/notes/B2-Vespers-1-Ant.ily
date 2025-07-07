\version "2.18.2"
%% include "../../../lbi_defs.ily"

antiphon = "1"
psalmnum = "Ps_45_2-10"
psalmtone = "11"
psalmtonestruct = "33"
antKeysig = \key e \major
frompitch = a
topitch = gis
%% Master transposition after accounting for psalm tone
master-from-pitch = a
master-to-pitch = a

text = \lyricmode {
    \set includeGraceNotes = ##t
    Yours is more than mor -- tal beau -- ty; 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "} 
    ev -- ery word you speak is full of grace.
}

sopNotesAnt = \relative e' {
    e8[ fis] e fis4 e8 dis e \bar "" cis4 b 
    \noBreak \hideNotes b16 \unHideNotes %so that I can align the * better
    \allowBreak e8
    \allowBreak fis
    \allowBreak gis[ b]
    \allowBreak gis
    \allowBreak fis[ gis]
    \allowBreak a
    \allowBreak gis4
    \allowBreak fis8
    \allowBreak e4 \bar "||"
}
altoNotesAnt = \relative c' {
    b4. cis\breve*11/16 s16 dis4. cis2. b4}
    tenorNotesAnt = \relative g {
        gis4. a\breve*5/16 gis2.~ s16
        gis4. a2. gis4
    }
    bassNotesAnt = \relative c {
        e4.~ e\breve*5/16~ e2. s16 b4. a2. e'4
    }
