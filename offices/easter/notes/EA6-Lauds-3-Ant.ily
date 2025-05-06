\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antKeysig = \key c \major
antiphon = "3"
psalmtone = "4"
psalmtonestruct = "33"
psalmnum = "Ps_100"
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
  Serve the Lord
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  with glad -- ness, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
    
    
    g8[ c] c b([ c] a4)
    \noBreak \hideNotes a16 \unHideNotes
    a8 b a \breathe g a a[ g] g4 \bar "||"
}
altoNotesAnt = \relative c' {
    
    
    g'4. f\breve*9/16 s16 d2
}
tenorNotesAnt = \relative g {
    
    
    c4.~ c\breve*9/16~ s16 c4 b
}
bassNotesAnt = \relative c {
    
    
    e4. f\breve*9/16 s16 g2
}
