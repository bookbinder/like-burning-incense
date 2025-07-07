\version "2.20.0"
%% include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key f \minor
antiphon = "1"
psalmtone = "50"
psalmtonestruct = "33"
psalmnum = "Ps_110_1-5,_7"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a
%% Master transposition after accounting for psalm tone
master-from-pitch = a
master-to-pitch = a

text = \lyricmode {
    \set includeGraceNotes = ##t
    In e -- ter -- nal splen -- dor,  
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "} 
    be -- fore the dawn of light on earth,
    I have be -- got -- ten you, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
    f8 f f[ ees] c ees[ f g] g4 \bar ""
    \noBreak \hideNotes e16 \unHideNotes   %so that I can align the * better
    \allowBreak g8
    \allowBreak aes[ g]
    \allowBreak f
    \allowBreak g[ aes]
    \allowBreak g
    \allowBreak g[ aes]
    \allowBreak bes
    \allowBreak bes4 \bar "'"
    \allowBreak bes8
    \allowBreak bes
    \allowBreak c
    \allowBreak f,[ g]
    \allowBreak aes
    \allowBreak bes4
    \allowBreak aes8
    \allowBreak g
    \allowBreak ees[ g f]
    \allowBreak f4 \bar "||"
}
altoNotesAnt = \relative c' {
    s2 s2 s4
    s16
    s4. s2 f2. des4 ees4. f4 ees c4.~ c4
}
tenorNotesAnt = \relative g {
    f4 g4. c bes
    s16
    c4. bes~ bes2.~ bes4~ bes4.~ bes4~ bes4~ bes4. aes4
}
bassNotesAnt = \relative c {
    aes4 c4.~ c ees4.~
    s16
    ees2. des bes4 c4. des4 ees f4.~ f4
}
