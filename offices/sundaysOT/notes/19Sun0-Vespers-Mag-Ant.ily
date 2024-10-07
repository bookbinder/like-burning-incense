\version "2.20.0"
\include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key cis \minor
antiphon = "Mag."
psalmtone = "56"
psalmtonestruct = "43"
psalmnum = "Magnificat"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = gis

text = \lyricmode {
    \set includeGraceNotes = ##t
    Lord, bid me walk a -- cross the wa -- "ters. * " 
    Je -- sus reached out to take hold of Pe -- ter, and said:
    O man of lit -- tle faith, why did you fal -- ter?
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    \voiceOne
    gis4 fis8[ gis] gis b[ cis] cis gis fis e[ cis] cis4 \bar "'"
    cis8[ e] e cis[ e] fis4 fis8 \bar "" e[ fis] fis[ gis] fis \bar ""
    e[ gis] gis gis fis4 \bar "'"
    e8[ fis] gis4 gis8 \bar "" cis,8([ e] fis4) e8 dis4 \bar "'"
    e4 e8 dis dis[ cis] cis4 \bar "||"
  }
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    e\breve*5/16~ e\breve*5/16 r2 cis\breve*8/16~ cis\breve*5/16
    e2 b4~ b\breve*5/16 cis\breve*5/16 b4 gis2~ gis2
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    b\breve*5/16 gis\breve*5/16~ gis2 a\breve*8/16~ a\breve*5/16
    gis2 \parenthesize b4 gis\breve*5/16 a\breve*5/16 fis4~ fis2 e
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    e\breve*5/16~ e\breve*5/16~ e2 a,\breve*8/16 a\breve*5/16
    cis2 dis4 e\breve*5/16 a,\breve*5/16 b4 cis2~ cis
}
