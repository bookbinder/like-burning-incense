\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
keysig = \key cis \minor
antiphon = "1"
psalmtone = "43"
psalmtonestruct = "43"
psalmnum = "Ps_42"
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
  Je -- sus said:
  \markup { \tiny \raise #.5 \char ##x1F7B6 ""}
  My heart is near -- ly bro -- ken with sor -- row; stay here and
  keep watch with me.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    cis8[ e] e dis4
    \noBreak \hideNotes dis16 \unHideNotes
    \bar ""
    \allowBreak dis8
    \allowBreak cis[ e]
    \allowBreak e
    \allowBreak dis
    \allowBreak e
    \allowBreak fis4
    \allowBreak fis8
    \allowBreak e
    \allowBreak e[ dis]
    \allowBreak dis4
    \allowBreak r4 \bar "|"
    \allowBreak gis4
    \allowBreak fis8[ gis]
    \allowBreak fis
    \allowBreak e[ gis]
    \allowBreak fis[ gis fis]
    \allowBreak e
    \allowBreak dis4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    gis4. b4. s16 cis4.~ cis4~ cis2 b2.~
    b4~ b4. cis4~ cis2 b4
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    e4. fis4. s16 gis4.~ gis4~ gis2~ gis2.
    e4 fis4. gis4 e2 gis4
}
bassNotesAnt = \relative c {
    \global
    \keysig
    cis4. b4. s16 e4.~ e4 cis2 gis2. e'4 dis4. cis4~ cis2 gis4
}
