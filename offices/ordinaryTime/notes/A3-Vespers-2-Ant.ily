\version "2.20.0"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key aes \major 
antiphon = "2"
psalmtone = "21"
psalmtonestruct = "33"
psalmnum = "Ps_21_2-8,_14"
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
    We ce -- le -- brate your might -- y works  
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
    with songs of praise, O Lord.
}
sopNotesAnt = \relative e' {
    r8 ees8 aes aes g aes f ees f4( ees)  
    \hideNotes ees16 \unHideNotes   %so that I can align the * better
    \allowBreak ees8
    \allowBreak f[ ees]
    \allowBreak des
    \allowBreak f[ aes]
    \allowBreak g
    \allowBreak f4( ees) \bar "||"
}
altoNotesAnt = \relative c' {
    c1~ c\breve*5/16 s16
    des2. bes2
}    
tenorNotesAnt = \relative g {
    ees1 aes\breve*5/16~ s16
    aes2.~ aes4( g)
}
bassNotesAnt = \relative c {
    aes1~ aes\breve*5/16 s16
    des4. bes4. ees2
}
