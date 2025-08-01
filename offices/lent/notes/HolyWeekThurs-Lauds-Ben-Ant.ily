\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
keysig = \key gis \minor
antiphon = "B"
psalmtone = "39"
psalmtonestruct = "43"
psalmnum = "Benedictus"
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
  I have longed
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  to eat this meal with you be -- fore I suf -- fer.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    cis8 dis8 e([ dis] cis4)
    \noBreak \noBreak \hideNotes cis16 \unHideNotes
    \allowBreak cis8
    \allowBreak dis[ e]
    \allowBreak fis
    \allowBreak fis
    \allowBreak e
    \allowBreak dis4 \bar "'"
    \allowBreak dis8
    \allowBreak cis[ gis']
    \allowBreak fis
    \allowBreak fis[-- e dis]
    \allowBreak dis4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    s\breve*7/16 s16 b4. cis4 b4. cis4.~ cis4. b4
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    gis\breve*7/16 s16 fis4. e4 fis4. gis4.~ gis4.~ gis4
}
bassNotesAnt = \relative c {
    \global
    \keysig
    e\breve*7/16 s16 b4.~ b4~ b4. e4. cis4. gis4
}
