\version "2.20.0"
\include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key a \minor
antiphon = "Ben"
psalmtone = "44"
psalmtonestruct = "32"
psalmnum = "Benedictus"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
    Come, fol -- low me, says the "Lord; * "
    I will make you fi -- shers of men.

}
sopNotesAnt = \relative e' {
    \global
    \keysig
    \voiceOne
    e8[ g] a[ b] a a4 g8[ a] g g4( e)
    e8 e d e g[ e] e d \bar "" e4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    e\breve*7/16 d4. c2~
    c2 a2 c4
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    g\breve*7/16~ g4. a2
    g2 f e4
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    c\breve*7/16 b4. a2
    c2 d a4
}
