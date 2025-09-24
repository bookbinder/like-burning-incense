\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "1"
psalmtone = "19"
antKeysig = \key aes \major
psalmnum = "Ps_110_1-5,_7"
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
  The Spir -- it of the Lord
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  has filled the whole world, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  r8 ees8 ees[ f] ees des ees ees([ aes g] f4)
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak f8
  \allowBreak ees[ f]
  \allowBreak ees
  \allowBreak ees[ aes f]
  \allowBreak f4 \bar "'"
  \allowBreak aes8[ bes]
  \allowBreak aes
  \allowBreak g[ ees]
  \allowBreak ees4 \bar "||"
}
altoNotesAnt = \relative c' {
  s4 s\breve*5/16 ees4. des s16 c4. des4.~ 4 ees4. ees2
}
tenorNotesAnt = \relative g {
  bes4 c\breve*5/16 aes4.~ 4.~ s16 aes4.~ 4.~ 4~ 4. bes4 g
}
bassNotesAnt = \relative c {
  g'4 aes\breve*5/16 c,4.( des) s16 aes4. bes des4 c4. ees2
}
