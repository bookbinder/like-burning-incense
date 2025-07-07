\version "2.20.0"
% %% include "../../../lbi_defs.ily"

antiphon = "1"
psalmnum = "Ps_62"
psalmtone = "50"
psalmtonestruct = "33"
antKeysig = \key f \minor
frompitch = a
topitch = a
%% Master transposition after accounting for psalm tone
master-from-pitch = a
master-to-pitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
    Ea -- ger -- ly we a -- wait 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
    the ful -- fill -- ment of our hope,
    the glo -- rious com -- ing of our Sav -- ior.
}

sopNotesAnt = \relative e' {
    aes8 g f ees f \bar "" g[( aes] bes4) 
    \noBreak \hideNotes bes16 \unHideNotes %so that I can align the * better
    bes8 aes bes[ c] bes \bar "" aes c c4( bes) \bar "'"
    bes8 aes[ bes] aes \bar "" g g g ees f4 f \bar "||"
}
altoNotesAnt = \relative c' {
    c\breve*5/16 f\breve*9/16~ s16 f4 g\breve*1/4
    s8 des4.~ des2 c2
}
tenorNotesAnt = \relative g {
    aes\breve*5/16 bes\breve*9/16 s16 des4 bes\breve*1/4
    s8 des4. bes2~ bes4 aes
}
bassNotesAnt = \relative c {
    f\breve*5/16 des\breve*9/16~ s16 des4 ees\breve*1/4
    s8 f4.~ f2~ f
}
