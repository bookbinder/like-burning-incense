\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antKeysig = \key e \major
antiphon = "B"
psalmtone = "17"
psalmtonestruct = "44"
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
  God loved the world so much
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  that he gave his on -- ly Son to save all who have faith in him,
  and to give them e -- ter -- nal life, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
    
    
    e4 b8 cis cis[ gis'] a gis4
    \noBreak \noBreak \hideNotes gis16 \unHideNotes
    \allowBreak gis8
    \allowBreak gis
    \allowBreak gis[ a]
    \allowBreak gis
    \allowBreak fis
    \allowBreak e
    \allowBreak fis[ gis]
    \allowBreak fis
    \allowBreak fis[ gis]
    \allowBreak a4
    \allowBreak gis8
    \allowBreak fis
    \allowBreak gis
    \allowBreak fis
    \allowBreak fis([ gis] fis4) \bar "'"
    \allowBreak fis8
    \allowBreak fis
    \allowBreak e4
    \allowBreak b8
    \allowBreak cis
    \allowBreak cis[ gis']
    \allowBreak a
    \allowBreak gis4 \bar "'"
    \allowBreak fis8
    \allowBreak fis[ gis]
    \allowBreak e4
    e \bar "||"
}
altoNotesAnt = \relative c' {
    
    
    s\breve*7/16 e\breve*9/16 s16 cis\breve*11/16~ cis2.~ cis4
    r4 cis4. e4. cis4 b2
}
tenorNotesAnt = \relative g {
    
    
    gis\breve*7/16 b\breve*9/16 s16 a\breve*11/16~ a2. gis4 fis gis4. b4.
    a4~ a gis
}
bassNotesAnt = \relative c {
    
    
    e\breve*7/16~ e\breve*9/16 s16 a\breve*11/16 a,2. cis4 dis e4.~ e4.~
    e4~ e2
}
