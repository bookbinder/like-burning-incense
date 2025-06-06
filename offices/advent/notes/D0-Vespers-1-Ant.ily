\version "2.20.0"
\include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key cis \minor
antiphon = "1"
psalmtone = "56"
psalmtonestruct = "43"
psalmnum = "Ps_110_1-5,_7"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = gis


text = \lyricmode {
    \set includeGraceNotes = ##t
    He "comes, * " the de -- sire of all hu -- man hearts; his
    dwel -- ling place shall be re -- splen -- dent with glo -- ry,
    al -- le -- lu -- ia.
}
sopNotesAnt = \relative fis' {

		
    
    
    r8 cis8 cis4( gis') \bar "'" gis8 gis gis4 gis8 gis[ a] gis gis gis4( fis4)
    \bar "," fis8 \bar "" e[ fis] e e e dis e \bar ""
    fis4 e8 dis \bar "" dis[ cis] cis4 \bar "'"
    dis8 \bar "" e[ dis] \bar "" cis4 cis \bar "||"
}
altoNotesAnt = \relative d' {

    
    
    r8 cis8~ cis2. e\breve*7/16 dis\breve*5/16 cis\breve*7/16
    cis4 b gis\breve*5/16 a4 gis2
}    
tenorNotesAnt = \relative g {

    
    
    a4 gis2. b\breve*7/16~ b\breve*5/16 gis\breve*7/16
    fis2~ fis4 e4. fis4~ fis e
}
bassNotesAnt = \relative c {

    
    
    fis4 e2.~ e\breve*7/16 b\breve*5/16 cis\breve*7/16
    a4 b cis\breve*5/16~ cis4~ cis2
}