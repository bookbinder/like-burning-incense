\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "1"
psalmtone = "36"
antKeysig = \key ges \major
psalmnum = "Ps_118"
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
  Sound the trum -- pet in Zi -- on,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  the day of the Lord is near;
  he comes to save us, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  des8[ ees] des des[ aes'] aes ges ges[ f] f4
  \noBreak \noBreak \hideNotes g16 \unHideNotes
  \allowBreak aes8
  \allowBreak aes[ bes]
  \allowBreak aes
  \allowBreak ges
  \allowBreak aes
  \allowBreak aes
  \allowBreak des,4 \bar ","
  \allowBreak des8
  \allowBreak ces8[ ees]
  \allowBreak ges
  \allowBreak f[ ges ees]
  \allowBreak ees4 \bar "'"
  \allowBreak f8
  \allowBreak ges
  \allowBreak aes[ des,]
  des4 \bar "||"
}
altoNotesAnt = \relative c' {
  s4. des4 s4 des4~ des4. s16 ees2 bes4 aes4.
  ces4.~ ces\breve*5/16 des4 aes2
}
tenorNotesAnt = \relative g {
  bes4. f2 bes4 aes4. s16 ges2 ees4 f4.
  ges4.~ ges\breve*5/16~ ges4~ ges f
}
bassNotesAnt = \relative c {
  ges'4. des2~ des4~ des4.~ s16 des2.~ des4.
  ees4. ces\breve*5/16 bes4 des2
}