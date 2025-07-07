\version "2.20.0"
%% \include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key ges \major
antiphon = "M"
psalmtone = "60"
psalmtonestruct = "33"
psalmnum = "Magnificat"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a
%% transposition after accounting for psalm tone
master-from-pitch = ges
master-to-pitch = f


text = \lyricmode {
    \set includeGraceNotes = ##t
    Those who wel -- come you 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "} 
    are wel -- co -- ming me, and those who wel -- come me are
    wel -- co -- coming him who sent me.
}
sopNotesAnt = \relative e' {
  des4 des8 ees[ ges] ges f4
  \noBreak \hideNotes f16 \unHideNotes  %so taht I can align the * better
  \allowBreak ees8
  \allowBreak f
  \allowBreak ees
  \allowBreak ees
  \allowBreak des4 \bar "'"
  \allowBreak des8
  \allowBreak f[ ges]
  \allowBreak aes
  \allowBreak aes[ bes]
  \allowBreak bes
  \allowBreak aes4
  \allowBreak f8
  \allowBreak ges8
  \allowBreak f
  \allowBreak ees
  \allowBreak ees([ f] ges4)
  \allowBreak f8
  \allowBreak ees8[ des]
  \allowBreak des4 \bar "||"
}
altoNotesAnt = \relative c' {
  des2.~ des4. bes4. aes4. s4 s4. s4. s2 des\breve*5/16 aes2
}
tenorNotesAnt = \relative g {
  f4. ges aes ges f des'4.~ des~ des bes ges\breve*5/16~ ges4 f
}
bassNotesAnt = \relative c {
  des2.~ des4.~ des~ des~ des f~ f ees bes\breve*5/16 des2
}
