\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antKeysig = \key e \major
antiphon = "3"
psalmtone = "17"
psalmtonestruct = "44"
psalmnum = "Ps_97"
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
  God has made Christ Je -- sus
  \markup { \tiny \raise #.5 \char ##x1F7B6 ""}
  our wis -- dom and our ho -- li -- ness. By him we have been
  sanc -- ti -- fied and re -- deemed.
}
sopNotesAnt = \relative e' {
    gis8[ a] gis gis4 fis8[ a] a[ gis] gis4
    \noBreak \noBreak \hideNotes gis16 \unHideNotes
    \allowBreak gis8
    \allowBreak fis[ gis]
    \allowBreak fis
    \allowBreak fis
    \allowBreak gis
    \allowBreak e[ fis]
    \allowBreak e
    \allowBreak e4 \bar "|"
    \allowBreak r8
    \allowBreak e8
    \allowBreak dis[ e]
    \allowBreak cis
    \allowBreak b
    \allowBreak cis
    \allowBreak e[ gis]
    \allowBreak fis
    \allowBreak fis4
    \allowBreak fis8
    \allowBreak gis
    \allowBreak e4 \bar "||"
}
altoNotesAnt = \relative c' {
    b\breve*5/16 e4~ e\breve*5/16 s16 cis\breve*5/16~ cis4. b4~ b\breve*5/16
    r4 cis\breve*7/16 gis4
}
tenorNotesAnt = \relative g {
    e\breve*5/16 a4 b\breve*5/16 s16 a\breve*5/16 gis4. gis4 e\breve*5/16~
    e4~ e\breve*7/16~ e4
}
bassNotesAnt = \relative c {
    e\breve*5/16~ e4~ e\breve*5/16~ s16 e\breve*5/16~ e4.~
    e4 gis,\breve*5/16~
    gis4 a\breve*7/16 e4
}
