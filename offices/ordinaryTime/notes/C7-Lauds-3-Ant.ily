\version "2.20.0"
%% include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key des \major
antiphon = "3"
psalmtone = "34"
psalmtonestruct = "33"
psalmnum = "Ps_117"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a
%% Master transposition after accounting for psalm tone
master-from-pitch = aes
master-to-pitch = g


text = \lyricmode {
    \set includeGraceNotes = ##t
    The Lord re -- mains faith -- ful,  
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "} 
    faith -- ful to his pro -- mise for -- e -- ver.
}
sopNotesAnt = \relative e' {
    r8 des8 f[ ges] aes bes4( aes8) des[ c bes] bes4 \bar ""
    \hideNotes b16 \unHideNotes   %so that I can align the * better
    \allowBreak aes8[ bes]
    \allowBreak aes
    \allowBreak ges
    \allowBreak f
    \allowBreak ges4
    \allowBreak f8
    \allowBreak ees
    \allowBreak f[ ees des]
    \allowBreak des4 \bar "||"
}
altoNotesAnt = \relative c' {
    s8 des8~ des4.~ des ges~ ges4
    s16
    f\breve*5/16 des2~ des4. aes4
}
tenorNotesAnt = \relative g {
    f4~ f4. ges4. bes des4~
    s16
    des\breve*5/16 bes2 aes4. f4
}
bassNotesAnt = \relative c {
    des4~ des4. ges4.~ ges~ ges4
    s16
    des\breve*5/16~ des2~ des4.~ des4
}
