\version "2.20.0"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key c \major 
antiphon = "1"
psalmtone = "4"
psalmtonestruct = "33"
psalmnum = "Ps_110_1-5,_7"
% transposition interval for  the corresponding psalm tone
	% to match the key signature of this antiphon. For
	% use in cantor (antiphon) and organ (psalm) scores:
frompitch = a
topitch = a
%% Master transposition after accounting for psalm tone
master-from-pitch = a
master-to-pitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
    The Lord will stretch forth his might -- y scep -- ter from Zi -- on,
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
    and he will reign for ev -- er, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  r8 e e[ f] e \bar "" g[ a] c4 c8 b c \bar "" a g f \bar ""
  \allowBreak a[ g] g4 
  \noBreak \noBreak \hideNotes g16 \unHideNotes   %so that I can align the * better
  \allowBreak g8
  \allowBreak g
  \allowBreak a
  \allowBreak c[ d]
  \allowBreak c
  \allowBreak b
  \allowBreak c
  \allowBreak a
  \allowBreak f
  \allowBreak a[ g]
  \allowBreak g4 \bar "||"
}
altoNotesAnt = \relative c' {
    c4 s4. g'\breve *7/16 f4. e\breve*5/16 s16
    f4 g\breve*5/16 f4 d2
}    
tenorNotesAnt = \relative g {
    g4 a4. c\breve*7/16~ c4.~ c\breve*5/16~ s16 
    c4~ c\breve*5/16~ c4~ c b
}
bassNotesAnt = \relative c {
    c4 f4. e\breve*7/16 f4. c\breve*5/16 s16
    d4 e\breve*5/16 f4 g2
}
