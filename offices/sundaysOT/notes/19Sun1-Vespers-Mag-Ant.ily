\version "2.20.0"
\include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key cis \minor
antiphon = "Mag."
psalmtone = "45"
psalmtonestruct = "42"
psalmnum = "Magnificat"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = gis


text = \lyricmode {
    \set includeGraceNotes = ##t
    Where your trea -- sure "is, * " 
    there is your heart, says the Lord.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    \voiceOne
    cis4 e8 gis[ fis] gis cis,4 \bar "'" cis8[ e] dis e fis4 \breathe e8 dis
    e([ dis] cis4) \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    gis\breve*8/16 a2 cis4 b4 gis2
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    e\breve*8/16~ e2 a4 fis4~ fis( e)
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    cis\breve*8/16 a2. b4 cis2
}
