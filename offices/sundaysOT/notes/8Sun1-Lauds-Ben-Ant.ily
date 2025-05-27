\version "2.20.0"
%% \include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key des \major
antiphon = "B"
psalmtone = "32"
psalmtonestruct = "33"
psalmnum = "Benedictus"
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
    No one pours new wine in -- to old wine -- skins; 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
    new wine should be put in new wine -- skins.
}
sopNotesAnt = \relative e' {
  des8[ ees] des f[ ges] bes4 aes f8 aes ges([ f] ees4) ees8[ des] des4
  \hideNotes des16 \unHideNotes  %so taht I can align the * better
  \allowBreak ees8[ f ees]
  \allowBreak ees4
  \allowBreak ees8
  \allowBreak f
  \allowBreak f[ ges]
  \allowBreak ges
  \allowBreak ges([ bes aes] f4)
  \allowBreak ees8[ des]
  \allowBreak des4 \bar "||"
}
altoNotesAnt = \relative c' {
  des\breve*5/16~ des2.~ des2 s16 s2 s4. s4
  s4 des4.~ des4.~ des4 bes aes
}
tenorNotesAnt = \relative g {
  f\breve*5/16 ges4 f aes^"?" bes( ges) f2 s16 aes4.~ aes4~
  aes4 ges4. f4. bes4 ges4 f4
}
bassNotesAnt = \relative c {
  des\breve*5/16~ des2.~ des2~ des s16 c4.~ c4~
  c4 bes4. des4.~ des4~ des2
}
