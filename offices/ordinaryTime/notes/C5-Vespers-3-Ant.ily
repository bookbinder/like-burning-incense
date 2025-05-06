\version "2.20.0"
%% include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key ges \major
antiphon = "3"
psalmtone = "37"
psalmtonestruct = "33"
psalmnum = "Rev_11_17-18_and_12_10b-12a"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = aes


text = \lyricmode {
    \set includeGraceNotes = ##t
    The Fa -- ther has gi -- ven Christ  \markup \with-color #(x11-color 'gray36) { \tiny \raise #.5 \char ##x1F7B6 } _ 
    all power, ho -- nor and king -- ship;
    all peo -- ple will o -- bey him.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    r8 des8 ges f ges ges[ bes] bes ces([ bes] aes4) \bar "'"
    \hideNotes e16 \unHideNotes   %so that I can align the * better
    aes8[ bes] \bar "" ges4 \bar "" f8 ges ees \bar ""
    ees[ des] des4 \bar "'"
    des8[ ees] \bar "" ces[ ees] ges \bar "" f ees
    \bar "" f[ ees des] \bar "" des4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    s2 s8 des4. ees2
    s16
    des4 bes ces4. aes2
    bes4 ces4.~ ces4 aes4.~ aes4
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    ges\breve*5/16~ ges4. ees4( aes)
    s16
    f4 ges~ ges4.~ ges4 f
    ges4~ ges4.~ ges4~ ges4. f4
}
bassNotesAnt = \relative c {
    \global
    \keysig
    bes\breve*5/16~ bes4. aes4( ces)
    s16
    des4 ees ces4. des2
    ges,4 aes4. ces4 des4.~ des4
}
