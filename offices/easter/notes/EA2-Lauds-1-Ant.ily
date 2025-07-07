\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key aes \major
antiphon = "1"
psalmtone = "21"
psalmtonestruct = "33"
psalmnum = "Ps_5_2-10,_12-13"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a
%% master transposition after accounting for psalm tone
master-from-pitch = a
master-to-pitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
    All those who love your name
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
    will re -- joice
    in you, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
    
    
    ees4 aes8[ bes] aes g[ aes] f ees4
    \noBreak \noBreak \hideNotes aes16 \unHideNotes
    \allowBreak ees8
    \allowBreak ees \bar ""
    \allowBreak des[ f]
    \allowBreak aes \bar ""
    \allowBreak bes4 \bar "'"
    \allowBreak aes8 \bar ""
    \allowBreak g[ aes] \bar ""
    \allowBreak f[ ees]
    \allowBreak ees4 \bar "||"
}
altoNotesAnt = \relative c' {
    
    
    s2 s2 s2 s16 des4. f4. des4 bes2
}
tenorNotesAnt = \relative g {
    
    
    aes\breve*12/16~ s16 aes4.~ aes4.~ aes4~ aes4 g
}
bassNotesAnt = \relative c {
    
    
    c\breve*12/16 s16 f4. des4.~ des4 ees2
}
