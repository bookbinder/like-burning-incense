\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "M"
psalmtone = "78"
antKeysig = \key ges \major
psalmnum = "Magnificat"
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
  If you live in me
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  and my words live in you, all you ask for will
  be yours, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  f8 ges aes[ bes] aes aes4
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak aes8
  \allowBreak aes
  \allowBreak ges[ aes]
  \allowBreak bes[ ces]
  \allowBreak bes
  \allowBreak aes4 \bar "'"
  \allowBreak ges8[ f]
  \allowBreak ees
  \allowBreak ees[ f ges]
  \allowBreak ges4
  \allowBreak f8
  \allowBreak ees
  \allowBreak ees4( des) \bar "'"
  \allowBreak ees8
  \allowBreak ees[ f]
  \allowBreak des4
  \allowBreak des \bar "||"
}
altoNotesAnt = \relative c' {
  des4 ees4.~ 2 s16 des4~ 4.~ 4 bes\breve*10/16
  s\breve*5/16 ces4 aes2
}
tenorNotesAnt = \relative g {
  aes4~ 4. ges2~ s16 ges4~ 4. f4 ges\breve*10/16
  aes\breve*5/16 ges4~ 4 f
}
bassNotesAnt = \relative c {
  des4 ces4.~ 2 s16 bes4 ges4. des'4 ees\breve*10/16
  f\breve*5/16 ces4 des2
}
