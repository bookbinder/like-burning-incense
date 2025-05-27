\version "2.20.0"
%% \include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key f \major
antiphon = "M"
psalmtone = "71"
psalmtonestruct = "32"
psalmnum = "Magnificat"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = aes
topitch = f
%% transposition after accounting for psalm tone
master-from-pitch = a
master-to-pitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
    The Son of Man 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
    did not come to con -- demn men but to save them.
}
sopNotesAnt = \relative e' {
    
    
    r8 g8 f[ e] f g4 \bar "'" g8 a[ bes] a4 g8 f g4 g \bar "'" f8 e e8--[ d] d4 \bar "||"
}
altoNotesAnt = \relative c' {
    
    
    e4 d4. c4.~ c2.~ c a2
}
tenorNotesAnt = \relative g {
    
    
    c4 a4. g f2. e2 a8[ g~] g4 f
  }
bassNotesAnt = \relative c {
    
    
    c4 d4. e f2. c2. d2
}
