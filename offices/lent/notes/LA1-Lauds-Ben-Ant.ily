\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
keysig =  \key gis \minor
antiphon = "B"
psalmtone = "42"
psalmtonestruct = "43"
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
    Je -- "sus * " was led by the Spi -- rit in -- to the de -- sert to be
    temp -- ted by the de -- vil; and when he had fas -- ted for for -- ty
    days and for -- ty nights, he was hun -- gry.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    \voiceOne
    cis8^"A# in the psalm tone?"
    ([-- dis] e[ dis cis]) cis4 b8 \bar "" cis([ gis' fis] gis4)
    fis8 e \bar "" fis8[ gis] fis \bar "" e e fis \bar "" gis[ cis,] cis4
    \bar "'" cis8 dis \bar "" fis4 e8 fis gis \bar "" b[ ais gis] \bar ""
    gis4 \bar "|" r8 gis8 gis fis gis \bar "" gis ais b \bar "" cis[ b] ais
    ais4 gis8 \bar "" cis[ b] ais \bar "" ais4 \bar "'" gis8 fis gis4 gis4
    \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    s\breve*8/16 cis\breve*13/16 cis\breve*6/16~ cis\breve*5/16
    dis4. b4 dis\breve*5/16 fis4.~ fis2.~ fis4.~ fis4~ fis dis2
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    gis\breve*8/16 gis\breve*7/16 b4. gis4. e\breve*6/16 gis\breve*5/16
    ~ gis4.~ gis4~ gis\breve*5/16 b4. ais2. dis4. cis4~ cis~ cis b
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    e\breve*8/16~ e\breve*7/16 dis4. cis4.~ cis\breve*6/16~ cis\breve*5/16
    gis4.~ gis4 b\breve*5/16 dis4. fis2.~ fis4.~ fis4 dis gis2
}
