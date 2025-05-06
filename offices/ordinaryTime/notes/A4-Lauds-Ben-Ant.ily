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
    Show us your mer -- cy, Lord; __
    \markup \with-color #(x11-color 'gray36) { \tiny \raise #.5 \char ##x1F7B6 " " }
    re -- mem -- ber your ho -- ly co -- ve -- nant.
}
sopNotesAnt = \relative e' {
    \global	% will be populated by an include file
		% in the cantor/organ scores called lbi_defs
    \keysig
    aes4 g8 aes f[ ees] f aes8[( bes aes] g4) 
    \hideNotes g16 \unHideNotes   %so that I can align the * better
    \allowBreak g8 \allowBreak g \allowBreak aes \allowBreak bes8 \bar ""
    \allowBreak bes[( c] bes4) \allowBreak bes8 \bar "" \allowBreak aes \allowBreak g f4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    c\breve*7/16 ees4.~ ees2. s16 
    f\breve*5/16 c2
}    
tenorNotesAnt = \relative g {
    \global
    \keysig
    aes\breve*7/16~ aes4. bes2. s16
    bes\breve*5/16~ bes4 aes
}
bassNotesAnt = \relative c {
    \global
    \keysig
    f\breve*7/16 c4. ees2. s16
    des\breve*5/16 f2
}
