\version "2.20.0"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key aes \major
antiphon = "2"
psalmtone = "26"
psalmtoneG = "VIIIG"
psalmtonestruct = "33"
psalmnum = "Ps_42"
% transposition interval for the corresponding psalm tone
%       to match the key signature of this antiphon. For
%       use in in cantor (antiphon) and organ (psalm) scores:
frompitch = a
topitch = a
frompitchG = a
topitchG = aes
%% Master transposition after accounting for psalm tone
master-from-pitch = a
master-to-pitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
    You are my re -- fuge, Lord;
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "} 
    you are all that I de -- sire in life.
}
sopNotesAnt = \relative e' {
    aes4 g8 aes f ees \bar "" f4( ees)  
    \noBreak \hideNotes ees16 \unHideNotes   %so that I can align the * better
    \allowBreak f8[ ees]
    \allowBreak des
    \allowBreak f[ aes]
    \allowBreak aes
    \allowBreak g
    \allowBreak aes
    \allowBreak f
    \allowBreak f
    \allowBreak ees4 \bar "||"
}
altoNotesAnt = \relative c' {
    ees2. c2 s16 des2.~ des2 bes4
}    
tenorNotesAnt = \relative g {
    aes2.~ aes2~ s16 aes2.~ aes2 g4 \bar "||"
}
bassNotesAnt = \relative c {
    c2. aes2 s16 des2. bes2 ees4
}
