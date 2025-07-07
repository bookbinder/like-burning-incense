\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "1"
psalmtone = "36"
antKeysig = \key ges \major
psalmnum = "Ps_119_105-112"
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
  New ci -- ty of Zi -- on,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  let your heart sing for joy;
  see how hum -- bly your King comes to save you.
}
sopNotesAnt = \relative e' {
  aes4 aes8 aes ges ces[ bes aes] aes4
  \noBreak \noBreak \hideNotes aes16 \unHideNotes
  \allowBreak aes8
  \allowBreak aes
  \allowBreak ges[ ees]
  \allowBreak f
  \allowBreak ees
  \allowBreak ees4( des)
  \allowBreak r4 \bar "|"
  \allowBreak des8[ aes']
  \allowBreak ges
  \allowBreak aes([ bes] aes4 des,8)
  \allowBreak des4
  \allowBreak des8
  \allowBreak ees[ f]
  \allowBreak ges4
  \allowBreak f8
  \allowBreak ees[ des]
  des4 \bar "||"
}
altoNotesAnt = \relative c' {
  des\breve*5/16 ees4. f4 s16
  des4 bes2 aes2. des4.~ des4~ des4. aes4. ces4 des4. aes2
}
tenorNotesAnt = \relative g {
  f\breve*5/16 ges4. aes4 s16
  f4 ges2~ ges4( f2) aes4. ges4 f2. ges4~ ges4.~ ges4 f4 
}
bassNotesAnt = \relative c {
  des\breve*5/16~ des4.~ des4~ s16
  des4 ees4 ces4 des2. f4. ges4 des2. ces4 bes4. des2
}
