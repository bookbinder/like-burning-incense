\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "B"
psalmtone = "48"
antKeysig = \key f \minor
psalmnum = "Benedictus"
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
  He came through blood and wa -- ter,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  Je -- sus Christ our Lord.
}
sopNotesAnt = \relative e' {
  \allowBreak r8
  \allowBreak aes8
  \allowBreak g
  \allowBreak aes
  \allowBreak f4
  \allowBreak ees8
  \allowBreak f[ ees des]
  \allowBreak des4
  \noBreak \hideNotes des16 \unHideNotes
  \allowBreak ees8[ f]
  \allowBreak ees
  \allowBreak f4
  \allowBreak ees8
  \allowBreak ees4( des4) \bar "||"
}
altoNotesAnt = \relative c' {
  des2~ 4. c4. g4 s16 aes4. c4. aes2
}
tenorNotesAnt = \relative g {
  f2 aes4.~ 4. f4 s16 ees4.~ 4. f2
}
bassNotesAnt = \relative c {
  des2~ 4. aes4. bes4 s16 c4. aes des,2
}
