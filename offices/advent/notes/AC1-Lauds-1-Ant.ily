\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "1"
psalmtone = "50"
antKeysig = \key aes \major
psalmnum = "Ps_93"
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
  The Lord is co -- ming with -- out de -- ay. 
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  He will re -- veal things kept hid -- den and show
  him -- self to all man -- kind, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  r8 f8 f[ ees] f g aes bes aes4 g8 g4( f)
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak f8
  \allowBreak ees
  \allowBreak f
  \allowBreak aes[ bes]
  \allowBreak aes4
  \allowBreak aes8[ c]
  \allowBreak c[ bes]
  \allowBreak bes4 \bar "'"
  \allowBreak bes8
  \allowBreak aes[ bes]
  \allowBreak aes
  \allowBreak g[ aes]
  \allowBreak g
  \allowBreak bes[ aes]
  \allowBreak g
  \allowBreak g4( f) \bar "'"
  \allowBreak ees8
  \allowBreak ees[ f]
  \allowBreak f4
  f4 \bar "||"
}
altoNotesAnt = \relative c' {
  s4 s4. ees2. c\breve*7/16 s16 ees2.~
  ees4~ ees4. c4. ees4. f4. des\breve*5/16 ees4 c2
}
tenorNotesAnt = \relative g {
  c4 bes4.~ bes2. aes\breve*7/16~ s16 aes2.~ aes4
  g4. aes4. c4. bes4.~ bes\breve*5/16~ bes4~ bes aes
}
bassNotesAnt = \relative c {
  aes'4 g4. ees2. aes\breve*7/16 s16 c,2.
  ees4~ ees4. f4. c4. des4. bes\breve*5/16 c4 f2
}
