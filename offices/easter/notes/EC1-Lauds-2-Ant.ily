\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antKeysig = \key c \major
antiphon = "2"
psalmtone = "7"
psalmtonestruct = "43"
psalmnum = "Dan_3_57-88,_56"
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
  All cre -- a -- tion will be freed;
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  all peo -- ples will know the glo -- ry and free -- dom of God's
  chil -- dren, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
    
    
    g4 a8 c[ d] c b c a4( g)
    \noBreak \hideNotes g16 \unHideNotes
    \allowBreak g8[ a]
    \allowBreak a
    \allowBreak g
    \allowBreak f
    \allowBreak f[ a]
    \allowBreak a
    \allowBreak g
    \allowBreak a
    \allowBreak g
    \allowBreak f
    \allowBreak e
    \allowBreak d
    \allowBreak d[ a']
    \allowBreak a4
    \allowBreak a \bar "'"
    \allowBreak a8
    \allowBreak a[ b]
    \allowBreak g4
    g \bar "||"
}
altoNotesAnt = \relative c' {
    
    
    g'\breve*8/16 e\breve*6/16 s16 f4. f4. s4. s4. d4 g f4.
    e4 d2
}
tenorNotesAnt = \relative g {
    
    
    c\breve*8/16~ c\breve*6/16~ s16 c4.~ c4.~ c4.~ c4.~ c4~
    c4~ c4.~ c4~ c4 b
}
bassNotesAnt = \relative c {
    
    
    e\breve*8/16 c\breve*6/16 s16 f4. d4. e4. a4. g4
    f4~ f4.~ f4 g2
}
