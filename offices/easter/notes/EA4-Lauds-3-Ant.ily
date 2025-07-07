\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antKeysig = \key aes \major
antiphon = "3"
psalmtone = "22"
psalmtonestruct = "43"
psalmnum = "Ps_97"
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
  God is King o -- ver all the earth;
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  make mu -- sic for him with all your skill, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
    
    
    aes8[ bes] aes aes4 aes8 aes g[ aes] f f([ ees] des4)
    \noBreak \noBreak \hideNotes des16 \unHideNotes
    \allowBreak des8
    \allowBreak f8
    \allowBreak ees
    \allowBreak des
    \allowBreak ees[ f]
    \allowBreak ees
    \allowBreak des[ f]
    \allowBreak aes
    \allowBreak bes4 \bar "'"
    \allowBreak aes8
    \allowBreak g[ aes]
    \allowBreak f([ ees] f[ ees des])
    \allowBreak des4 \bar "||"
}
altoNotesAnt = \relative c' {
    
    
    des\breve*7/16~ des4.~ des4~ des4.~ s16
    des4. c4. des4. f\breve*5/16 des\breve*5/16 aes4
}
tenorNotesAnt = \relative g {
    
    
    f\breve*7/16 bes4. aes4( f4.)~ s16
    f4. aes4.~ aes4.~ aes\breve*5/16~ aes\breve*5/16 f4
}
bassNotesAnt = \relative c {
    
    
    des\breve*7/16~ des4.~ des4~ des4. s16
    bes4. aes4. f'4. des\breve*5/16~ des\breve*5/16~ des4
}
