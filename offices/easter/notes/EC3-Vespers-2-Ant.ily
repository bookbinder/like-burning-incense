\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "2"
psalmtone = "50"
antKeysig = \key f \minor
psalmnum = "Ps_131"
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
  Let Is -- ra -- el
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  hope in the Lord, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  r8 f8 f[ ees] c c4
  \noBreak \hideNotes c16 \unHideNotes
  \allowBreak f8[ g]
  \allowBreak f
  \allowBreak aes
  \allowBreak bes4 \bar "'"
  \allowBreak aes8
  \allowBreak aes[ f]
  \allowBreak g[ aes g f]
  \allowBreak f4 \bar "||"
}
altoNotesAnt = \relative c' {
  c\breve*7/16~ s16 c2 f4. des4 c2~ 4
}
tenorNotesAnt = \relative g {
  aes\breve*7/16~ s16 aes2~ 4. bes4~ 2 aes4
}
bassNotesAnt = \relative c {
  f\breve*7/16 s16 ees2 des4. bes4 f'2~ 4
}
