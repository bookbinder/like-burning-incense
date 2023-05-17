\version "2.20.0"
\include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key c \major
antiphon = "2"
psalmtone = "7"
psalmtonestruct = "43"
psalmnum = "Dan_3_52-57"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a

text = \lyricmode {
    \set includeGraceNotes = ##t
    Al -- le -- lu -- ia! Bless the Lord, " * "
    all you works of the Lord, al -- le -- lu -- ia!
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    \voiceOne
    g8 a g[ c] c4 b8 c a4( g) \bar "'"
    \hideNotes e16 \unHideNotes   %so that I can align the * better
    g8[ a] g f[ e] d e f[ a] g f a[ g] g4 \bar "||"
}
altoNotesAnt = \relative f' {
    \global
    \keysig
    \voiceTwo
    g2. f4 e2
    s16
    s4 s4. s4 f2 d
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    c2.~ c4~ c2~
    s16
    c4.~ c2~ c~ c4 b
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    e2. d4 c2
    s16
    e4. a2 d,2 g2
}
