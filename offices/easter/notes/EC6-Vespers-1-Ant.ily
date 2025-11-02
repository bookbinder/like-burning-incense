\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "1"
psalmtone = "43"
antKeysig = \key cis \minor
psalmnum = "Ps_135_1-12"
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
  I, the Lord,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  am your sav -- ior and re -- dee -- mer, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  e4 b8 cis4( gis')
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak gis8
  \allowBreak fis
  \allowBreak gis
  \allowBreak fis
  \allowBreak e
  \allowBreak e
  \allowBreak dis[ e fis]
  \allowBreak fis4 \bar "'"
  \allowBreak dis8
  \allowBreak e[ dis]
  \allowBreak cis4
  \allowBreak cis \bar "||"
}
altoNotesAnt = \relative c' {
  b4.~ \breve*8/16 s16 gis4 b2.~ 4 gis2
}
tenorNotesAnt = \relative g {
  e4.~ \breve*8/16~ s16 e4 fis4. dis fis4~ fis e
}
bassNotesAnt = \relative c {
  gis4. e\breve*8/16~ s16 e4 b'2.~ 4 cis2
}
