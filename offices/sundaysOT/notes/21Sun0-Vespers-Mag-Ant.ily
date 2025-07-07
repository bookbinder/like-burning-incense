\version "2.20.0"
%% \include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key ges \major
antiphon = "M"
psalmtone = "30"
psalmtonestruct = "32"
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
    You are Christ, the Son of the li -- ving God. 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "} 
    Bles -- sed are you, Si -- mon, son of John.
}
sopNotesAnt = \relative e' {
  aes8[ bes] aes ces([ bes] aes4) bes8 ces[ bes] \allowBreak aes
  \allowBreak ges
  \allowBreak aes[ bes]
  \allowBreak bes
  \allowBreak aes4
  \noBreak \hideNotes aes16 \unHideNotes  %so taht I can align the * better
  \allowBreak des,8
  \allowBreak ees
  \allowBreak des
  \allowBreak ces[ ees]
  \allowBreak ges4
  \allowBreak ges8
  \allowBreak f[ ges]
  \allowBreak ees
  \allowBreak des4 \bar "||"
}
altoNotesAnt = \relative c' {
  des4. ees\breve*9/16 des4.~ des4 s16 bes4. ces4 des4. ces4. aes4
}
tenorNotesAnt = \relative g {
  f4. ges\breve*9/16~ ges4. f4 s16 ges4.~ ges4~ ges4.~ ges4. f4
}
bassNotesAnt = \relative c {
  des4. ces\breve*9/16 ges4. des'4 s16 ges4. ees4 bes4. ces des4
}
