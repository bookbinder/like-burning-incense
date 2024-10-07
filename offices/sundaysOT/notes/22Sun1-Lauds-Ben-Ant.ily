\version "2.20.0"
\include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key f \minor
antiphon = "Ben."
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
    Li -- sten and un -- der -- stand the in -- struc -- "tions * " 
    the Lord has gi -- ven to you.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    \voiceOne
    aes4 g8 f g f f[ c'] c c c[ bes] bes4 \bar "'" bes8 c[ f,] f g4
    f8 ees f4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    c\breve*10/16 f\breve*5/16 c4.~ c2~ c4
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    aes\breve*10/16~ aes\breve*5/16 f4. ees2 aes4
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    f\breve*10/16 des\breve*5/16 aes4. c2 f,4
}
