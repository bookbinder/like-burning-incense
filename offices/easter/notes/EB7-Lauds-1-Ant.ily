\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antKeysig = \key a \minor
antiphon = "1"
psalmtone = "39"
psalmtonestruct = "43"
psalmnum = "Ps_92"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a
%% master transposition after accounting for psalm tone
master-from-pitch = a
master-to-pitch = gis


text = \lyricmode {
  \set includeGraceNotes = ##t
  You have filled me with glad -- ness, Lord;
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  I will sing for joy at the works of your hands, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
    
    
    e8 e e[ f] e d g[ a] g c4
    \noBreak \hideNotes c16 \unHideNotes
    \allowBreak c8
    \allowBreak c
    \allowBreak b[ c]
    \allowBreak a
    \allowBreak b4
    \allowBreak a8
    \allowBreak a
    \allowBreak g[ a]
    \allowBreak g
    \allowBreak f
    \allowBreak f4( e) \bar "'"
    \allowBreak g8
    \allowBreak g[ f]
    \allowBreak e4
    e \bar "||"
}
altoNotesAnt = \relative c' {
    
    
    s2.^"Different psalm tone. Does it work?" e4.~ e2 s16 f\breve*7/16
    d2 c\breve*5/16 d4~ d c
}
tenorNotesAnt = \relative g {
    
    
    g2. c4.~ c2~ s16 c\breve*7/16 a2~ a\breve*5/16 f4 a2
}
bassNotesAnt = \relative c {
    
    
    c2.~ c4. a'2 s16 f\breve*7/16~ f2 a,\breve*5/16~ a4~ a2
}
