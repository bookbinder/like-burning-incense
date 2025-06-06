\version "2.20.0"
% \include "../../../lbi_defs.ily"
    
antKeysig = \key cis \minor
antiphon = "2"
psalmnum = "Dan_3_52-57"
psalmtone = "39"
psalmtonestruct = "43"
frompitch = a
topitch = gis


text = \lyricmode {
    \set includeGraceNotes = ##t
    Come to the wa -- "ters, * " all you who thirst;
    seek the Lord while he can be found, al -- le -- lu -- ia.
}
sopNotesAnt = \relative fis' {

		
    
    
    cis8[ e] dis e fis[ e dis] dis4 \bar "'"
    dis8[ e] dis dis dis4( cis) \bar ","
    cis8[ gis'] gis fis([ gis] fis4) fis8 fis e gis gis4( fis) \bar "'"
    e8 cis[ e] fis[ e dis] dis4 \bar "||"
}
altoNotesAnt = \relative d' {

    
    
    gis,2 b4.~ b4 s1 cis4. \parenthesize b2.
    cis4 dis\breve*5/16 cis4~ cis4. b4
}    
tenorNotesAnt = \relative g {

    
    
    e2 dis4. fis4 gis2 fis4( e) gis4. b2. gis4 b\breve*5/16
    gis4~ gis4.~ gis4
}
bassNotesAnt = \relative c {

    
    
    cis2 b4.~ b4~ b2 cis2 e4. dis2. cis4 b\breve*5/16
    e4 cis4. gis4
}