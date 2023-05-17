\version "2.20.0"
\include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key e \major
antiphon = "2"
psalmtone = "11"
psalmtonestruct = "33"
psalmnum = "Ps_135_13-21"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = gis


text = \lyricmode {
    \set includeGraceNotes = ##t
    House of Is -- ra -- el, bless the Lord! " * " 
    Sing psalms to him, for he is mer -- ci -- ful.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    \voiceOne
    b4 cis8 e dis cis dis[ e] gis fis4 \bar "'"
    \hideNotes e16 \unHideNotes   %so that I can align the * better
    fis8[ gis fis] gis[ a] b a4 gis8 fis e fis[ gis] e e4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    b\breve*6/16 cis4.~ cis4
    s16
    dis2. e\breve*5/16 cis4. b4
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    e\breve*6/16~ e4. a4
    s16
    fis2. a\breve*5/16~ a4. gis4
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    gis\breve*6/16 a4.~ a4
    s16
    b2. cis\breve*5/16 e4.~ e4
}
