\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antKeysig = \key cis \minor
antiphon = "2"
psalmtone = "39"
psalmnum = "Isa_2_2-5"
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
  The house of the Lord
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  has been raised on high, and all the na -- tions will go up to it,
  al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
    
    
    r8 cis8 cis[ e] dis cis e4( dis)
    \noBreak \hideNotes dis16 \unHideNotes
    \allowBreak dis8
    \allowBreak dis[ e]
    \allowBreak dis([ e] fis4)
    \allowBreak e8
    \allowBreak e4( dis) \bar ","
    \allowBreak dis8
    \allowBreak dis[ e]
    \allowBreak dis
    \allowBreak cis[ gis']
    \allowBreak fis
    \allowBreak e
    \allowBreak fis[ gis]
    \allowBreak fis
    \allowBreak e
    \allowBreak dis4 \bar "'"
    \allowBreak fis8
    \allowBreak fis[ e]
    \allowBreak dis4
    dis \bar "||"
}
altoNotesAnt = \relative c' {
    
    
    gis2. b\breve*7/16 s16 cis\breve*5/16 b\breve*8/16
    cis2~ cis2 b4. cis4~ cis b
}
tenorNotesAnt = \relative g {
    
    
    e2. fis\breve*7/16 s16 e\breve*5/16 fis\breve*8/16 gis2~ gis~
    gis4. e4 e2
}
bassNotesAnt = \relative c {
    
    
    cis2. b\breve*7/16~ s16 b\breve*5/16~ b\breve*8/16 e2 cis2
    gis4.~ gis4~ gis2
}
