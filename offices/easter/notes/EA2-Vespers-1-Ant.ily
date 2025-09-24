\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "1"
psalmtone = "36"
antKeysig = \key ges \major
psalmnum = "Ps_11"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a
%% master transposition after accounting for psalm tone
master-from-pitch = ges
master-to-pitch = f


text = \lyricmode {
  \set includeGraceNotes = ##t
  Have cou -- rage;
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  I have o -- ver -- come the world, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  r8 des8 des[ aes'] aes4
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak aes8[ bes]
  \allowBreak aes
  \allowBreak ges
  \allowBreak f
  \allowBreak ees[ f]
  \allowBreak ees
  \allowBreak des[-- aes']
  \allowBreak \breathe
  \allowBreak ges8
  \allowBreak aes
  \allowBreak aes[ des,]
  \allowBreak des4 \bar "||"
}
altoNotesAnt = \relative c' {
  r8 des8~ 2 s16 ees\breve*5/16 r4. des2 ces4 aes
}
tenorNotesAnt = \relative g {
  bes4 aes2 s16 ges\breve*8/16 f2 ees4 f
}
bassNotesAnt = \relative c' {
  ges4 f2 s16 ces\breve*8/16 des2.~ 4
}
