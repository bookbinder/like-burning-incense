 \version "2.20.0"

% Will need these variables to build the cantor and organ scores 
keysig =  \key a \minor
antiphon = "1"
psalmtone = "39"
% transposition interval for the corresponding psalm tone
%       to match the key signature of this antiphon. For
%       use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t

}
sopNotesAnt = \relative e' {
    \global % will get its values from another include file
    \keysig
    \voiceOne

    \hideNotes e16 \unHideNotes   %so that I can align the * better
    
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo

}    
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
   
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
  
}
