\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antKeysig = \key cis \minor
antiphon = "1"
psalmtone = "39"
psalmtonestruct = "43"
psalmnum = "Ps_80"
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
  Look, O Lord,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  and see my suf -- fer -- ring. Come qui -- ckly to my aid.
}
sopNotesAnt = \relative e' {
    gis8[ fis] e e4( dis)
    \noBreak \noBreak \hideNotes dis16 \unHideNotes
    \allowBreak cis8
    \allowBreak gis'[ fis]
    \allowBreak e
    \allowBreak e
    \allowBreak dis
    \allowBreak dis4 \bar ","
    \allowBreak dis8
    \allowBreak e[ fis]
    \allowBreak e
    \allowBreak e
    \allowBreak e
    \allowBreak dis4 \bar "||"
}
altoNotesAnt = \relative c' {
    b4.~ b\breve*5/16 s16 cis4. b\breve*5/16 gis\breve*5/16 b4
}
tenorNotesAnt = \relative g {
    e4. fis\breve*5/16 s16 e4. fis\breve*5/16 e\breve*5/16 gis4
}
bassNotesAnt = \relative c {
    e4. b\breve*5/16~ s16 b4.~ b\breve*5/16 cis\breve*5/16 gis4
}
