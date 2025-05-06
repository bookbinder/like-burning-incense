\version "2.20.0"
%% include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key ges \major
antiphon = "B"
psalmtone = "37"
psalmtonestruct = "33"
psalmnum = "Benedictus"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = aes


text = \lyricmode {
    \set includeGraceNotes = ##t
     God has raised up for us  \markup \with-color #(x11-color 'gray36) { \tiny \raise #.5 \char ##x1F7B6 } _
     a migh -- ty Sav -- ior, as he pro -- mised through 
     the words of his ho -- ly pro -- phets.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    des8[ ges] f ges[ bes] bes bes aes4
    \hideNotes e16 \unHideNotes   %so that I can align the * better
    aes8 ges[ ees f] ees ees[ des] des4 \bar "'"
    des8 des des[ aes'] aes ges aes \bar "" ces[( bes] aes4)
    aes8 aes \break \bar "" ges[ ees f] ees \bar "" ees[ des] des4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    des\breve*7/16~ des4. 
    s16
    bes2 s2 s4 des4.~ des4 ees2. ces2 aes
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    ges\breve*7/16 f4. 
    s16
    ges2 aes2. f4.~ f4 ges2. ees2 f
}
bassNotesAnt = \relative c {
    \global
    \keysig
    bes\breve*7/16 des4. 
    s16
    ees2 f2. des4.~ des4 ces2.~ ces2 des

}
