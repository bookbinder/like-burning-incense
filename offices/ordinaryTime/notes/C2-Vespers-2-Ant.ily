\version "2.20.0"
\include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key aes \major
antiphon = "2"
psalmtone = "21"
psalmtonestruct = "33"
psalmnum = "Ps_124"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
    Our help is in the name of the Lord " * " 
    who made hea -- ven and earth.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    \voiceOne
    r8 ees8 aes[ g] aes g aes f[ g] f f f4( ees) \bar "'" 
    \hideNotes e16 \unHideNotes   %so that I can align the * better
    ees8 des[ ees] f4 g8 f ees4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    r8 ees8~ ees\breve*5/16 des2 c\breve*5/16
    s16
    des4 bes2~ bes4
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    aes4~ aes\breve*5/16~ aes2~ aes\breve*5/16~
    s16
    aes4~ aes2 g4
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    c4~ c\breve*5/16 des2 aes\breve*5/16
    s16
    bes4 des2 ees4
}
