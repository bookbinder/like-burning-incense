\version "2.20.0"
%% include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key e \major
antiphon = "2"
psalmtone = "8"
psalmtonestruct = "33"
psalmnum = "Isa_33_13-16"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = gis


text = \lyricmode {
    \set includeGraceNotes = ##t
    Bless -- ed is the up -- right \ll "man,  * " _
    who speaks the truth.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    gis8[ a] gis fis gis a a gis4
    \hideNotes e16 \unHideNotes   %so that I can align the * better
    gis8 fis[ a gis] fis a4( gis) \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    e\breve*5/16~ e4~ e4.~ 
    s16
    e2~ e
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    b\breve*5/16 cis4 b4.
    s16
    a2 b
}
bassNotesAnt = \relative c {
    \global
    \keysig
    e\breve*5/16~ e4~ e4.
    s16
    cis2 e
}
