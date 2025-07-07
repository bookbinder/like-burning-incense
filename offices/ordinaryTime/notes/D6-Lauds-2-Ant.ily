\version "2.20.0"
%% include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key ges \major
antiphon = "2"
psalmtone = "64"
psalmtonestruct = "33"
psalmnum = "Tobit_13_8-11,_13-15"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a
%% Master transposition after accounting for psalm tone
master-from-pitch = ges
master-to-pitch = f

text = \lyricmode {
    \set includeGraceNotes = ##t
    Re -- joice, Je -- ru -- sa -- lem, 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
    for through you all men will be ga -- thered to the Lord.
}
sopNotesAnt = \relative e' {
    r8 des8 ges[ f] ges ges[ bes] aes aes4 \bar ""
    \noBreak \hideNotes e16 \unHideNotes   %so that I can align the * better
    \allowBreak aes8
    \allowBreak bes
    \allowBreak ces[( bes] aes4)
    \allowBreak ges8
    \allowBreak ges
    \allowBreak f
    \allowBreak ges
    \allowBreak ees
    \allowBreak des
    \allowBreak ces
    \allowBreak des
    \allowBreak ees4( des) \bar "||"
}
altoNotesAnt = \relative c' {
    r8 \noBreak \hideNotes des8~ \unHideNotes des4. bes des2
    s16
    ees2 bes ces aes
}
tenorNotesAnt = \relative g {
    ges4~ ges4.~ ges f2
    s16
    ges2~ ges~ ges~ ges4( f)
}
bassNotesAnt = \relative c {
    bes4~ bes4. des~ des2
    s16
    ces2 ees aes, des
}
