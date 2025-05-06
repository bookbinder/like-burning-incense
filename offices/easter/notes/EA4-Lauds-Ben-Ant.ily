\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antKeysig = \key cis \minor
antiphon = "B"
psalmtone = "43"
psalmtonestruct = "43"
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
  Be -- gin -- ning with Mo -- ses and the pro -- phets,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  Je -- sus in -- ter -- pre -- ted for them all that had been
  writ -- ten of him in the Scrip -- tures, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
    
    
    r8 cis8 e dis cis dis4 cis8 b cis cis[ gis'] gis4
    \noBreak \hideNotes gis16 \unHideNotes
    \allowBreak gis8[ a gis]
    \allowBreak gis4
    \allowBreak gis8
    \allowBreak a
    \allowBreak gis
    \allowBreak gis
    \allowBreak gis
    \allowBreak fis4
    \allowBreak fis8[ gis]
    \allowBreak fis
    \allowBreak e
    \allowBreak fis
    \allowBreak gis4
    \allowBreak fis8
    \allowBreak e
    \allowBreak dis[ fis]
    \allowBreak e
    \allowBreak dis
    \allowBreak dis[ cis]
    \allowBreak cis4 \bar "'"
    \allowBreak dis8
    \allowBreak e[ dis]
    \allowBreak cis4
    \allowBreak cis \bar "||"
}
altoNotesAnt = \relative c' {
    
    
    gis\breve*5/16 b\breve*5/16 cis2 s16 e\breve*10/16
    dis4 cis\breve*5/16 b2~ b2 gis4~ gis4. a4 gis2
}
tenorNotesAnt = \relative g {
    
    
    e\breve*5/16 fis\breve*5/16 gis2 s16 b\breve*10/16~ b4
    e,\breve*5/16~ e2 fis2~ fis4 e4. fis4~ fis e
}
bassNotesAnt = \relative c {
    
    
    cis\breve*5/16 b\breve*5/16 e2~ s16 e\breve*10/16
    b4 a\breve*5/16 e2 b'2 cis4~ cis4.~ cis4~ cis2
}
