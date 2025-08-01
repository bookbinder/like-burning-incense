\version "2.20.0"
%% include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key des \major
antiphon = "M"
psalmtone = "34"
psalmtonestruct = "33"
psalmnum = "Magnificat"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a
%% Master transposition after accounting for psalm tone
master-from-pitch = aes
master-to-pitch = g


text = \lyricmode {
    \set includeGraceNotes = ##t
    God has cast down the migh -- ty from their thrones  
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "}  
    and has lif -- ted up the low -- ly.
}
sopNotesAnt = \relative e' {
    f8 ees des[ ees] des ees f ges aes aes bes4( aes) \bar ""
    \noBreak \hideNotes e16 \unHideNotes   %so that I can align the * better
    \allowBreak aes8
    \allowBreak aes
    \allowBreak ges[ aes]
    \allowBreak bes
    \allowBreak aes4
    \allowBreak ges8
    \allowBreak aes[ des,]
    \allowBreak des4 \bar "||"
}
altoNotesAnt = \relative c' {
    aes1 ees'4 des2.~
    s16
    des4. bes aes2
}
tenorNotesAnt = \relative g {
    f1 ges4 f2.
    s16
    ges4.~ ges4.~ ges4 f
}
bassNotesAnt = \relative c {
    des1~ des4~ des2.
    s16
    bes4. ges des'2

}
