\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "1"
psalmtone = "4"
antKeysig = \key c \major
psalmnum = "Ps_63_2-9"
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
  
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  
}
sopNotesAnt = \relative e' {
  \noBreak \noBreak \hideNotes g16 \unHideNotes
}
altoNotesAnt = \relative c' {
}
tenorNotesAnt = \relative g {
}
bassNotesAnt = \relative c {
}
