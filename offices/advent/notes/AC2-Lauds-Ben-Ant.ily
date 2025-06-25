\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "B"
psalmtone = "60"
antKeysig = \key ges \major
psalmnum = "Benedictus"
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
  From hea -- ven he comes,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  the Lord and Ru -- ler; in his hand are ho -- nor
  and roy -- al au -- tho -- ri -- ty.
}
sopNotesAnt = \relative e' {
  r8 des8 des[ aes'] aes ges ges4( f)
  \noBreak \hideNotes f16 \unHideNotes
  \allowBreak aes8
  \allowBreak ges[ f ees]
  \allowBreak f
  \allowBreak ees[ des]
  \allowBreak des4 \bar ","
  \allowBreak des8
  \allowBreak des[ ees]
  \allowBreak ces([ ees] ges4)
  \allowBreak ges8
  \allowBreak f
  \allowBreak ges
  \allowBreak aes
  \allowBreak ges4
  \allowBreak f8
  \allowBreak ees
  \allowBreak ees
  des des4 \bar "||"
}
altoNotesAnt = \relative c' {
  aes2. des\breve*5/16 s16 bes2 aes\breve*5/16 ces4~ ces\breve*5/16
  f4. des2 aes
}
tenorNotesAnt = \relative g {
  f2. aes\breve*5/16 s16 ees2 f\breve*5/16 ges4~ ges\breve*5/16
  aes4.~ aes2 ges4 f
}
bassNotesAnt = \relative c {
  des2.~ des\breve*5/16~ s16 des2~ des\breve*5/16 ces4 ees\breve*5/16
  des4.~ des2~ des2
}
