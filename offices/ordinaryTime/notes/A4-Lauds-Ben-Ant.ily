\version "2.20.0"

% Will need these variables to build the cantor and organ scores:
keysig =  \key f \minor 
antiphon = "B"
psalmtone = "50"
psalmtonestruct = "33"
psalmnum = "Benedictus"
% transposition interval for  the corresponding psalm tone
	% to match the key signature of this antiphon. For
	% use in cantor (antiphon) and organ (psalm) scores:
frompitch = a
topitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
    Show us your mer -- cy, Lord; " * " 
    re -- mem -- ber your ho -- ly co -- ve -- nant.
}
sopNotesAnt = \relative e' {
    \global	% will be populated by an include file
		% in the cantor/organ scores called lbi_defs
    \keysig
    \voiceOne
    aes4 g8 aes f[ ees] f aes8[( bes aes] g4) 
    \hideNotes g16 \unHideNotes   %so that I can align the * better
    g8 g aes bes8 bes[( c] bes4) bes8 aes g f4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    c\breve*7/16 ees4.~ ees2. s16 
    f\breve*5/16 c2
}    
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    aes\breve*7/16~ aes4. bes2. s16
    bes\breve*5/16~ bes4 aes
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    f\breve*7/16 c4. ees2. s16
    des\breve*5/16 f2
}
