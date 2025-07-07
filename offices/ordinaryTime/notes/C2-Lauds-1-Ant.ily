\version "2.20.0"
%% include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key aes \major
antiphon = "1"
psalmtone = "48"
psalmtonestruct = "43"
psalmnum = "Ps_84"
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
    Bles -- sed are they  
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "} 
    who dwell in your house, O Lord.
}
sopNotesAnt = \relative e' {
    aes4 g8 aes f[( ees] des4) \bar ""
    \noBreak \hideNotes e16 \unHideNotes   %so that I can align the * better
    \allowBreak des8
    \allowBreak ees[ f]
    \allowBreak ees
    \allowBreak des
    \allowBreak ees4
    \allowBreak ees8[ f]
    \allowBreak ees4( des) \bar "||"
}
altoNotesAnt = \relative c' {
    ees2 des4~ des4.
    s16
    c1 aes2
}
tenorNotesAnt = \relative g {
    aes2~ aes4~ aes4.~
    s16
    aes1 f2
}
bassNotesAnt = \relative c {
    c2 des4 f4.
    s16
    aes,1 des2
}
