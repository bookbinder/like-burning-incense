\version "2.20.0"
\include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key e \major
antiphon = "Mag."
psalmtone = "10"
psalmtonestruct = "33"
psalmnum = "Magnificat"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = gis


text = \lyricmode {
    \set includeGraceNotes = ##t
    Who -- e -- ver wish -- es to come af -- ter "me * "
    must de -- ny him -- self, take up his cross, and fol -- low me.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    \voiceOne
    r8 e8 e[ fis] e gis4 gis8 a b[ cis] b a b([ a] gis4) \bar "'"
    fis8[ gis] fis e[ gis] gis fis4 \bar "'"
    e8[ gis] gis gis fis4 \bar "'"
    gis8[ a] \bar "" b([ cis] \bar "" b4) b8 e,4 \bar "||" 
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    b\breve*9/16 e2 dis4 e cis4. e4. cis4 e2 fis4~ fis e cis4. b4
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    gis\breve*9/16~ gis2~ gis4~ gis a4. b a4 gis2 a4 b gis a4. gis4
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    e\breve*9/16~ e2 b4( cis) a'4. gis a4 cis,2. dis4 e4~ e4.~ e4
}
