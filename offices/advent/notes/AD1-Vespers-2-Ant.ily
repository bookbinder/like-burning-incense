\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "2"
psalmtone = "17"
antKeysig = \key cis \minor
psalmnum = "Ps_112"
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
  Croo -- ked paths will be straigh -- tened,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  and rough ways made smooth. Come, O Lord, do not
  de -- lay, al -- le -- lu -- ia.  
}
sopNotesAnt = \relative e' {
  cis8[ gis'] gis gis4 fis8 gis gis[ fis gis] gis4
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak fis8
  \allowBreak e[ dis]
  \allowBreak fis4
  \allowBreak e8[ dis]
  \allowBreak dis4( cis4)
  \allowBreak r4 \bar "|"
  \allowBreak e8--[ fis]
  \allowBreak dis[ e]
  \allowBreak fis4
  \allowBreak fis8
  \allowBreak e
  \allowBreak dis
  \allowBreak cis[ b]
  \allowBreak \breathe
  \allowBreak cis8
  \allowBreak e[ dis]
  \allowBreak cis4
  \allowBreak cis \bar "||"
}
altoNotesAnt = \relative c' {
  gis\breve*7/16 dis'4. cis4. s16 b4 cis b gis2.
  b2 cis\breve*8/16 b4 gis2
}
tenorNotesAnt = \relative g {
  e\breve*7/16 fis4. e4. s16 gis4 fis4~ fis~ fis( e2)~
  e2~ e\breve*5/16 dis4. fis4~ fis e
}
bassNotesAnt = \relative c {
  cis\breve*7/16~ cis2. s16 gis4 a4 b cis2.
  gis2 a\breve*5/16 b4.~ b4 cis2
}
