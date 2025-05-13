\version "2.20.0"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key ges \major 
antiphon = "3"
psalmtone = "37"
psalmtonestruct = "33"
psalmnum = "Phil_2_6-11"
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
    The Lord Je -- sus hum -- bled him -- self,
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "}  
    and God ex -- alt -- ed him for ev -- er.    
}
sopNotesAnt = \relative e' {
    r8 des8 ges[ f] ges[ bes] bes \bar "" aes aes bes aes4 
    \hideNotes aes16 \unHideNotes   %so that I can align the * better
    \allowBreak aes8
    \allowBreak ges[ ees]
    \allowBreak f
    \allowBreak ges
    \allowBreak ges
    \allowBreak f
    \allowBreak ees
    \allowBreak ees[ des]
    \allowBreak des4 \bar "||"
}
altoNotesAnt = \relative c' {
    r8 des8~ des\breve*5/16~ des2. s16
    bes4 s8 des2 aes2
}    
tenorNotesAnt = \relative g {
    <ges~ bes>4 ges\breve*5/16~ ges4. f4. s16
    ges4.~ ges2~ ges4 f4 \bar "||"
}
bassNotesAnt = \relative c {
    s4 bes\breve*5/16 des2. s16
    ees4. bes2 des2
}
