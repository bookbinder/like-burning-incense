\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "3"
psalmtone = "34"
antKeysig = \key aes \major
psalmnum = "Ps_147_12-20"
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
  I saw the new Je -- ru -- sa -- lem,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  co -- ming down from hea -- ven, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  r8 aes8 g! aes f ees f[ ees] des des4  
  \noBreak \hideNotes des16 \unHideNotes
  ees8[ f] ees des[ f] aes bes4 bes \bar "'"
  aes8 g![ aes] f8([ ees] f[ ees des]) des4 \bar "||"
}
altoNotesAnt = \relative c' {
  des\breve*11/16 s16 s4. des4. f\breve*5/16 des4~ des\breve*5/16~ des4
}
tenorNotesAnt = \relative g {
  f\breve*11/16 s16 aes4.~ aes4.~ aes\breve*5/16 bes4 aes\breve*5/16 f4
}
bassNotesAnt = \relative c {
  des\breve*11/16 s16 c4. f4. des\breve*5/16~ des4~ des\breve*5/16~ des4
}
