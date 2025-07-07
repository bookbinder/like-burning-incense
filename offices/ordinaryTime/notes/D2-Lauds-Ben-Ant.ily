\version "2.20.0"
%% include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key aes \major
antiphon = "B"
psalmtone = "48"
psalmtonestruct = "43"
psalmnum = "Benedictus"
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
    Bles -- sed be the Lord, 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "} 
    for he has come to his peo -- ple and set them free.
}
sopNotesAnt = \relative e' {
    aes8 aes g aes f[( ees] des4) \bar ""
    \noBreak \hideNotes e16 \unHideNotes   %so that I can align the * better
    \allowBreak des8
    \allowBreak ees
    \allowBreak des
    \allowBreak des[ aes']
    \allowBreak aes
    \allowBreak aes
    \allowBreak bes[ aes]
    \allowBreak aes
    \allowBreak aes
    \allowBreak g[ aes]
    \allowBreak f
    \allowBreak ees4( des) \bar "||"
}
altoNotesAnt = \relative c' {
    ees2 des4~ des
    s16
    s4. des2 c~ c4. aes2
}
tenorNotesAnt = \relative g {
    aes2~ aes4~ aes4.
    s16
    aes4 f2 ees f4.~ f2
}
bassNotesAnt = \relative c {
    c2 des4 f4.
    s16
    c4 des2 aes~ aes4. des2
}
