\version "2.20.0"
%% include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key f \minor
antiphon = "M"
psalmtone = "51"
psalmtonestruct = "34"
psalmnum = "Magnificat"
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
    Do great things for us, O Lord,  
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "} 
    for you are migh -- ty, and ho -- ly is your name.
}
sopNotesAnt = \relative e' {
    r8 c8 c[ des] c bes ees[ f] aes aes4( g) \bar ""
    \hideNotes e16 \unHideNotes   %so that I can align the * better
    \allowBreak g8
    \allowBreak g
    \allowBreak aes
    \allowBreak f
    \allowBreak ees
    \allowBreak des
    \allowBreak f
    \allowBreak f
    \allowBreak ees
    \allowBreak des
    \allowBreak c4 \bar "||"
}
altoNotesAnt = \relative c' {
    s2. ees4.~ ees\breve*7/16
    s16
    des4. bes2 aes4
}
tenorNotesAnt = \relative g {
    ees4 f2 aes4. bes\breve*7/16~
    s16
    bes4. f2~ f4
}
bassNotesAnt = \relative c {
    aes4 des2 c4. ees\breve*7/16
    s16
    bes4. des2 f,4
}
