\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antKeysig = \key aes \major
antiphon = "1"
psalmtone = "21"
psalmtonestruct = "33"
psalmnum = "Ps_43"
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
  The one who came down from hea -- ven
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  has as -- cen -- ded a -- bove all the hea -- vens, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
    
    
    r8 ees8 aes4 aes8 aes[ bes] aes g f[ ees] ees4 
    \noBreak \noBreak \hideNotes ees16 \unHideNotes
    \allowBreak ees8
    \allowBreak ees
    \allowBreak f
    \allowBreak ees
    \allowBreak des
    \allowBreak des[ f]
    \allowBreak g
    \allowBreak f
    \allowBreak f[ ees]
    \allowBreak ees4 \bar "'"
    \allowBreak f8
    \allowBreak f[ g]
    \allowBreak ees4
    \allowBreak ees \bar "||"
}
altoNotesAnt = \relative c' {
    
    
    s\breve*15/16 s16 des\breve*7/16 bes\breve*5/16 c4 bes2
}
tenorNotesAnt = \relative g {
    
    
    aes\breve*15/16~ s16 aes\breve*7/16 g\breve*5/16 aes4~ aes g
}
bassNotesAnt = \relative c {
    
    
    c\breve*15/16 s16 des\breve*7/16 ees\breve*5/16~ ees4~ ees2
}
