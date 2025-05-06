\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key cis \minor
antiphon = "3"
psalmtone = "43"
psalmtonestruct = "43"
psalmnum = "Ps_149"
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
    Al -- le -- lu --  ia,
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
    the Lord is ri -- sen as he pro -- mised, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
    
    

    e8 b cis[ gis'] gis4 \bar ""
    \noBreak \hideNotes gis16 \unHideNotes
    \allowBreak gis8 \bar ""
    \allowBreak gis[ a]
    \allowBreak gis
    \allowBreak a
    \allowBreak gis
    \allowBreak fis
    \allowBreak e \bar ""
    \allowBreak fis[ gis fis]
    \allowBreak fis4 \bar "'"
    \allowBreak fis8 \bar ""
    \allowBreak e[ cis] \bar ""
    \allowBreak fis[ e cis] \bar ""
    \allowBreak cis4 \bar "||"
}
altoNotesAnt = \relative c' {
    
    

    s4 cis4 b4. s16 e\breve*7/16 cis2.~ cis4 gis4.~ gis4
}
tenorNotesAnt = \relative g {
    
    

    gis2~ gis4. s16 b\breve*7/16 a2.~ a4 fis4. e4
}
bassNotesAnt = \relative c {
    
    

    e2~ e4.~ s16 e\breve*7/16 a2. a,4 cis4.~ cis4
}
