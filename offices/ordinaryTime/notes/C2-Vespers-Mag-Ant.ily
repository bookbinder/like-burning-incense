\version "2.20.0"
%% include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key des \major
antiphon = "M"
psalmtone = "62"
psalmtonestruct = "32"
psalmnum = "Magnificat"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a
%% Master transposition after accounting for psalm tone
master-from-pitch = a
master-to-pitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
    My soul pro -- claims the great -- ness of the Lord,  
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "} 
    for he has looked with fa -- vor on his low -- ly ser -- vant.
}
sopNotesAnt = \relative e' {
    r8 f8 ees[ f] ees des[ f] aes bes[ c] bes bes bes bes4( aes) \bar ""
    \hideNotes e16 \unHideNotes   %so that I can align the * better
    \allowBreak aes8
    \allowBreak ges[ aes]
    \allowBreak bes
    \allowBreak bes[( aes] bes4)
    \allowBreak bes8
    \allowBreak aes[ f]
    \allowBreak f4
    \allowBreak ees8
    \allowBreak ees
    \allowBreak f
    \allowBreak ees
    \allowBreak ees[ des]
    \allowBreak des4 \bar "||"
}
altoNotesAnt = \relative c' {
    aes4 bes4. des4.~ des\breve*5/16~ des\breve*5/16~
    s16
    des4.~ des\breve*5/16 des2 bes aes
}
tenorNotesAnt = \relative g {
    f4 ges4. f ges\breve*5/16 f2
    s16
    s8
    bes4. ges\breve*5/16 f2 ges f
}
bassNotesAnt = \relative c {
    des4~ des2. ges,\breve*5/16 des'2~
    s16
    s8
    des4.~ des\breve*5/16~ des2~ des

}
