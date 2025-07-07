\version "2.20.0"
%% include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key aes \major
antiphon = "1"
psalmtone = "48"
psalmtonestruct = "43"
psalmnum = "Ps_90"
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
    Each mor -- ning, Lord,  
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "} 
    you fill us with your kind -- ness.
}
sopNotesAnt = \relative e' {
    aes4 g8[ aes] f g[( aes] f4) \bar ""
    \noBreak \hideNotes e16 \unHideNotes   %so that I can align the * better
    \allowBreak ees8
    \allowBreak f
    \allowBreak ees
    \allowBreak des
    \allowBreak ees
    \allowBreak ees4
    \allowBreak des4 \bar "||"
}
altoNotesAnt = \relative c' {
    ees4 des\breve*8/16
    s16
    c2 aes
}
tenorNotesAnt = \relative g {
    aes4~ aes\breve*8/16~
    s16
    aes2 f
}
bassNotesAnt = \relative c {
    c4 des\breve*8/16
    s16
    aes2 des
}
