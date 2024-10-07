\version "2.20.0"
\include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key cis \minor
antiphon = "Mag."
psalmtone = "45"
psalmtonestruct = "42"
psalmnum = "Magnificat"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = gis


text = \lyricmode {
    \set includeGraceNotes = ##t
    Bro -- "thers, * " 
    if you de -- sire to be tru -- ly rich, set your heart on true ri -- ches.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    \voiceOne
    cis8[ e dis] dis4 \bar "'" dis8 dis e fis e dis cis[ gis'] gis fis4 \bar "'"
    fis8[ gis] fis \bar "" e[ fis] e \bar "" dis([ e] fis4) \bar "" dis8[ cis] cis4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    gis4. b\breve*8/16 cis4. r4 dis4. cis4.~ cis2 gis
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    e4. fis\breve*8/16 gis4. b4~ b4. gis4. fis2 e
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    cis4. b\breve*8/16 e4. dis4 b4. cis4.~ cis2~ cis
}
