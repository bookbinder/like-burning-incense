\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "B"
psalmtone = "50"
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
  Christ our God,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  in whom the full -- ness of the God -- head dwells, took u -- pon
  him -- self our wond -- ed na -- ture, and be -- came the first
  New Man, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  \allowBreak f4
  \allowBreak ees8
  \allowBreak aes([ g] f4)
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak f8
  \allowBreak ees
  \allowBreak f
  \allowBreak g[ aes]
  \allowBreak bes
  \allowBreak aes
  \allowBreak g
  \allowBreak f[ c']
  \allowBreak c4
  \allowBreak bes8([ c] bes4) \bar "'"
  \allowBreak bes8[ c]
  \allowBreak bes
  \allowBreak aes
  \allowBreak aes
  \allowBreak g[ bes]
  \allowBreak aes
  \allowBreak g[ aes]
  \allowBreak f
  \allowBreak f[ ees c]
  \allowBreak c4 \bar "'"
  \allowBreak c8
  \allowBreak c
  \allowBreak ees[ f]
  \allowBreak f
  \allowBreak ees[ f]
  \allowBreak g4
  \allowBreak g \bar "'"
  \allowBreak g8
  \allowBreak aes[ g]
  \allowBreak ees[ g f]
  \allowBreak f4 \bar "||"
}
altoNotesAnt = \relative c' {
  c4. ees4 f\breve*5/16 s16 ees\breve*5/16 c2 f2
  des4. ees4 f2. c\breve*7/16 des\breve*5/16
  c4 bes4. des4 c4.~ c4
}
tenorNotesAnt = \relative g {
  aes4. bes4 c\breve*5/16 s16 bes\breve*5/16 aes2~ aes2~
  4.~ 4~ 2. g\breve*7/16 aes\breve*5/16 ees4~ 4. bes'4 g4. aes4
}
bassNotesAnt = \relative c {
  f4. ees4 aes\breve*5/16 s16 ees\breve*5/16 f2 des2
  bes4. c4 des2. ees\breve*7/16 des\breve*5/16 ees4~
  4. bes4 c4. f4
}
