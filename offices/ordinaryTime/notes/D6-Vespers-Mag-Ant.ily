\version "2.20.0"
%% include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key cis \minor
antiphon = "M"
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
    Re -- mem -- ber your mer -- cy, Lord,  \markup \with-color #(x11-color 'gray36) { \tiny \raise #.5 \char ##x1F7B6 } _
    the pro -- mise of mer -- cy you made to our fa -- thers.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    r8 cis8 e dis cis dis4 b8 cis8[( e] dis4) \bar "'"
    \hideNotes e16 \unHideNotes   %so that I can align the * better
    dis8 e dis cis gis'4 fis8 e dis[ fis] e dis cis4 cis \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    gis\breve*5/16 b4.~ b4~ b4.
    s16
    gis\breve*7/16 b2 gis
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    e\breve*5/16 fis4. e4( fis4.)
    s16
    e\breve*7/16 fis2~ fis4 e
}
bassNotesAnt = \relative c {
    \global
    \keysig
    cis\breve*5/16 b4.~ b4~ b4.
    s16
    cis\breve*7/16 b4 gis cis2
}
