\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "3"
psalmtone = "34"
antKeysig = \key aes \major
psalmnum = "Ps_149"
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
  You burned a -- way man's guilt
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  by fire and the Ho -- ly Spir -- it. We give praise to you,
  our God and Re -- dee -- mer.
}
sopNotesAnt = \relative e' {
  \allowBreak r8
  \allowBreak aes8
  \allowBreak g[ aes]
  \allowBreak f
  \allowBreak f4
  \allowBreak ees8[ f]
  \allowBreak f([ ees] des4)
  \noBreak \hideNotes des16 \unHideNotes
  \allowBreak des8
  \allowBreak aes'4
  \allowBreak aes8
  \allowBreak aes
  \allowBreak bes[ c]
  \allowBreak bes
  \allowBreak bes[ aes]
  \allowBreak aes4 \bar ","
  \allowBreak aes8
  \allowBreak aes
  \allowBreak g[ aes]
  \allowBreak f
  \allowBreak ees4
  \allowBreak des8
  \allowBreak ees([ f] ges!4)
  \allowBreak f8
  \allowBreak ees
  \allowBreak ees[ des]
  \allowBreak des4 \bar "||"
}
altoNotesAnt = \relative c' {
  des4~ 4.~ 2 c4( bes4.) s16 des2~ 4.~ 2~
  \breve*5/16 c4. des2. aes2
}
tenorNotesAnt = \relative g {
  f4 bes4. aes2~ 4( f4.~) s16 2 des4. f2~
  \breve*5/16 aes4. ges2.~ 4( f)
}
bassNotesAnt = \relative c {
  des4~ 4.~ 2 aes4( bes4.) s16 f2 ges4. des'2~
  \breve*5/16 aes4. bes2. f2
}
