\version "2.20.0"
%% include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key ges \major
antiphon = "M"
psalmtone = "37"
psalmtonestruct = "33"
psalmnum = "Magnificat"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = aes
%% Master transposition after accounting for psalm tone
master-from-pitch = ges
master-to-pitch = f


text = \lyricmode {
    \set includeGraceNotes = ##t
    The Al -- migh -- ty has done great things for me  
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "} 
    and ho -- ly is his Name.
}
sopNotesAnt = \relative e' {
    des8 des ges f ges aes bes[ ces] bes ges \bar "" aes4
    \noBreak \hideNotes e16 \unHideNotes   %so that I can align the * better
    \allowBreak aes8
    \allowBreak ges[ ees]
    \allowBreak ees4
    \allowBreak f8
    \allowBreak ees
    \allowBreak ees4( des) \bar "||"
}
altoNotesAnt = \relative c' {
    des2.~ des2~ des4.
    s16
    bes2 ces4 aes2
}
tenorNotesAnt = \relative g {
    ges2.~ ges2 f4.
    s16
    ges2~ ges4~ ges4( f)
}
bassNotesAnt = \relative c {
    bes2. ges2 des'4.
    s16
    ees2 ces4 des2
}
