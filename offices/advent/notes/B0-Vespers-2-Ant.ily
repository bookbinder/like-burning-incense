\version "2.18.2"
% \include "../../../lbi_defs.ily"

antiphon = "2"
psalmnum = "Ps_16"
psalmtone = "47"
psalmtonestruct = "33"
keysig = \key e \major
frompitch = a
topitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
    Have cou -- rage, all of "you, * " lost and fear -- ful; take heart and
    say: Our God will come to save us, al -- le -- lu -- ia.
}
sopNotesAnt = \relative fis' {
    \global	% will be populated by an include file
		% in the cantor/organ scores called lbi_defs
    \keysig
    \voiceOne
    r8 e8 e[ fis] e dis[ e] cis b4 \bar "'" e4 fis8 fis[ gis] fis \breathe
    e gis[ a] gis fis4 \bar "," gis8[ a] b[ cis] b gis[ b] b a[ gis fis] fis4
    \bar "'" fis8 fis[ gis] e4 e4 \bar "||"
}
altoNotesAnt = \relative d' {
    \global
    \keysig
    \voiceTwo
    b\breve*10/16 cis4. dis2 e4. cis4 e4~ e2. cis2.~ cis4 b2
}    
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    gis\breve*8/16 fis4 gis4. b2~ b4. a4 b4~ b2.
    \parenthesize cis4. a4.~ a4~ a4 gis4
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    e\breve*8/16 dis4 cis4. b2 e4.~ e4~ e4 gis2. a2.
    a,4 e'2
}