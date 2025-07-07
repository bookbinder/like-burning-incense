\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antKeysig = \key aes \major
antiphon = "B"
psalmtone = "29"
psalmtonestruct = "43"
psalmnum = "Benedictus"
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
  Je -- sus stood in the midst of his dis -- ci -- ples
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  and said: Peace be with you, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
    
    
    ees8 f8 aes4
    \allowBreak g8
    \allowBreak ees8
    \allowBreak g
    \allowBreak aes
    \allowBreak f
    \allowBreak ees
    \allowBreak f[ ees des]
    \allowBreak des4
    \noBreak \noBreak \hideNotes g16 \unHideNotes
    \allowBreak ees8
    \allowBreak f([ aes] g4)
    \allowBreak \breathe
    \allowBreak aes4
    \allowBreak aes8
    \allowBreak f[ aes]
    \allowBreak g4 \bar "'"
    \allowBreak f8
    \allowBreak ees
    \allowBreak f[ ees]
    \allowBreak ees4 \bar "||"
}
altoNotesAnt = \relative c' {
    
    
    s\breve*8/16^"Used different psalm tone. Does it work?" s4 s2. s16
    ees2~ ees4.~ ees2 c4 bes2
}
tenorNotesAnt = \relative g {
    
    
    c\breve*8/16 bes4 aes2. s16 bes2 aes4. bes2 aes4~ aes g4
}
bassNotesAnt = \relative c {
    
    
    aes'\breve*8/16 g4 f2. s16 ees2 c4. ees2~ ees2~ ees4
}
