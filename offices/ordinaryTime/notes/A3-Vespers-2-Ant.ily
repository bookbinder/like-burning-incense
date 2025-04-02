\version "2.20.0"

% Will need these variables to build the cantor and organ scores:
keysig =  \key aes \major 
antiphon = "2"
psalmtone = "21"
psalmtonestruct = "33"
psalmnum = "Ps_21_2-8,_14"
% transposition interval for  the corresponding psalm tone
	% to match the key signature of this antiphon. For
	% use in cantor (antiphon) and organ (psalm) scores:
frompitch = a
topitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
    We ce -- le -- brate your might -- y works  "*"
    with songs of praise, O Lord.
}
sopNotesAnt = \relative e' {
    \global	% will be populated by an include file
		% in the cantor/organ scores called lbi_defs
    \keysig
    r8 ees8 aes aes g aes f ees f4( ees)  
    \hideNotes ees16 \unHideNotes   %so that I can align the * better
    ees8 f[ ees] des \bar "" \allowBreak f[ aes] \allowBreak g \bar ""
    \allowBreak f4( ees) \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    c1~ c\breve*5/16 s16
    des2. bes2
}    
tenorNotesAnt = \relative g {
    \global
    \keysig
    ees1 aes\breve*5/16~ s16
    aes2.~ aes4( g)
}
bassNotesAnt = \relative c {
    \global
    \keysig
    aes1~ aes\breve*5/16 s16
    des4. bes4. ees2
}
