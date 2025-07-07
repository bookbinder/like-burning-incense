\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key c \major
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
    Our re -- dee -- mer
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
    has ri -- sen from the tomb; let us sing a hymn
    of praise to the Lord our God, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
    
    

    g8 c b[ g] \bar "" g4
    \noBreak \noBreak \hideNotes g16 \unHideNotes
    \allowBreak g8 \bar ""
    \allowBreak b[ c]
    \allowBreak a
    \allowBreak a
    \allowBreak b \bar ""
    \allowBreak a4( g) \bar ","
    \allowBreak g8
    \allowBreak g \bar ""
    \allowBreak f[ e]
    \allowBreak d \bar ""
    \allowBreak d[ a']
    \allowBreak g \bar ""
    \allowBreak a4
    \allowBreak b8
    \allowBreak c
    \allowBreak d[ c]
    \allowBreak b[ a] \bar ""
    \allowBreak a4( g) \bar "'"
    \allowBreak a8 \bar ""
    \allowBreak a[ b] \bar ""
    \allowBreak g4
    g \bar "||"
}
altoNotesAnt = \relative g' {
    
    
    
    g4~ g4~ g4. s16 e\breve*5/16~ e2. d4.~ d4.
    f1 d\breve*5/16 e4 d2
}
tenorNotesAnt = \relative g {
    
    

    c4 d4 b4. s16 a\breve*5/16 c2. a4.~ a4.
    c1 b\breve*5/16 c4~ c4 b4
}
bassNotesAnt = \relative c {
    
    

    e4 g4~ g4. s16 c,\breve*5/16~ c2. d4. f4.~
    f1 g\breve*5/16~ g4~ g2
}
