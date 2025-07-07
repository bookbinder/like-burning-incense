\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
keysig = \key cis \minor
antiphon = "3"
psalmtone = "42"
psalmtonestruct = "43"
psalmnum = "Rev_4_11_and_5_9,_10,_12"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = gis
%% master transposition after accounting for psalm tone
master-from-pitch = a
master-to-pitch = a


text = \lyricmode {
  \set includeGraceNotes = ##t
  You were slain, Lord,
  \markup { \tiny \raise #.5 \char ##x1F7B6 ""}
  and by your blood you have ran -- somed us for God.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    b8 cis cis[ gis'] gis4
    \noBreak \noBreak \hideNotes gis16 \unHideNotes
    \allowBreak gis8
    \allowBreak fis
    \allowBreak e
    \allowBreak fis4
    \allowBreak fis8
    \allowBreak fis
    \allowBreak gis
    \allowBreak cis,
    \allowBreak b
    \allowBreak cis
    \allowBreak dis4( cis) \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    s4 cis4 e\breve*5/16 s16 cis2~ cis4 r4 gis2
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    fis4 gis4 b\breve*5/16 s16 a2 gis4 fis4 e2
}
bassNotesAnt = \relative c {
    \global
    \keysig
    dis4 e4~ e\breve*5/16~ s16 e2~ e4 dis4 cis2
}
