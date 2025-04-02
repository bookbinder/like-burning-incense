\version "2.20.0"
\include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key cis \minor
antiphon = "3"
psalmtone = "42"
psalmtonestruct = "43"
psalmnum = "Ps_150"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
    Your all -- pow -- er -- ful Word, O "Lord, * " will come to earth
    from his throne of glo -- ry, al -- le -- lu -- ia.
}
sopNotesAnt = \relative fis' {
    \global	% will be populated by an include file
		% in the cantor/organ scores called lbi_defs
    \keysig
    \voiceOne
    cis8 dis e dis cis dis[ cis] b cis4( gis') \bar "'"
    gis8 gis[ a] gis fis4 fis8 e[ fis]
    gis([ fis] gis4) fis8 e8([ dis] e[ gis fis]) fis4 \bar "'"
    e8 dis8[ fis] e[ dis cis] cis4 \bar "||"
}
altoNotesAnt = \relative d' {
    \global
    \keysig
    \voiceTwo
    gis,\breve*8/16 cis\breve*5/16 e4. dis4.~ dis4
    cis4 b4. cis\breve*8/16 b4 gis4.~ gis4
}    
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    e\breve*5/16 fis4. gis\breve*5/16 b4.~ b4.~ b4
    gis4~ gis4. a\breve*8/16 fis4~ fis4. e4
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    cis\breve*5/16 b4. e\breve*5/16~ e4. b4.~ b4
    e4~ e4. a,\breve*8/16 b4 cis4.~ cis4
}