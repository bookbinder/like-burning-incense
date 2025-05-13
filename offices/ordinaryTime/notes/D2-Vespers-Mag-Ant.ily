\version "2.20.0"
%% include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key ges \major
antiphon = "M"
psalmtone = "64"
psalmtonestruct = "33"
psalmnum = "Magnificat"
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
    For -- e -- ver will my soul pro -- claim  
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "} 
    the great -- ness of the Lord.
}
sopNotesAnt = \relative e' {
    r8 aes8 aes[ bes] aes f ges aes[ bes] aes ces[( bes] aes4) \bar ""
    \hideNotes e16 \unHideNotes   %so that I can align the * better
    \allowBreak aes8
    \allowBreak ges
    \allowBreak ges
    \allowBreak f
    \allowBreak ees
    \allowBreak ees4( des) \bar "||"
}
altoNotesAnt = \relative c' {
    des\breve*10/16 ees\breve*5/16
    s16
    des2 aes
}
tenorNotesAnt = \relative g {
    f\breve*10/16 ges\breve*5/16~
    s16
    ges2 f
}
bassNotesAnt = \relative c {
    des\breve*10/16 ces\breve*5/16
    s16
    bes2 des
}
