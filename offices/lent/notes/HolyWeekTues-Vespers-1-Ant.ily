\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
keysig = \key cis \minor
antiphon = "1"
psalmtone = "39"
psalmtonestruct = "43"
psalmnum = "Ps_49_2-13"
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
  They in -- sul -- ted me
  \markup { \tiny \raise #.5 \char ##x1F7B6 ""}
  and filled me with dread, but the Lord was at my side, like a
  migh -- ty war -- rior.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    cis8 dis e dis dis4
    \noBreak \noBreak \hideNotes dis16 \unHideNotes
    \allowBreak cis8
    \allowBreak e[ fis]
    \allowBreak e
    \allowBreak e
    \allowBreak dis4 \bar ","
    \allowBreak dis8
    \allowBreak e
    \allowBreak cis[ gis']
    \allowBreak gis
    \allowBreak fis
    \allowBreak e
    \allowBreak fis[-- gis]
    \allowBreak \breathe
    \allowBreak e
    \allowBreak fis
    \allowBreak gis4
    \allowBreak fis8
    \allowBreak e[ dis]
    \allowBreak dis4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    gis4 b\breve*5/16~ s16 b2 b2 gis4.~ gis\breve*9/16 b2
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    e4 fis\breve*5/16 s16 e2 fis2 e4.~ e\breve*9/16 gis2
}
bassNotesAnt = \relative c {
    \global
    \keysig
    cis4 b\breve*5/16 s16 gis2 b2 cis4.~ cis\breve*9/16 gis2
}
