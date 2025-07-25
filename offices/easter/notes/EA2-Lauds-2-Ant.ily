\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key cis \minor
antiphon = "2"
psalmtone = "43"
psalmtonestruct = "43"
psalmnum = "1_Chr_29_10-13"
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
    Yours is the king -- dom, Lord,
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
    and yours the
    pri -- ma -- cy o -- ver all the ru -- lers of the earth,
    al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
    
    
    cis8[ e] cis b e fis \bar "" fis4( gis) \bar ""
    \noBreak \noBreak \hideNotes gis16 \unHideNotes
    \allowBreak gis8 \bar ""
    \allowBreak gis8[ a]
    \allowBreak gis \bar ""
    \allowBreak gis
    \allowBreak fis
    \allowBreak fis4
    \allowBreak fis8
    \allowBreak e \bar ""
    \allowBreak fis[ gis]
    \allowBreak fis \bar ""
    \allowBreak e[ fis]
    \allowBreak e
    \allowBreak e
    \allowBreak dis \bar ""
    \allowBreak cis[ b]
    \allowBreak \breathe
    \allowBreak cis8 \bar ""
    \allowBreak e[ dis] \bar ""
    \allowBreak cis4
    \allowBreak cis \bar "||"
}
altoNotesAnt = \relative c' {
    
    
    s\breve*11/16 s16 e4. cis2.~ cis4.~ cis\breve*8/16 b4 gis2
}
tenorNotesAnt = \relative g {
    
    
    gis\breve*6/16 b\breve*5/16~ s16 b4. a2.~ a4.
    gis\breve*5/16 fis4.~ fis4~ fis
}
bassNotesAnt = \relative c {
    
    
    e\breve*6/16~ e\breve*5/16~ s16 e4. a2. a,4.
    cis\breve*5/16 dis4. b4 cis2
}
