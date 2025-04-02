\version "2.20.0"
%% \include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key cis \minor
antiphon = "M"
psalmtone = "42"
psalmtonestruct = "43"
psalmnum = "Magnificat"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = gis


text = \lyricmode {
    \set includeGraceNotes = ##t
    Lord, I am not wor -- thy to have you en -- ter my "house; * "
    just say the word and my ser -- vant will be healed.
  }
sopNotesAnt = \relative e' {
    \global
    \keysig
    e4 e8 e8 dis[ e] dis[ cis] cis gis' fis gis b4^"?" b8 b8 gis4 \bar "'"
    gis8[ b] \bar "" cis--[ b] gis fis4 \bar "'" e8 fis gis[ cis,] cis e4 dis cis \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    cis2. s2 e4 fis2 e4 fis4 e4.
    dis2 cis4. b4~ b gis4
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    gis2.~ gis2 b4~ b2 cis4 b4 gis4.
    b2 e,4.~ e4 fis e
}
bassNotesAnt = \relative c {
    \global
    \keysig
    cis2. e2~ e4 dis2 cis4 dis e4. b2 a 4. gis4 b cis
}
