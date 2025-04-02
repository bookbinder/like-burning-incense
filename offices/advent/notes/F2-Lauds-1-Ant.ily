\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
keysig =  \key e \major
antiphon = "1"
psalmtone = "17"
psalmtonestruct = "44"
psalmnum = "Ps_90"
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
    The "Lord, * " the ru -- ler o -- ver the kings of the earth,
    will come; bles -- sed are they who are rea -- dy to go and
    wel -- come him.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    \voiceOne
    r8 gis8 gis([ a] gis4) gis8 gis[ a] gis gis fis e fis[ gis] fis gis a4
    gis8 fis([ gis fis] e4) r4 \bar "|"
    e8 fis e dis e cis cis[ b] b
    e e[ gis] gis fis8([ gis] fis4) e8 e4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    b\breve*7/16 e2. cis2 e4. cis4. b2~ b4. s4. s2 s4 s8
    cis\breve*5/16 b4
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    gis\breve*7/16 b2. a2~ a4.~ a4. gis2 e4. fis4. gis2 cis4. a\breve*5/16 gis4
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    e\breve*7/16~ e2. a2 cis,4. e4.~
    e2~ <<
      {\hideNotes \voiceOne e4. \unHideNotes \voiceTwo} \new Voice {\voiceTwo gis,4.}
    >>
    b4.
    e2~ e4.~ e\breve*5/16~ e4
}
