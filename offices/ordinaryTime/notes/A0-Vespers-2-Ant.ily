\version "2.20.0"

% Will need these variables to build the cantor and organ scores:
keysig =  \key aes \major
antiphon = "2"
psalmtone = "26"
psalmtonestruct = "33"
psalmnum = "Ps_42"
% transposition interval for the corresponding psalm tone
%       to match the key signature of this antiphon. For
%       use in in cantor (antiphon) and organ (psalm) scores:
frompitch = a
topitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
    You are my re -- fuge, Lord; \markup { \teeny "🞵  "} 
    you are all that I de -- sire in life.
}
sopNotesAnt = \relative e' {
    \global	% will be populated by an include file
		% in the cantor/organ scores called lbi_defs
    \keysig
    aes4 g8 aes f ees \bar "" f4( ees)  
    \hideNotes ees16 \unHideNotes   %so that I can align the * better
    \bar "" f8[ ees] des f[ aes] aes \bar "" g aes \allowBreak f \allowBreak f
    \allowBreak ees4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    ees2. c2 s16 des2.~ des2 bes4
}    
tenorNotesAnt = \relative g {
    \global
    \keysig
    aes2.~ aes2~ s16 aes2.~ aes2 g4 \bar "||"
}
bassNotesAnt = \relative c {
    \global
    \keysig
    c2. aes2 s16 des2. bes2 ees4
}
