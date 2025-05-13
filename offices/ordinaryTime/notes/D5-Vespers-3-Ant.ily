\version "2.20.0"
%% include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key ges \major
antiphon = "3"
psalmtone = "64"
psalmtonestruct = "33"
psalmnum = "Rev_11_17-18_and_12_10b-12a"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a
%% Master transposition after accounting for psalm tone
master-from-pitch = ges
master-to-pitch = f

text = \lyricmode {
    \set includeGraceNotes = ##t
    Now has be -- gun  
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "} 
    the vic -- to -- rious reign of our God.
}
sopNotesAnt = \relative e' {
    aes8[ bes aes] f ges aes4( des,) \bar ""
    \hideNotes e16 \unHideNotes   %so that I can align the * better
    \allowBreak des8
    \allowBreak des
    \allowBreak ces[ ees]
    \allowBreak ges
    \allowBreak ges4
    \allowBreak f8
    \allowBreak ees
    \allowBreak ees4( des) \bar "||"
}
altoNotesAnt = \relative c' {
    des\breve*5/16 aes2.
    s16
    ces4. des2 aes
}
tenorNotesAnt = \relative g {
    f\breve*5/16~ f2.
    s16
    ges4.~ ges2~ ges4( f)
}
bassNotesAnt = \relative c {
    des\breve*5/16~ des2.
    s16
    ees4. bes2 des
}
