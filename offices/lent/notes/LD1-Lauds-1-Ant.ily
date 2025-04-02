\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
keysig =  \key gis \minor
antiphon = "1"
psalmtone = "43"
psalmtonestruct = "43"
psalmnum = "Ps_118"
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
    O God, my "God, * " I give you thanks; you are my God,
    I shall pro -- claim your glo -- ry.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    \voiceOne
    r8 cis8 cis[ e] e \bar "" fis([ e] \bar "" dis4) \bar "'"
    dis8 dis[ e] dis \bar "" cis4( gis') \bar ","
    gis4 fis8 \bar "" fis[ gis] \bar "" b4( ais) \bar "'"
    gis4 fis8 e \bar "" fis[ gis] fis[ e] \bar "" e([~ e] e[ dis])
    \bar "" dis4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    gis\breve*5/16 b4~ b2. cis2 e4. fis4~ fis2 e2 cis2~ cis2 gis4
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    e\breve*5/16 dis4 fis2. gis2 b4.~ b4 cis2~ cis e, gis2~ gis4
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    cis\breve*5/16 b4~ b2. e2~ e4. dis4 fis2 cis2~ cis gis2 gis4
}
