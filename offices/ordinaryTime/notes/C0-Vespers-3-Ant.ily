\version "2.20.0"
%% include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key ges \major 
antiphon = "3"
psalmtone = "37"
psalmtonestruct = "33"
psalmnum = "Phil_2_6-11"
% transposition interval for  the corresponding psalm tone
	% to match the key signature of this antiphon. For
	% use in cantor (antiphon) and organ (psalm) scores:
frompitch = a
topitch = aes


text = \lyricmode {
    \set includeGraceNotes = ##t
    The Lord Je -- sus hum -- bled him -- self,  \markup \with-color #(x11-color 'gray36) { \tiny \raise #.5 \char ##x1F7B6 } _
    and God ex -- alt -- ed him for ev -- er.    
}
sopNotesAnt = \relative e' {
    \global	% will be populated by an include file
		% in the cantor/organ scores called lbi_defs
    \keysig
    s8 des8 ges[ f] ges[ bes] bes \bar "" aes aes bes aes4 
    \hideNotes aes16 \unHideNotes   %so that I can align the * better
    aes8 \bar "" ges[ ees] f \bar "" ges ges f ees \bar "" ees[ des] des4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    s8 des8~ des\breve*5/16~ des2. s16
    bes4 s8 des2 aes2
}    
tenorNotesAnt = \relative g {
    \global
    \keysig
    <ges~ bes>4 ges\breve*5/16~ ges4. f4. s16
    ges4.~ ges2~ ges4 f4 \bar "||"
}
bassNotesAnt = \relative c {
    \global
    \keysig
    s4 bes\breve*5/16 des2. s16
    ees4. bes2 des2
}
