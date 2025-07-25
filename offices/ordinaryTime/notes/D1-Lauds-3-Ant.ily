\version "2.20.0"
%% include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key ges \major
antiphon = "3"
psalmtone = "37"
psalmtonestruct = "33"
psalmnum = "Ps_150"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = aes
%% Master transposition after accounting for psalm tone
master-from-pitch = ges
master-to-pitch = f

text = \lyricmode {
    \set includeGraceNotes = ##t
    Let e -- very -- thing that breathes  
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "} 
    give praise to the Lord, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
    r8 aes8 aes[ bes] aes aes bes ces[( bes] aes4) \bar ""
    \noBreak \hideNotes e16 \unHideNotes   %so that I can align the * better
    \allowBreak aes8
    \allowBreak ges[ f]
    \allowBreak ees
    \allowBreak f
    \allowBreak ges4
    \allowBreak f8
    \allowBreak ees
    \allowBreak ees[ des]
    \allowBreak des4 \bar "||"
}
altoNotesAnt = \relative c' {
    f\breve*7/16 ees4~ ees4.
    s16
    des2~ des4 ces aes2
}
tenorNotesAnt = \relative c' {
    des\breve*7/16 aes4 ces4.
    s16
    bes2~ bes4 ges4~ ges f
}
bassNotesAnt = \relative c {
    s\breve*7/16 s4 s4.
    s16
    bes'2 bes,4 ces des2
}
