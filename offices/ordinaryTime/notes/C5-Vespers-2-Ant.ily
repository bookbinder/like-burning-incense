\version "2.20.0"
%% include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key des \major
antiphon = "2"
psalmtone = "32"
psalmtonestruct = "33"
psalmnum = "Ps_132_11-18"
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
    The Lord has cho -- sen Zi -- on;  
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "} 
    he has de -- sired it for his dwell -- ing.
}
sopNotesAnt = \relative e' {
    r8 des8 f[ ees] des ees[ f] ges f[ aes] aes4 \bar ""
    \hideNotes e16 \unHideNotes   %so that I can align the * better
    \allowBreak des8
    \allowBreak ees
    \allowBreak f
    \allowBreak ges4
    \allowBreak ges8
    \allowBreak f
    \allowBreak ees
    \allowBreak ees[ des]
    \allowBreak des4 \bar "||"
}
altoNotesAnt = \relative c' {
    aes\breve*5/16 bes4. f'4 des4.~
    s16
    des4~ des\breve*5/16 aes2
}
tenorNotesAnt = \relative g {
    f\breve*5/16 ges4. aes4 f4.
    s16
    aes4 ges\breve*5/16 ges4 f
}
bassNotesAnt = \relative c {
    des\breve*5/16~ des4.~ des4~ des4.~
    s16
    des4 bes\breve*5/16 des2
}
