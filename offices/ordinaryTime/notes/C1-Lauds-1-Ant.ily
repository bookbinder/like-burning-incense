\version "2.20.0"
\include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key aes \major
antiphon = "1"
psalmtone = "21"
psalmtonestruct = "33"
psalmnum = "Ps_93"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
    Glo -- rious is the Lord! " * " 
    Glo -- rious is the Lord on high, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    \voiceOne
    aes8 aes g aes f4( ees) \bar "'"
    \hideNotes e16 \unHideNotes   %so that I can align the * better
    aes8 aes g aes f[ ees] des[ ees] f4 \bar "'"
    ees8 des f[ ees] ees4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    ees2 c2~
    s16
    c1 des2 bes
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    aes2~ aes~
    s16
    aes1~ aes2~ aes4 g

}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    c2 aes2 
    s16
    f'2 ees2 des4 bes ees2

}
