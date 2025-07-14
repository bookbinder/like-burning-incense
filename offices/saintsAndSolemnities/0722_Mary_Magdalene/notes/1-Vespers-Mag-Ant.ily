\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "M"
psalmtone = "60"
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
  Ma -- ry ran and told the dis -- ci -- ples
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  that she had seen the Lord, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  des4 des8 des[ aes'] aes aes4 aes8 ges ges[ f] f4
  \noBreak \noBreak \hideNotes f16 \unHideNotes
  \allowBreak aes8
  \allowBreak ges[ aes]
  \allowBreak ges
  \allowBreak f4
  \allowBreak ees8
  \allowBreak ees4( des) \bar "'"
  \allowBreak ees8
  \allowBreak ees[ f]
  \allowBreak des4
  \allowBreak des \bar "||"
}
altoNotesAnt = \relative c' {
  des\breve*6/16~ des2~ des\breve*5/16 s16 bes4.~ bes4. aes\breve*5/16
  ces4 aes2
}
tenorNotesAnt = \relative g {
  f\breve*6/16 bes2 aes\breve*5/16 s16 ees4. ges4. f\breve*5/16
  ges4~ ges f
}
bassNotesAnt = \relative c {
  des\breve*6/16~ des2~ des\breve*5/16~ s16 des4.~ des~ des\breve*5/16
  ces4 des2
}
