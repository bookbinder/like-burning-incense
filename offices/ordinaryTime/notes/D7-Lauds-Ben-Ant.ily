\version "2.20.0"
\include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key f \minor
antiphon = "B"
psalmtone = "50"
psalmtonestruct = "33"
psalmnum = "Benedictus"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a

text = \lyricmode {
    \set includeGraceNotes = ##t
    Lord, guide our feet " * "
    in -- to the way of peace.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    \voiceOne
    f8[ aes] g[ aes] bes bes4 \bar "'"
    \hideNotes bes16 \unHideNotes   %so that I can align the * better
    aes8 g f ees[( f] g4) g8 f4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    c4 f\breve*5/16
    s16
    \parenthesize bes,4. ees\breve*5/16 c4 
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    aes4 bes\breve*5/16~
    s16
    bes4.~ bes\breve*5/16 aes4
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    f4 des\breve*5/16~
    s16
    des4. c\breve*5/16 f4
}