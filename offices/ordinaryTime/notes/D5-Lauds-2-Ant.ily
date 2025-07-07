\version "2.20.0"
%% include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key des \major
antiphon = "2"
psalmtone = "34"
psalmtonestruct = "33"
psalmnum = "Isa_66_10-14a"
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
    The Lord will make a ri -- ver of peace \noBreak 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "} 
    flow through Je -- ru -- sa -- lem.
}
sopNotesAnt = \relative e' {
    r8 des8 f[ ees] des ees4 f8 ges aes bes \allowBreak bes4(\noBreak aes)
    \noBreak \hideNotes e16 \unHideNotes   %so that I can align the * better
    \allowBreak aes8[( bes aes ges] f4)
    \allowBreak ees8
    \allowBreak des
    \allowBreak ges[ f]
    \allowBreak ees
    \allowBreak des4 \bar "||"
}
altoNotesAnt = \relative c' {
    aes\breve*5/16 bes\breve*6/16 des2~
    s16
    des1 bes4. aes4
}
tenorNotesAnt = \relative g {
    f\breve*5/16 ges\breve*6/16 f2
    s16
    bes2 aes ees4. f4
}
bassNotesAnt = \relative c {
    des\breve*5/16~ des\breve*6/16~ des2~
    s16
    des1~ des4.~ des4
}
