\version "2.18.2"
\include "../../../lbi_defs.ily"

antiphon = "B"
psalmnum = "Benedictus"
psalmtone = "42"
psalmtonestruct = "43"
keysig = \key cis \minor
frompitch = a
topitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
    He will be en -- throned in Da -- vid's "place * "
    to be king for -- e -- ver, al -- le -- lu -- ia.
}
sopNotesAnt = \relative fis' {
    \global	% will be populated by an include file
		% in the cantor/organ scores called lbi_defs
    \keysig
    \voiceOne
    cis8 dis e dis cis[ gis'] gis gis([ a] gis4) gis8 fis4
    e8 fis gis([ fis] gis4) fis8 gis[ cis,] cis4 \bar "'"
    b8[ dis] dis dis[ cis] cis4 \bar "||"
}
altoNotesAnt = \relative d' {
    \global
    \keysig
    \voiceTwo
    s2 cis4. e\breve*5/16 dis2 cis\breve*5/16 gis2
    b4. gis2
}    
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    gis2~ gis4. b\breve*5/16~ b2 e,\breve*5/16~ e2 dis4. fis4 e
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    e2~ e4.~ e\breve*5/16 b2 a\breve*5/16 cis2~ cis4.~ cis2
}