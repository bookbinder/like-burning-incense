\version "2.20.0"
\include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key e \major
antiphon = "M"
psalmtone = "14"
psalmtonestruct = "43"
psalmnum = "Magnificat"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = gis


text = \lyricmode {
    \set includeGraceNotes = ##t
    Be -- fore Ma -- ry and Jo -- seph had come to -- ge -- "ther, * "
    they learned that Ma -- ry was with child by the pow -- er of
    the Ho -- ly Spi -- rit, al -- le -- lu -- ia.
}
sopNotesAnt = \relative fis' {

		
    
    
    r8 e8 e4 dis8 e cis cis[ b] b e fis[ e] fis fis[ gis] gis4 \bar "'"
    fis8 \bar "" e[ gis] a \bar ""
    gis[ fis] fis4 e8 fis \bar "" fis([ gis] fis4) fis8 fis \bar "" gis[ b]
    gis fis e \bar "" fis[ gis] fis \bar "" gis[ e] \bar "" e4 \bar "'"
    fis8 \bar "" fis[ gis] \bar "" e4 e \bar "||"
}
altoNotesAnt = \relative d' {

    
    
    b\breve*11/16 cis4. b\breve*5/16 e4. cis2.~ cis2.
    dis\breve*5/16 e4. cis4 b4. cis4 b2
}    
tenorNotesAnt = \relative g {

    
    
    e\breve*11/16~ e4.~ e\breve*5/16 gis4. a2.~ a2.
    gis\breve*5/16 a4. gis4~ gis4. a4~ a4 gis4
}
bassNotesAnt = \relative c {

    
    
    gis\breve*11/16 a4. e'\breve*5/16~ e4.
    a2. a,2. b\breve*5/16 cis4. e4~ e4.~ e4~ e2
}