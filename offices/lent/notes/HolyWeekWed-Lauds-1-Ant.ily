\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antKeysig = \key cis \minor
antiphon = "1"
psalmtone = "39"
psalmtonestruct = "43"
psalmnum = "Ps_77"
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
  In the day of my dis -- tress,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  I reached out with my hands to seek the Lord's help.
}
sopNotesAnt = \relative e' {
    cis8 dis e[ dis] cis b cis cis4( gis')
    \noBreak \noBreak \hideNotes gis16 \unHideNotes
    \allowBreak gis8
    \allowBreak gis[ a]
    \allowBreak gis
    \allowBreak fis
    \allowBreak e
    \allowBreak fis4
    \allowBreak fis8
    \allowBreak e([ fis] e4)
    \allowBreak e8
    \allowBreak e[ dis] dis4 \bar "||"
}
altoNotesAnt = \relative c' {
    gis\breve*12/16 s16 dis'\breve*5/16 cis4.~ cis\breve*5/16 b2
}
tenorNotesAnt = \relative g {
    e\breve*12/16 s16 gis\breve*5/16 a4. gis\breve*5/16~ gis2
}
bassNotesAnt = \relative c {
    cis\breve*12/16 s16 b\breve*5/16 a4. cis\breve*5/16 gis2
}
