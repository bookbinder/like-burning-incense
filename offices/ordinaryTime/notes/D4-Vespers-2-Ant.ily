\version "2.20.0"
%% include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key e \major
antiphon = "2"
psalmtone = "11"
psalmtonestruct = "33"
psalmnum = "Ps_139_13-18,_23-24"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = gis

text = \lyricmode {
    \set includeGraceNotes = ##t
    I am the Lord:  \markup \with-color #(x11-color 'gray36) { \tiny \raise #.5 \char ##x1F7B6 } _
    I search the mind and probe the heart.
    I give to each one as his deeds de -- serve.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    e4 fis8 gis a4( gis) \bar "'"
    \hideNotes e16 \unHideNotes   %so that I can align the * better
    fis8 \bar "" fis[ gis] fis e4 dis8 \bar "" cis[ dis] cis b4 \bar "'"
    b8 \bar "" cis[ e] e \bar ""
    fis[ gis fis] fis4 e8 e \bar "" fis[ gis] fis e4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    e2~ e\breve*5/16
    s16
    cis2. s2 s8 s8 cis4.~ cis\breve*7/16~ cis4. b4
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    gis2 b\breve*5/16
    s16
    a2. gis4. fis e4.~ e\breve*7/16 a4. gis4
}
bassNotesAnt = \relative c {
    \global
    \keysig
    e2~ e\breve*5/16
    s16
    a2. e4. dis cis a\breve*7/16~ a4. e'4
}
