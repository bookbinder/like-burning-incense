\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antKeysig = \key gis \minor
antiphon = "2"
psalmtone = "39"
psalmtonestruct = "43"
psalmnum = "Isa_12_1-6"
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
  The Lord
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  has ran -- somed his peo -- ple, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
    
    
    r8 cis8 cis([ e] dis4)
    \noBreak \noBreak \hideNotes dis16 \unHideNotes
    \allowBreak dis8
    \allowBreak dis[ e]
    \allowBreak dis
    \allowBreak e
    \allowBreak fis[ e dis]
    \allowBreak dis4 \bar "'"
    \allowBreak fis8
    \allowBreak fis[ e]
    \allowBreak dis4
    dis \bar "||"
}
altoNotesAnt = \relative c' {
    
    
    gis4 b\breve*9/16 s16 cis4. dis4. cis4~ cis4 b
}
tenorNotesAnt = \relative g {
    
    
    e4 fis\breve*9/16 s16 e4. b'4. gis4~ gis2
}
bassNotesAnt = \relative c {
    
    
    cis4 b\breve*9/16~ s16 b4.~ b4. cis4 gis2
}
