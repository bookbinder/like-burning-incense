\version "2.20.0"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key f \minor 
antiphon = "1"
psalmtone = "23"
psalmtonestruct = "42"
psalmnum = "Ps_5_2-10,_12-13"
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
    I lift up my heart to you, O Lord,
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
    and you will hear my morn -- ing prayer.
}
sopNotesAnt = \relative e' {
  r8 c8 c[ des] c bes \bar "" ees[ f] aes bes aes \bar "" aes4( g) 
  \noBreak \noBreak \hideNotes g16 \unHideNotes   %so that I can align the * better
  \allowBreak g8
  \allowBreak g
  \allowBreak aes
  \allowBreak f[ g]
  \allowBreak f
  \allowBreak ees
  \allowBreak ees
  \allowBreak c4 \bar "||"
}
altoNotesAnt = \relative c' {
    s2. ees\breve*5/16~ ees\breve*7/16 s16 
    des4. bes4 aes4
}    
tenorNotesAnt = \relative g {
    ees4 f2 aes\breve*5/16 bes\breve*7/16~ s16
    bes4. f4~ f4 \bar "||"
}
bassNotesAnt = \relative c {
    aes4 des2 c\breve*5/16 ees\breve*7/16 s16
    bes4. des4 f,4
}
