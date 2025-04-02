\version "2.20.0"
%% include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key des \major
antiphon = "3"
psalmtone = "34"
psalmtonestruct = "33"
psalmnum = "Ps_117"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
    The Lord re -- mains faith -- \ll "ful,  * " _
    faith -- ful to his pro -- mise for -- e -- ver.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    r8 des8 f[ ges] aes bes4( aes8) des[ c bes] bes4 \bar "'"
    \hideNotes b16 \unHideNotes   %so that I can align the * better
    aes8[ bes] aes ges f \bar "" ges4 f8 ees \bar ""
    f[ ees des] \bar "" des4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    s8 des8~ des4.~ des ges~ ges4
    s16
    f\breve*5/16 des2~ des4. aes4
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    f4~ f4. ges4. bes des4~
    s16
    des\breve*5/16 bes2 aes4. f4
}
bassNotesAnt = \relative c {
    \global
    \keysig
    des4~ des4. ges4.~ ges~ ges4
    s16
    des\breve*5/16~ des2~ des4.~ des4
}
