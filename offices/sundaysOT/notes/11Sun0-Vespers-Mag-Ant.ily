\version "2.20.0"
\include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key c \major
antiphon = "Mag."
psalmtone = "2"
psalmtonestruct = "43"
psalmnum = "Magnificat"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
    Go, preach the good news of the king -- "dom; * " 
    free -- ly you have re -- ceived, free -- ly give, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    \voiceOne
    c'4 b8[ c] b b[ a] a4 g8 f a[ g] g4 \bar "'" g8[ a] g g f e \bar ""
    e4( d) \bar "'" d8[ a'] g a4 \bar "'" a8 a[ c] b[ a g] g4 \bar "||"
}
altoNotesAnt = \relative g' {
    \global
    \keysig
    \voiceTwo
    g\breve*5/16 f2. d2 c2. s2 c2.~ c4 d4. b4
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    c\breve*5/16~ c2.~ c4 b g2. a2 f2.~ f4 d4.~ d4
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    e\breve*5/16 f2. g2 e2. f2 a,4. f d4 g4.~ g4
}
