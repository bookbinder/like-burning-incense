\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
keysig =  \key cis \minor
antiphon = "5"
psalmtone = "56"
psalmtonestruct = "43"
psalmnum = "Benedictus"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = gis
%% master transposition after accounting for psalm tone
master-from-pitch = e
master-to-pitch = f


text = \lyricmode {
    \set includeGraceNotes = ##t
    Ho -- ly and sin -- less Vir -- gin Ma -- "ry, * "
    how shall I find words
    to praise you, for through you we have
    re -- ceived our Re -- dee -- mer,
    Je -- sus Christ, the Lord!
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    \voiceOne
    cis8[ e] cis b cis[ e] fis gis[ fis] e fis4 fis
    \bar "'" gis8[ fis] e \bar "" fis4
    fis8 \bar "" gis[ b] b cis[ b gis] gis4
    \bar "," gis8 \bar "" gis[ a] gis4( fis) fis8 fis fis
    \bar "" fis[ e] cis b \bar "" cis--[ e fis] fis4 \bar "'" fis8[ gis] gis \bar "" cis,--([ dis] fis4)
    e8 \bar "" dis4( cis) \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    s4*10 gis'2. e4. cis\breve*9/16~ cis4 r4
    cis\breve*5/16 b4. a\breve*5/16 gis2
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    gis\breve*7/16 b4.~ b2~ b4. a4. b2.~ b4.
    a\breve*9/16 fis2 e\breve*5/16 dis4.
    fis\breve*5/16 e2
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    e\breve*7/16~ e4. dis2 e2.~ e2.~ e4.
    a\breve*9/16 a,2~ a\breve*5/16 b4.
    cis\breve*5/16~ cis2
}
