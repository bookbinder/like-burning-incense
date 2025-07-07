\version "2.20.0"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key ges \major 
antiphon = "1"
psalmtone = "37"
psalmtonestruct = "33"
psalmnum = "Ps_63_2-9"
% transposition interval for  the corresponding psalm tone
	% to match the key signature of this antiphon. For
	% use in cantor (antiphon) and organ (psalm) scores:
frompitch = a
topitch = aes
%% Master transposition after accounting for psalm tone
master-from-pitch = ges
master-to-pitch = f


text = \lyricmode {
    \set includeGraceNotes = ##t
    As morn -- ing breaks, I look to you, O God,
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
    to be my strength this day, al -- le -- lu  -- ia.
}
sopNotesAnt = \relative e' {
    r8 des8 ges[ f] ges \bar "" ees ees f ges \bar "" aes[ bes] aes aes4
    \noBreak \hideNotes aes16 \unHideNotes   %so that I can align the * better
    \allowBreak aes8
    \allowBreak ges[ aes]
    \allowBreak ges
    \allowBreak f[( ges] ees4)
    \allowBreak f8[ ees]
    \allowBreak des4
    \allowBreak \breathe
    \allowBreak ces8
    \allowBreak des
    \allowBreak ees[ des] des4 \bar "||"
}
altoNotesAnt = \relative c' {
    bes\breve*5/16 ces4 des4~ des2. s16
    bes4. ces2. bes4
    ces4 aes2
}    
tenorNotesAnt = \relative g {
    ges\breve*5/16~ ges2~ ges4. f4. s16 
    ges4.~ ges2. ~ ges4~ 
    ges4~ ges4 f4 \bar "||"
}
bassNotesAnt = \relative g {
    ges\breve*5/16 ces,4 bes4 des2. s16
    ees4. ces2. ges4 
    aes4 des2
}
