\version "2.20.0"

% Will need these variables to build the cantor and organ scores:
keysig =  \key aes \major 
antiphon = "2"
psalmtone = "21"
psalmtonestruct = "33"
psalmnum = "Isa_45_15-25"
% transposition interval for  the corresponding psalm tone
	% to match the key signature of this antiphon. For
	% use in cantor (antiphon) and organ (psalm) scores:
frompitch = a
topitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
    All the des -- cen -- dants of Is -- ra -- el
    \markup \with-color #(x11-color 'gray36) { \tiny \raise #.5 \char ##x1F7B6 "" }
    will glo -- ry in the Lord's gift of vic -- tor -- y.
}
sopNotesAnt = \relative e' {
    \global	% will be populated by an include file
		% in the cantor/organ scores called lbi_defs
    \keysig
    ees8 f ees aes g aes \bar "" f ees ees4 
    \hideNotes ees16 \unHideNotes   %so that I can align the * better
    ees8 \bar "" f \allowBreak ees \allowBreak des \allowBreak ees
    \bar "" \allowBreak f[ aes] \bar "" g[( aes] f4) \allowBreak f8 \bar ""
    \allowBreak g[ f] \allowBreak ees \bar "" \allowBreak ees4 \bar "||"  
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    s2. c\breve*5/16 s16
    des2 ees4 des\breve*5/16 bes4.~ bes4
}    
tenorNotesAnt = \relative g {
    \global
    \keysig
    aes2.~ aes\breve*5/16~ s16
    aes2~ aes4~ aes\breve*5/16~ aes4. g4 
}
bassNotesAnt = \relative c {
    \global
    \keysig
    c2. aes\breve*5/16 s16
    des2 c4 bes\breve*5/16 ees4.~ ees4
}
