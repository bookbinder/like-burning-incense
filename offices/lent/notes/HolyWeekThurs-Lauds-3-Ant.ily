\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antKeysig = \key cis \minor
antiphon = "3"
psalmtone = "43"
psalmtonestruct = "43"
psalmnum = "Ps_81"
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
  The Lord has fed us with the fin -- nest wheat;
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  he has filled us with ho -- ney from the rock.
}
sopNotesAnt = \relative e' {
    r8 e8 b cis cis[ gis'] gis fis e fis[ gis]
    \allowBreak fis
    \allowBreak fis4
    \noBreak \noBreak \hideNotes fis16 \unHideNotes
    \allowBreak e8
    \allowBreak fis
    \allowBreak gis4
    \allowBreak fis8
    \allowBreak e
    \allowBreak dis[ e]
    \allowBreak fis
    \allowBreak e
    \allowBreak dis
    \allowBreak dis4( cis4) \bar "||"
}
altoNotesAnt = \relative c' {
    b\breve*9/16 cis\breve*5/16~ s16 cis4 dis2 b\breve*5/16 gis2
}
tenorNotesAnt = \relative g {
    e\breve*9/16~ e\breve*5/16 s16 a4 gis2 fis\breve*5/16 e2
}
bassNotesAnt = \relative c {
    gis\breve*9/16 a\breve*5/16~ s16 a4 b2~ b\breve*5/16 cis2
}
