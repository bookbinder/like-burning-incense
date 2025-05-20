\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antKeysig = \key aes \major
antiphon = "B"
psalmtone = "26"
psalmtonestruct = "33"
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
  This was the third time
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  Je -- sus had shown him -- self to his dis -- ci -- ples af -- ter
  he had ri -- sen from the dead, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
    
    
    aes4 f8 aes aes[ g] g4
    \noBreak \hideNotes g16 \unHideNotes
    \allowBreak g8
    \allowBreak aes
    \allowBreak g
    \allowBreak f[ g]
    \allowBreak aes
    \allowBreak aes4
    \allowBreak aes8
    \allowBreak g
    \allowBreak f
    \allowBreak f[ ees]
    \allowBreak ees4 \bar "'"
    \allowBreak ees8[ f]
    \allowBreak ees
    \allowBreak ees
    \allowBreak ees
    \allowBreak f4
    \allowBreak f8
    \allowBreak ees
    \allowBreak des
    \allowBreak ees8([ f] ees4) \bar "'"
    \allowBreak f8
    \allowBreak f[ g]
    \allowBreak ees4
    \allowBreak ees \bar "||"
}
altoNotesAnt = \relative c' {
    
    
    ees2~ ees\breve*19/16 s16
    c\breve*5/16 des\breve*5/16~ des4 c4. bes4~ bes2
}
tenorNotesAnt = \relative g {
    
    
    aes2~ aes\breve*7/16 s16 c\breve*8/16 bes2 aes\breve*5/16~ aes\breve*5/16~
    aes4~ aes4.~ aes4~ aes4( g)
}
bassNotesAnt = \relative c {
    
    
    c2 ees\breve*7/16 s16 aes\breve*8/16 g2
    aes\breve*5/16 des,\breve*5/16 aes4~ aes4. des4 ees2
}
