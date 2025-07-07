\version "2.20.0"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key ges \major 
antiphon = "B"
psalmtone = "37"
psalmtonestruct = "33"
psalmnum = "Benedictus"
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
    God has raised up for us
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
    a migh -- ty Sav -- ior, 
    as he prom -- ised through the words of his ho -- ly pro -- phets.    
}
sopNotesAnt = \relative e' {
    des8[ ges] f ges[ bes] bes bes aes4 \bar ""
    \noBreak \hideNotes aes16 \unHideNotes   %so that I can align the * better
    \allowBreak aes8
    \allowBreak ges[ ees f]
    \allowBreak ees8
    \allowBreak ees[ des]
    \allowBreak des4 \breathe
    \allowBreak des8
    \allowBreak des
    \allowBreak des[ aes']
    \allowBreak aes
    \allowBreak ges
    \allowBreak aes
    \allowBreak ces[( bes] aes4)
    \allowBreak aes8
    \allowBreak aes
    \allowBreak ges[ ees f]
    \allowBreak ees8
    \allowBreak ees[ des]
    \allowBreak des4 \bar "||"
}
altoNotesAnt = \relative c' {
    des\breve*7/16~ des4. s16
    bes2 s2.
    des4.~ des4 ees2. ces2 aes2
}    
tenorNotesAnt = \relative g {
    ges\breve*7/16 f4. s16
    ges2 aes2. 
    f4.~ f4 ges2. ees2 f2
}
bassNotesAnt = \relative c {
    bes\breve*7/16 des4. s16
    ees2 f2.
    des4.~ des4 ces2.~ ces2 des2
}
