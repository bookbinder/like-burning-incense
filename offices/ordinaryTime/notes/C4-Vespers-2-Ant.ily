\version "2.20.0"
%% include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key aes \major
antiphon = "2"
psalmtone = "21"
psalmtonestruct = "33"
psalmnum = "Ps_127"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
    May the Lord build our "house  * " _
    and guard our ci -- ty.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    ees8 ees g[ aes] f[ ees] des f4
    \hideNotes e16 \unHideNotes   %so that I can align the * better
    f8 ees8[( f] ees4) des8 f4 ees \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    ees2 des2.
    s16
    c\breve*5/16 bes2
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    aes2~ aes2.~
    s16
    aes\breve*5/16~ aes4 g
}
bassNotesAnt = \relative c {
    \global
    \keysig
    c2 des2.
    s16
    aes\breve*5/16 ees'2
}
