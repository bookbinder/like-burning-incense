\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antKeysig = \key aes \major
antiphon = "1"
psalmtone = "21"
psalmtonestruct = "33"
psalmnum = "Ps_77"
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
  The wa -- ters saw you, O God;
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  you led your peo -- ple through the sea, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
    
    
    r8 ees8 aes4 aes8 g aes8 f f4( ees)
    \noBreak \hideNotes g16 \unHideNotes
    \allowBreak ees8
    \allowBreak ees[ f]
    \allowBreak ees
    \allowBreak f
    \allowBreak ees
    \allowBreak des
    \allowBreak ees
    \allowBreak f4 \bar "'"
    \allowBreak f8
    \allowBreak f[ g]
    \allowBreak ees4
    ees \bar "||"
}
altoNotesAnt = \relative c' {
    
    
    c\breve*8/16~ c\breve*8/16 s16 des\breve*7/16 c4 bes2
}
tenorNotesAnt = \relative g {
    
    
    ees\breve*8/16 aes\breve*8/16~ s16 aes\breve*7/16~ aes4~ aes4 g
}
bassNotesAnt = \relative c {
    
    
    aes\breve*8/16~ aes\breve*8/16 s16 des\breve*7/16~ des4 ees2
}
