\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
keysig = \key gis \minor
antiphon = "B"
psalmtone = "56"
psalmtonestruct = "43"
psalmnum = "Benedictus"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = gis
%% master transposition after accounting for psalm tone
master-from-pitch = ais
master-to-pitch = a


text = \lyricmode {
  \set includeGraceNotes = ##t
  With palms
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  let us wel -- come the Lord as he comes, with songs and hymns
  let us run to meet him, as we of -- fer him our joy -- ful
  wor -- ship and sing: Ble -- ssed be the Lord!
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    r8 cis8 gis'([ a] gis4)
    \noBreak \noBreak \hideNotes gis16 \unHideNotes
    \allowBreak gis8
    \allowBreak fis
    \allowBreak fis4
    \allowBreak e8
    \allowBreak fis
    \allowBreak fis[ gis]
    \allowBreak e
    \allowBreak dis
    \allowBreak cis4 \bar "'"
    \allowBreak gis'8
    \allowBreak gis[ fis]
    \allowBreak gis
    \allowBreak gis([ ais] b4)
    \allowBreak b8
    \allowBreak b
    \allowBreak ais[ b]
    \allowBreak ais
    \allowBreak ais[ gis]
    \allowBreak gis4 \bar "'"
    \allowBreak gis8
    \allowBreak fis
    \allowBreak e[ gis]
    \allowBreak gis
    \allowBreak gis4
    \allowBreak fis8
    \allowBreak gis[ fis]
    \allowBreak e
    \allowBreak fis[ gis]
    \allowBreak e
    \allowBreak dis
    \allowBreak cis([ dis] e4) \bar ","
    \allowBreak e8[ fis]
    \allowBreak e
    \allowBreak dis
    \allowBreak b
    \allowBreak b4( cis) \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    s4 s2. s16 cis1~ cis4. e4.
    dis2.~ dis4. cis2. e4. cis\breve*10/16~ cis2
    b4.~ b4 gis2
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    gis4 b2. s16 a1 gis4.~ gis4. gis2. fis4. e2. gis4.
    e\breve*10/16 a2 e4. fis4~ fis( e)
}
bassNotesAnt = \relative c {
    \global
    \keysig
    e4~ e2.~ s16 e1~ e4. cis4.
    b4( gis2) dis'4. e2. cis4.~ cis\breve*10/16
    a2 gis4.~ gis4 cis2
}
