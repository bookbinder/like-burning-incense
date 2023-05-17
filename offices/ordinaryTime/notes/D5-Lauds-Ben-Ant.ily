\version "2.20.0"
\include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key gis \minor
antiphon = "B"
psalmtone = "39"
psalmtonestruct = "43"
psalmnum = "Benedictus"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = gis

text = \lyricmode {
    \set includeGraceNotes = ##t
    Give your peo -- ple know -- ledge of sal -- va -- tion, Lord, " * "
    and for -- give us our sins.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    \voiceOne
    e8 dis cis b cis[ gis'] gis fis e fis[ gis] fis fis4 \bar "'"
    \hideNotes e16 \unHideNotes   %so that I can align the * better
    fis8 gis cis,[ fis] fis e dis4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    gis4 s4 cis\breve*12/16
    s16
    cis4~ cis b
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    e4 fis gis\breve*5/16 b\breve*7/16
    s16
    gis4~ gis~ gis
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    cis4 dis e\breve*5/16 dis\breve*7/16
    s16
    e4 cis gis
}
