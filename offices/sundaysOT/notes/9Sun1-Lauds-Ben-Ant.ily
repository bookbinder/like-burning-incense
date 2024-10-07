\version "2.20.0"
\include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key e \major
antiphon = "Ben."
psalmtone = "11"
psalmtonestruct = "33"
psalmnum = "Benedictus"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = gis


text = \lyricmode {
    \set includeGraceNotes = ##t
    The sab -- bath was made for "man, * "
    not man for the sab -- bath.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    \voiceOne
    r8 e8 gis fis e fis[ gis] fis b4( gis) \bar "'"
    gis8 fis([ gis] fis4) e8 cis e4 e4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    b\breve*5/16 cis4. b\breve*5/16 cis\breve*6/16 a4 gis
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    gis\breve*5/16 a4. gis\breve*5/16 e\breve*6/16~ e2
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    e\breve*5/16~ e4.~ e\breve*5/16 a,\breve*6/16 e2
}
