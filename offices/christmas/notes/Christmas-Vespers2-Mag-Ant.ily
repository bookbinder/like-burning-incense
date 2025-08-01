\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key cis \minor
antiphon = "M"
psalmtone = "Ig2"
psalmtonestruct = "55"
psalmnum = "MagnificatGreg"
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
    Christ the "Lord * " is born to -- day;
    to -- day the Sa -- vior has ap -- peared. Earth e -- choes
    songs of an -- gel choirs, arch -- an -- gels' joy -- ful
    praise. To -- day on earth his friends e -- xult: Glo -- ry
    to God in the high -- est, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
    e8 fis fis4( gis) gis8 fis[ gis a gis] fis e4( gis) \bar ","
    e8 e4( fis) e8 fis[ gis] gis gis fis \bar "" fis4( e) r4 \bar "|"
    gis8[ b] \bar "" b[ cis] b b b \bar "" b ais gis4 \bar "'"
    gis4 \bar "" fis8[ gis] \bar "" a! gis8 fis \bar "" e4( gis) \bar "|"
    r8 e \bar "" fis[ gis] gis fis[ gis] fis \bar ""
    e[ gis] gis \bar "" fis([ gis] fis4) \bar ","
    \bar "" e4 dis8 e \bar "" fis[ gis] fis e \bar "" dis[ cis b] b4 \bar "'"
    cis8 \bar "" e[ dis] \bar "" cis4 cis \bar "||"
}
altoNotesAnt = \relative c' {
    s4 s2 s2 s4 s2 s8 cis\breve*5/16~ cis\breve*5/16 b2.
    gis'4 fis\breve*5/16~ fis4 dis4 s4
    cis4.~ cis4 e2 s4 e4. dis4. cis4.~ cis2~ cis2
    b2 s4. s4. b4 gis2
}
tenorNotesAnt = \relative g {
    gis4 a4( b4.) a\breve*5/16 gis4( b4.)
    a\breve*5/16~ a\breve*5/16 gis2. b4~ b\breve*5/16
    cis4 b2 a4.~ a4 gis4( b)~ b~ b4.~ b4. gis4. a2 gis2
    fis2 gis2. fis4~ fis4 e4
}
bassNotesAnt = \relative c {
    e4~ e4~ e4.~ e\breve*5/16~ e4~ e4. a\breve*5/16
    a,\breve*5/16 e'2.~ e4 dis\breve*5/16 fis4
    gis2 a4.~ a4 e2~ e4~ e4. b4. cis4. a2 cis2
    dis2 e2. b4 cis2
}
