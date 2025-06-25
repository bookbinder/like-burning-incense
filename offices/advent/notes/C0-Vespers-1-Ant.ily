\version "2.20.0"
\include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key c \major
antiphon = "1"
psalmtone = "6"
psalmtonestruct = "43"
psalmnum = "Ps_113"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a


text = \lyricmode {
  \set includeGraceNotes = ##t
  Re -- joice, Je -- ru -- sa -- "lem, * " let your joy
  o -- ver -- flow; your Sa -- vior will come to you,
  al -- le -- lu -- ia.
}
sopNotesAnt = \relative fis' {
		
  r8 d8 e[ f] g f e d4 \bar "'" f8 e f4 g8[ a] a g4 \bar ","
  g8 a[ c] b c a[ g] f a4 \bar "'" a8 a[ b] a[ g] g4 \bar "||"
}
altoNotesAnt = \relative d' {
  s4 s4 s4. s4 c4 a4 c2.~ c\breve*7/16 c4.~ c4~ c b
}    
tenorNotesAnt = \relative g {
  a4 g4. \tieDown <<  {a2 \hideNotes f4 \unHideNotes} \\ { \hideNotes  f2~  \unHideNotes f4~} >> \tieUp f4~ f4. e4.~ e\breve*7/16 f4. e4 d2
}
bassNotesAnt = \relative c {
  f4~ f4.~ f2 a,4 d4 c2. a\breve*7/16 f4.~ f4 g2
}