\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antKeysig = \key des \major
antiphon = "2"
psalmtone = "34"
psalmtonestruct = "33"
psalmnum = "Isa_38_10-14,_17-20"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a
%% master transposition after accounting for psalm tone
master-from-pitch = aes
master-to-pitch = g


text = \lyricmode {
  \set includeGraceNotes = ##t
  Lord, __
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  you have pre -- served my life from de -- struc -- tion, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
    
    
    aes8([ bes aes] f4)
    \noBreak \noBreak \hideNotes f16 \unHideNotes
    \allowBreak f4
    \allowBreak f8
    \allowBreak aes
    \allowBreak ges[ f]
    \allowBreak ees
    \allowBreak ees[ f]
    \allowBreak ees
    \allowBreak f
    \allowBreak ges4
    \allowBreak ges8
    \allowBreak \breathe
    \allowBreak f8
    \allowBreak ees
    \allowBreak ees[ des]
    \allowBreak des4 \bar "||"
}
altoNotesAnt = \relative c' {
    
    
    des\breve*5/16~ s16 des2~ des4.~ des2 bes\breve*5/16 aes2
}
tenorNotesAnt = \relative g {
    
    
    f\breve*5/16 s16 aes2 bes4. ges2 ees\breve*5/16 f2
}
bassNotesAnt = \relative c {
    
    
    des\breve*5/16~ s16 des2~ des4.~ des2~ des\breve*5/16~ des2
}
