\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
keysig =  \key gis \minor
antiphon = "M"
psalmtone = "43"
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
    Do not judge o -- "thers, * " and you will not be judged, for as you
    have judged them, so God will judge you.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    \voiceOne
    r8 cis8 cis[ e] dis([ fis] e4) \bar "" e8[ dis] dis4 \bar "'" dis8
    \bar "" e4 dis8 cis[ e] e \bar "" dis4 \bar "," dis8 dis e dis \bar ""
    cis[ gis'] \bar "" gis4 \bar "'" gis8 \bar "" fis[ gis] fis \bar ""
    fis[ e] \bar "" dis4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    gis\breve*8/16 b\breve*5/16 gis2. b\breve*6/16 cis4 \parenthesize b4.~
    \parenthesize b4. cis4 b4
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    e\breve*8/16 fis\breve*5/16 e2. gis\breve*6/16~ gis4 b4.~ b4. gis4~ gis
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    cis\breve*8/16 b\breve*5/16 cis2. gis\breve*6/16 e'4~ e4. dis4. cis4 gis
}
