\version "2.20.0"

% Will need these variables to build the cantor and organ scores:
keysig =  \key f \minor 
antiphon = "N"
psalmtone = "29"
psalmtonestruct = "43"
psalmnum = "NuncDimittis"
% transposition interval for  the corresponding psalm tone
	% to match the key signature of this antiphon. For
	% use in cantor (antiphon) and organ (psalm) scores:
frompitch = aes
topitch = aes


text = \lyricmode {
    \set includeGraceNotes = ##t
    Pro -- tect us, Lord, as we stay a -- "wake * "
    watch o -- ver us as we sleep,
    that a -- wake we may keep watch with Christ,
    and a -- sleep, res in his peace.
    "(P.T.) peace" al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
    \global	% will be populated by an include file
		% in the cantor/organ scores called lbi_defs
    \keysig
    \voiceOne
    r8 ees8 f[ aes] aes aes[ bes] aes g f[ g] f \bar "" ees4 \bar "'"
    ees8 \bar "" g aes bes \bar "" aes f \bar "" aes4( g) \bar ","
    g8 g \bar "" ees g bes aes \bar "" f[ aes] aes \bar "" g4( aes) \bar "'"
    f8 f ees[ des] \bar "" ees--[ f] ees \bar "" ees[ des] \bar "" c4 \bar "||"
    c4 \bar "'" ees8 \bar "" ees[ des] \bar "" c4 c4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    c\breve*9/16 c4. ees4.~ ees4.~ ees4~ ees2.~ ees2~ ees4.
    f2 des2 bes4.~ bes4 aes4
    aes4. bes4~ bes aes4
}    
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    ees\breve*9/16 aes4.~ aes4. bes4. c4 bes2.~ bes2 c4. des2 aes2
    f4.~ f4~ f4
    f4. des4 f2
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    aes\breve*9/16~ aes4. c4. ees4.~ ees4 ees2. g2 aes4. des,2~ des2~
    des4. bes4 f4
    f4.~ f4~ f2
}
