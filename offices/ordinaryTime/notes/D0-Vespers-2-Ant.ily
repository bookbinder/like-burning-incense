\version "2.20.0"
%% include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key f \minor
antiphon = "2"
psalmtone = "50"
psalmtonestruct = "33"
psalmnum = "Ps_130"
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
    From the mor -- ning watch un -- til night,  
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "} 
    I have wai -- ted trus -- ting -- ly for the Lord.
}
sopNotesAnt = \relative e' {
    f8 g aes[ g] f c'4 c8 bes[ c] aes4( g) \bar ""
    \hideNotes e16 \unHideNotes   %so that I can align the * better
    \allowBreak g8
    \allowBreak f
    \allowBreak g[ aes]
    \allowBreak g
    \allowBreak bes
    \allowBreak bes
    \allowBreak bes
    \allowBreak aes
    \allowBreak g
    \allowBreak g4( f) \bar "||"
}
altoNotesAnt = \relative c' {
    c\breve*10/16 ees\breve*6/16~
    s16
    ees4. f\breve*5/16 c2
}
tenorNotesAnt = \relative g {
    aes\breve*10/16 c\breve*6/16
    s16
    bes4.~ bes\breve*5/16~ bes4( aes)
}
bassNotesAnt = \relative c {
    f\breve*10/16 c\breve*6/16
    s16
    ees4. des\breve*5/16 f2
}
