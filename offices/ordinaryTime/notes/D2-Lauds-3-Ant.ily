\version "2.20.0"
\include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key c \major
antiphon = "3"
psalmtone = "7"
psalmtonestruct = "43"
psalmnum = "Ps_135_1-12"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a

text = \lyricmode {
    \set includeGraceNotes = ##t
    You who stand in the house of the Lord, " * "
    praise the name of the Lord.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    \voiceOne
    g8[ a] g g[ f] d e f[ a] g f g4 \bar "'"
    \hideNotes e16 \unHideNotes   %so that I can align the * better
    g8[ c] b b[ a] g f a4( g) \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    e4. d\breve*8/16 c4
    s16
    e4. f2 d
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    c4. a\breve*1/2 g4
    s16
    c4.~ c2~ c4( b)
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    c4. d\breve*1/2 e4
    s16
    c4. d2 g
}
