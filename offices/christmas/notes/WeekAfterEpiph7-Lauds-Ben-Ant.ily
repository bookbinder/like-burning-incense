\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "B"
psalmtone = "39"
antKeysig = \key cis \minor
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
  At Ca -- na in Ga -- li -- lee
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  Je -- sus worked the first of the signs which
  re -- vealed his glo -- ry.
}
sopNotesAnt = \relative e' {
  \allowBreak r8
  \allowBreak cis8
  \allowBreak e4
  \allowBreak dis8
  \allowBreak e
  \allowBreak gis[ fis]
  \allowBreak e
  \allowBreak dis4
  \noBreak \hideNotes dis16 \unHideNotes
  \allowBreak dis8[ e]
  \allowBreak dis
  \allowBreak dis
  \allowBreak e
  \allowBreak fis4
  \allowBreak e8
  \allowBreak dis
  \allowBreak dis([ e] dis4)
  \allowBreak dis8
  \allowBreak e
  \allowBreak cis([ gis' fis] gis4)
  \allowBreak fis8
  \allowBreak e[ dis]
  \allowBreak dis4 \bar "||"
}
altoNotesAnt = \relative c' {
  gis4 b2~ 4.~ 4 s16 dis\breve*9/16 cis4( b2)
  cis2.~ 4 b
}
tenorNotesAnt = \relative g {
  e4~ 2~ 4. fis4 s16 b\breve*9/16 e,4( fis2)
  gis2.~ 2
}
bassNotesAnt = \relative c {
  cis4 gis2 b4.~ 4~ s16 b\breve*9/16~ 2.
  e2. gis,2
}
