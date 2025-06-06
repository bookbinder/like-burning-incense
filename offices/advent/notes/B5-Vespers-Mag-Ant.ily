\version "2.18.2"
\include "../../../lbi_defs.ily"

antiphon = "M"
psalmnum = "Magnificat"
psalmtone = "53"
psalmtonestruct = "43"
antKeysig = \key gis \minor
frompitch = a
topitch = a
%% Transposition interval after accounting for psalm tone
master-from-pitch = a
master-to-pitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
    The one who is co -- ming af -- ter "me * " ex -- is -- ted be -- fore me;
    I am not wor -- thy to un -- tie his san -- dals.
}
sopNotesAnt = \relative fis' {

		
    
    
    r8 gis gis[ ais] gis gis fis gis ais ais ais4 \bar "'"
    ais8 gis4 gis8 fis gis4 gis r4 \bar "|"
    gis4 gis8 gis fis[ dis] dis4 dis8 dis cis dis fis[ dis] dis4 \bar "||"
}
altoNotesAnt = \relative d' {

    
    
    b\breve*8/16 cis\breve*5/16~ cis2~ cis4( b2)
    cis2 dis4 s2 cis4~ cis b
}    
tenorNotesAnt = \relative g {

    
    
    dis\breve*8/16 fis\breve*5/16 e2 dis2. gis2
    ais4 fis2 gis4~ gis2
}
bassNotesAnt = \relative c {

    
    
    gis\breve*8/16 fis\breve*5/16 cis'2 gis2. e'2
    dis2. e4 gis,2
}