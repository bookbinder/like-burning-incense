\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
keysig =  \key cis \minor
antiphon = "2"
psalmtone = "43"
psalmtonestruct = "43"
psalmnum = ""
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
    I shall not cease to plead with God for Zi --  "on * "
    un -- til he sends his Ho -- ly One in all his ra -- diant
    beau -- ty.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    \voiceOne
    cis8 b cis[ e] dis[ e] dis cis b e[ fis] e fis[ gis] gis4 \bar "'"
    gis8 gis fis gis([ b] gis4) gis8 gis fis fis4
    fis8 e[ fis] e \bar "" dis[ e] dis \bar "" cis4 cis4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    gis\breve*12/16 e'\breve*7/16 dis\breve*5/16
    cis\breve*5/16 b4.~ b4. gis2
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    e\breve*9/16 cis'4. b\breve*7/16 gis\breve*5/16
    e\breve*5/16~ e4. fis4.~ fis4 e4
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    cis\breve*9/16~ cis4. e\breve*7/16 b\breve*5/16
    a\breve*5/16 gis4. b4. cis2
}
