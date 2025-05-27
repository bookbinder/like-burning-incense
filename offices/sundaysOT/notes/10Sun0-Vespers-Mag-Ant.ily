\version "2.20.0"
%% \include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key aes \major
antiphon = "M"
psalmtone = "26"
psalmtonestruct = "33"
psalmnum = "Magnificat"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a
%% transposition after accounting for psalm tone
master-from-pitch = a
master-to-pitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
    I de -- sire mer -- cy and not sa -- cri -- fice. 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
    I did not come to call the vir -- tu -- ous but sin -- ners.
}
sopNotesAnt = \relative e' {
  des8 f aes4 bes8 aes aes g![ aes] f[ ees] des des4
  \hideNotes des16 \unHideNotes  %so taht I can align the * better
  \allowBreak ees8
  \allowBreak f
  \allowBreak ees[ f]
  \allowBreak ees[ f]
  \allowBreak ges
  \allowBreak aes[ bes]
  \allowBreak bes
  \allowBreak aes([ aes aes])
  \allowBreak f
  \allowBreak f4 \bar "'"
  \allowBreak des8
  \allowBreak ees[ f ees des]
  \allowBreak des4 \bar "||"
}
altoNotesAnt = \relative c' {
  des\breve*9/16~ des\breve*5/16 s16 c2 des2.~
  des2~ des4. bes2 aes4
}
tenorNotesAnt = \relative g {
  f\breve*9/16~ f\breve*5/16 s16 aes2 ges2.
  f2 aes4. ges2 f4
}
bassNotesAnt = \relative c {
  des\breve*9/16 bes\breve*5/16 s16 aes2 bes2. des2~ des4.~ des2~ des4
}
