\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antKeysig = \key cis \minor
antiphon = "1"
psalmtone = "39"
psalmtonestruct = "43"
psalmnum = "Ps_51"
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
  Re -- mem -- ber me, Lord God,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  when you come in -- to your king -- dom, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
    
    
    r8 cis8 e e dis4 cis8[ e] fis([ e] dis4)
    \noBreak \noBreak \hideNotes dis16 \unHideNotes
    \allowBreak dis8[ e]
    \allowBreak dis
    \allowBreak cis[ gis']
    \allowBreak gis
    \allowBreak fis
    \allowBreak e
    \allowBreak fis[ e dis]
    \allowBreak dis4 \bar "'"
    \allowBreak fis8
    \allowBreak fis[ e]
    \allowBreak dis4
    \allowBreak dis4 \bar "||"
}
altoNotesAnt = \relative c' {
    
    
    gis4 b2 cis4 dis2 s16 r4. cis\breve*5/16 cis4. b4.
    cis4~ cis b
}
tenorNotesAnt = \relative g {
    
    
    e4 fis2 e4 b'\breve*7/16 s16 gis\breve*5/16~ gis2. e4 gis2
}
bassNotesAnt = \relative c {
    
    
    cis4 b2~ b4~ b\breve*7/16 s16 e\breve*5/16 gis,2.~ gis4~ gis2
}
