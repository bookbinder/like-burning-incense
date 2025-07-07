\version "2.20.0"
%% include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key f \minor
antiphon = "1"
psalmtone = "51"
psalmtonestruct = "34"
psalmnum = "Ps_136_1-9"
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
    Give thanks to the Lord,  
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "} 
    for his great love is with -- out end.
}
sopNotesAnt = \relative e' {
    r8 c8 des4 bes8 des c[( des] ees4) \bar ""
    \noBreak \hideNotes e16 \unHideNotes   %so that I can align the * better
    \allowBreak ees8
    \allowBreak f[ aes]
    \allowBreak bes--[ aes f]
    \allowBreak ees4
    \allowBreak ees8
    \allowBreak des
    \allowBreak des[ c]
    \allowBreak c4 \bar "||"
}
altoNotesAnt = \relative c' {
    s2. c\breve*5/16
    s16
    ees4 bes4. c2 bes4 aes
}
tenorNotesAnt = \relative g {
    aes4 s2 aes\breve*5/16
    s16
    aes4 f4. aes2 f4~ f
}
bassNotesAnt = \relative c {
    f4~ <bes, f'>2  aes\breve*5/16
    s16
    c4 des4. aes2 bes4 f
}
