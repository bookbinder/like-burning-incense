\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antKeysig = \key cis \minor
antiphon = "B"
psalmtone = "42"
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
  Je -- sus took bread,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  and when he had gi -- ven thanks, he gave it to those who were
  at ta -- ble with him, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
    
    
    e4 dis8 cis[ dis] cis4( b)
    \noBreak \noBreak \hideNotes b16 \unHideNotes
    \allowBreak cis8
    \allowBreak e
    \allowBreak dis
    \allowBreak cis
    \allowBreak dis[ e]
    \allowBreak fis
    \allowBreak fis4 \bar "'"
    \allowBreak fis8
    \allowBreak gis
    \allowBreak fis
    \allowBreak e
    \allowBreak fis[ gis]
    \allowBreak fis
    \allowBreak e
    \allowBreak fis
    \allowBreak gis4
    \allowBreak fis8
    \allowBreak e
    \allowBreak fis8([ gis] fis4) \bar "'"
    \allowBreak fis8
    \allowBreak fis[ gis]
    \allowBreak cis,4
    cis \bar "||"
}
altoNotesAnt = \relative c' {
    
    
    s4. s4 s\breve*5/16 s16 s4. s4. dis4. s4. s\breve*5/16
    cis2~ cis\breve*5/16 b4 a gis
}
tenorNotesAnt = \relative g {
    
    
    gis4.~ gis4 fis\breve*5/16 s16 gis4. b2.~ b4.~ b\breve*5/16
    e,2~ e\breve*5/16 dis4 e2
}
bassNotesAnt = \relative c {
    
    
    cis4. e4 dis\breve*5/16 s16 cis4. b2. e4. dis\breve*5/16 cis2 a\breve*5/16
    b4 cis2
}
