\version "2.20.0"
%% include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key aes \major
antiphon = "2"
psalmtone = "21"
psalmtonestruct = "33"
psalmnum = "Ps_127"
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
    May the Lord build our house  
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "} 
    and guard our ci -- ty.
}
sopNotesAnt = \relative e' {
    ees8 ees g[ aes] f[ ees] des f4
    \noBreak \hideNotes e16 \unHideNotes   %so that I can align the * better
    \allowBreak f8
    \allowBreak ees8[( f] ees4)
    \allowBreak des8
    \allowBreak f4
    \allowBreak ees \bar "||"
}
altoNotesAnt = \relative c' {
    ees2 des2.
    s16
    c\breve*5/16 bes2
}
tenorNotesAnt = \relative g {
    aes2~ aes2.~
    s16
    aes\breve*5/16~ aes4 g
}
bassNotesAnt = \relative c {
    c2 des2.
    s16
    aes\breve*5/16 ees'2
}
