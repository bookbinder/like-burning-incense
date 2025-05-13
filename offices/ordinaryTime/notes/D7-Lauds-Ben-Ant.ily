\version "2.20.0"
%% include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key f \minor
antiphon = "B"
psalmtone = "50"
psalmtonestruct = "33"
psalmnum = "Benedictus"
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
    Lord, guide our feet 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
    in -- to the way of peace.
}
sopNotesAnt = \relative e' {
    f8[ aes] g[ aes] bes bes4 \bar ""
    \hideNotes bes16 \unHideNotes   %so that I can align the * better
    \allowBreak aes8
    \allowBreak g
    \allowBreak f
    \allowBreak ees[( f] g4)
    \allowBreak g8
    \allowBreak f4 \bar "||"
}
altoNotesAnt = \relative c' {
    c4 f\breve*5/16
    s16
    \parenthesize bes,4. ees\breve*5/16 c4 
}
tenorNotesAnt = \relative g {
    aes4 bes\breve*5/16~
    s16
    bes4.~ bes\breve*5/16 aes4
}
bassNotesAnt = \relative c {
    f4 des\breve*5/16~
    s16
    des4. c\breve*5/16 f4
}
