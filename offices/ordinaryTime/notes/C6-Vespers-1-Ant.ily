\version "2.20.0"
%% include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key ges \major
antiphon = "1"
psalmtone = "36"
psalmtonestruct = "33"
psalmnum = "Ps_135_1-12"
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
    Great is the Lord, our God,  
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "} 
    tran -- scen -- ding all o -- ther gods.
}
sopNotesAnt = \relative e' {
    aes8[ bes aes] f ges aes[ bes] aes ces[( bes] aes4) \bar ""
    \hideNotes e16 \unHideNotes   %so that I can align the * better
    \allowBreak aes8
    \allowBreak ges[ aes]
    \allowBreak ges
    \allowBreak bes4
    \allowBreak aes8
    \allowBreak ges
    \allowBreak aes4( des,) \bar "||"
}
altoNotesAnt = \relative c' {
    des1 ees\breve*5/16
    s16
    bes\breve*5/16 des4 aes2
}
tenorNotesAnt = \relative g {
    f1 ges\breve*5/16~
    s16
    ges\breve*5/16~ ges4~ ges4( f) 
}
bassNotesAnt = \relative c {
    des1 ces\breve*5/16
    s16
    ees\breve*5/16 bes4 des2
}
