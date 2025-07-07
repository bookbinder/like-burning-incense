\version "2.20.0"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key aes \major 
antiphon = "1"
psalmtone = "49"
psalmtonestruct = "33"
psalmnum = "Ps_36"
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
    O Lord,
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
    in your light we see light it -- self.
}
sopNotesAnt = \relative e' {
    r8 aes8 g[( aes] f4) 
    \noBreak \noBreak \hideNotes f16 \unHideNotes   %so that I can align the * better
    \allowBreak aes8
    \allowBreak bes[ aes]
    \allowBreak aes4
    \allowBreak f8[ aes]
    \allowBreak g[ aes]
    \allowBreak f[( ees] f4)
    \allowBreak ees8
    \allowBreak f4( des) \bar "||"
}
altoNotesAnt = \relative c' {
    ees4 des\breve*5/16~ s16
    des2.~ des4 c\breve*5/16 aes2
}    
tenorNotesAnt = \relative g {
    aes4~ aes\breve*5/16 s16
    f2.~ f4~ f\breve*5/16~ f2
}
bassNotesAnt = \relative c {
  c4 des\breve*5/16~ s16
  des2. bes4 aes\breve*5/16 des2
}
