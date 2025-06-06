\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "1"
psalmtone = "64"
antKeysig = \key ges \major
psalmnum = "Ps_110_1-5,_7"
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
  Our Lord will come
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  to claim his glo -- rious throne in the
  as -- sem -- bly of the prin -- ces.
}
sopNotesAnt = \relative e' {
  r8 des8 ges[ f] ges ges([ bes] aes4)
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak aes8
  \allowBreak aes[ bes aes]
  \allowBreak bes
  \allowBreak ces
  \allowBreak bes
  \allowBreak bes4( aes) \bar "'"
  \allowBreak aes8
  \allowBreak aes
  \allowBreak aes
  \allowBreak ges
  \allowBreak ees
  \allowBreak ees
  \allowBreak f
  \allowBreak ees[ des]
  \allowBreak des4 \bar "||"
}
altoNotesAnt = \relative c' {
  r8 des8~ des4.~ des4~ des4. s16 ees2. des\breve*7/16~ des4 ces4 aes2  
}
tenorNotesAnt = \relative g {
  bes4 ges4.~ ges4 f4. s16 ges2. f\breve*7/16 ges4~ ges~ ges f
}
bassNotesAnt = \relative c {
  ges'4~ <<
    { \hideNotes ges4. \unHideNotes }
    \new Voice { bes,4. }
  >>
  des4~ des4. s16 ces2. des\breve*7/16 bes4 ces4 des2
}
