\version "2.20.0"
%% \include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key gis \minor
antiphon = "M"
psalmtone = "53"
psalmtonestruct = "43"
psalmnum = "Magnificat"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
    Who -- e -- ver re -- fu -- "ses * " 
    to take up his cross and fol -- low me can -- not be my di -- sci -- ple,
    says the Lord.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    r8 cis8 e e e e[ dis] dis4 dis8 dis[ e] dis e fis4 gis8 b[ ais] gis \bar ""
    gis4 \bar "'" gis8 \bar "" fis4 fis8 e dis \bar "" fis4 fis8 fis e \bar ""
    e4( dis) \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    gis\breve*5/16 b\breve*9/16 fis'2. e4. dis\breve*5/16 cis b2
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    e\breve*5/16 fis\breve*9/16 b2.~ b4.~ b\breve*5/16 gis gis2
}
bassNotesAnt = \relative c {
    \global
    \keysig
    cis\breve*5/16 b\breve*9/16 dis2. e4. b\breve*5/16 e4. cis4 gis2
}
