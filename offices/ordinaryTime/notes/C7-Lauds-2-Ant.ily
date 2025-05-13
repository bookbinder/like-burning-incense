\version "2.20.0"
%% include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key aes \major
antiphon = "2"
psalmtone = "21"
psalmtonestruct = "33"
psalmnum = "Wis_9_1-6,_9-11"
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
    Wis -- dom of God, be with me  
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "} 
    al -- ways at work in me.
}
sopNotesAnt = \relative e' {
    aes4 g8 aes f[ ees] des f4 ees \bar ""
    \hideNotes e16 \unHideNotes   %so that I can align the * better
    \allowBreak f8
    \allowBreak ees
    \allowBreak des
    \allowBreak f[ g]
    \allowBreak f
    \allowBreak ees4 \bar "||"
}
altoNotesAnt = \relative c' {
    c\breve*7/16~ c2
    s16
    des2. bes4
}
tenorNotesAnt = \relative g {
    ees\breve*7/16 aes2~
    s16
    aes2. g4
}
bassNotesAnt = \relative c {
    aes\breve*7/16~ aes2
    s16
    des4. bes ees4
}
