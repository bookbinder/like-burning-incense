\version "2.20.0"
%% include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key f \minor
antiphon = "3"
psalmtone = "48"
psalmtonestruct = "43"
psalmnum = "Ps_8"
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
    On the lips of chil -- dren and in -- fants  \noBreak 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
    you have found per -- fect praise.
}
sopNotesAnt = \relative e' {
    c8 c c[ des] bes ees4 ees8 f aes[ g f] \allowBreak ees4 \bar ""
    \noBreak \hideNotes e16 \unHideNotes   %so that I can align the * better
    \allowBreak ees8
    \allowBreak ees
    \allowBreak des[ f]
    \allowBreak ees[( f] ees4)
    \allowBreak des8
    \allowBreak des4( c) \bar "||"
}
altoNotesAnt = \relative c' {
    s2 s8 s2 c\breve*7/16
    s16
    bes4~ bes\breve*5/16 aes2
}
tenorNotesAnt = \relative g {
    ees4 f4. aes2~ aes\breve*7/16
    s16
    f4~ f\breve*5/16~ f2
}
bassNotesAnt = \relative c {
    aes4 des4. c2 aes\breve*7/16
    s16
    bes4 des\breve*5/16 f,2
}
