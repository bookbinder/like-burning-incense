\version "2.20.0"
\include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key aes \major
antiphon = "Mag."
psalmtone = "21"
psalmtonestruct = "33"
psalmnum = "Magnificat"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
    At mid -- night a cry was "heard: * " Be -- hold, the Bride -- groom
    comes, go out to meet him.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    \voiceOne
    r8 ees8 g[ aes] f4 ees8 f[ ees] des ees4 \bar "'"
    ees8 g([ aes] bes4) aes8 f[ aes] aes g4 \bar "'"
    f4 ees8 des ees4 ees4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    s4 c\breve*5/16 des4. s4. ees4~ ees4.~ ees4.~ ees4
    des2 c4 bes
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    bes4 aes\breve*5/16~ aes4.~ aes4. bes4 g4. c4. bes4~ bes2 aes4 g
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    g'4 aes\breve*5/16 des,4. c4. ees4~ ees4.~ ees4.~ ees4 bes2 ees2
}
