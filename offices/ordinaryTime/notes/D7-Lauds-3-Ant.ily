\version "2.20.0"
%% include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key f \minor
antiphon = "3"
psalmtone = "48"
psalmtonestruct = "43"
psalmnum = "Ps_8"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a

text = \lyricmode {
    \set includeGraceNotes = ##t
    On the lips of chil -- dren and in -- fants  \noBreak \markup \with-color #(x11-color 'gray36) { \tiny \raise #.5 \char ##x1F7B6 }
    you have found per -- fect praise.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    c8 c c[ des] bes ees4 ees8 f aes[ g f] \allowBreak ees4 \bar ""
    \hideNotes e16 \unHideNotes   %so that I can align the * better
    \allowBreak ees8 \allowBreak ees \allowBreak des[ f] \allowBreak
    ees[( f] ees4) \allowBreak des8 \allowBreak des4( c) \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    s2 s8 s2 c\breve*7/16
    s16
    bes4~ bes\breve*5/16 aes2
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    ees4 f4. aes2~ aes\breve*7/16
    s16
    f4~ f\breve*5/16~ f2
}
bassNotesAnt = \relative c {
    \global
    \keysig
    aes4 des4. c2 aes\breve*7/16
    s16
    bes4 des\breve*5/16 f,2
}
