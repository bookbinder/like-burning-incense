\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "3"
psalmtone = "21"
antKeysig = \key aes \major
psalmnum = "Ps_150"
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
  Give ho -- nor and praise to our God;
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  all that he does is per -- fect and all his ways are true, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  r8 ees8 aes4 g8 aes f[ ees] des ees f4( ees)
  \noBreak \noBreak \hideNotes f16 \unHideNotes
  \allowBreak ees8[ f]
  \allowBreak ees
  \allowBreak ees
  \allowBreak f4
  \allowBreak ees8
  \allowBreak des[ f aes]
  \allowBreak aes4 \bar "'"
  \allowBreak aes8
  \allowBreak g[ aes]
  \allowBreak f
  \allowBreak g4
  \allowBreak f8
  \allowBreak ees4 \bar "'"
  \allowBreak f8
  \allowBreak f[ g]
  \allowBreak ees4
  \allowBreak ees \bar "||"
}
altoNotesAnt = \relative c' {
  s2. des2 c\breve*11/16 s16 des2.~ des2. ees4. des4 bes2
}
tenorNotesAnt = \relative g {
  aes2.~ aes2~ aes\breve*11/16~ s16 aes2.~ aes2.~ aes4.~ aes4~ aes g
}
bassNotesAnt = \relative c {
  c2. des2 aes\breve*11/16 s16 f'2. des2. c4. bes4 ees2
}
