\version "2.20.0"
%% include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key aes \major
antiphon = "1"
psalmtone = "21"
psalmtonestruct = "33"
psalmnum = "Ps_93"
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
    Glo -- rious is the Lord!  
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "} 
    Glo -- rious is the Lord on high, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
    aes8 aes g aes f4( ees) \bar ""
    \hideNotes e16 \unHideNotes   %so that I can align the * better
    \allowBreak aes8
    \allowBreak aes
    \allowBreak g
    \allowBreak aes
    \allowBreak f[ ees]
    \allowBreak des[ ees]
    \allowBreak f4 \bar "'"
    \allowBreak ees8
    \allowBreak des
    \allowBreak f[ ees]
    \allowBreak ees4 \bar "||"
}
altoNotesAnt = \relative c' {
    ees2 c2~
    s16
    c1 des2 bes
}
tenorNotesAnt = \relative g {
    aes2~ aes~
    s16
    aes1~ aes2~ aes4 g

}
bassNotesAnt = \relative c {
    c2 aes2 
    s16
    f'2 ees2 des4 bes ees2

}
