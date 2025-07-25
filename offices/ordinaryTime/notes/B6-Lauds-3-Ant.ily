\version "2.18.2"
%% include "../../../lbi_defs.ily"

antiphon = "3"
psalmnum = "Ps_147_12-20"
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
    O praise the Lord,  
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
    Je -- ru -- sa -- lem! 
}

sopNotesAnt = \relative e' {
    r8 e8 fis[ gis] fis a[(gis ] fis4) 
    \noBreak \hideNotes fis16 \unHideNotes %so that I can align the * better
    \allowBreak fis8
    \allowBreak fis[ gis]
    \allowBreak fis
    \allowBreak e4 \bar "||"
}
altoNotesAnt = \relative c' {
    b4~ b4. a4( cis4.~) s16
    cis4. b4
}
tenorNotesAnt = \relative g {
    gis4 fis4. e4~ e4. s16
    fis4. gis4
}
bassNotesAnt = \relative c {
    e4 dis4. cis4( a4.~) s16
    a4. e'4
}
