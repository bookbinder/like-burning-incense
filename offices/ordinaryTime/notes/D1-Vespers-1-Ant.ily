\version "2.20.0"
\include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key f \minor
antiphon = "1"
psalmtone = "50"
psalmtonestruct = "33"
psalmnum = "Ps_110_1-5,_7"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a

text = \lyricmode {
    \set includeGraceNotes = ##t
    In e -- ter -- nal splen -- dor, " * "
    be -- fore the dawn of light on earth,
    I have be -- got -- ten you, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    \voiceOne
    f8 f f[ ees] c ees[ f g] g4 \bar "'"
    \hideNotes e16 \unHideNotes   %so that I can align the * better
    g8 aes[ g] f g[ aes] g \bar "" g[ aes] bes bes4 \bar "'"
    bes8 \bar "" bes c \bar "" f,[ g] aes \bar "" bes4 
    \bar "" aes8 g \bar "" ees[ g f] f4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    s2 s2 s4
    s16
    s4. s2 f2. des4 ees4. f4 ees c4.~ c4
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    f4 g4. c bes
    s16
    c4. bes~ bes2.~ bes4~ bes4.~ bes4~ bes4~ bes4. aes4
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    aes4 c4.~ c ees4.~
    s16
    ees2. des bes4 c4. des4 ees f4.~ f4
}
