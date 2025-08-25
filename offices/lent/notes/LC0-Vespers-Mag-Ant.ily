\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key cis \minor
antiphon = "M"
psalmtone = "39"
psalmtonestruct = "43"
psalmnum = "Magnificat"
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
    Now that we have been jus -- ti -- fied by faith, 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
   
    let us be at peace with God through our Lord Je -- sus Christ.
}
sopNotesAnt = \relative e' {
    e4 dis8 e dis cis cis[ e] e dis e \bar "" fis8([ e] dis4) \bar "'"
    dis8 e fis[ gis] fis \bar "" gis([ b] gis4) gis8 \bar ""
    fis8([ e] dis4) \bar "'" dis8 dis \bar "" cis[ gis'] fis e \bar "" dis4 \bar "||"
}
altoNotesAnt = \relative c' {
    gis\breve*11/16 b\breve*9/16~ b\breve*5/16~ b2. gis2 b4
}
tenorNotesAnt = \relative g {
    e\breve*11/16 dis\breve*9/16 e\breve*5/16 dis2. e2 gis4
}
bassNotesAnt = \relative c {
    cis\breve*11/16 b\breve*9/16~ b\breve*5/16~ b2. cis2 gis4
}
