\version "2.20.0"
%% include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key ges \major
antiphon = "2"
psalmtone = "36"
psalmtonestruct = "33"
psalmnum = "Isa_40_10-17"
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
    The Lord, the migh -- ty con -- quer -- or, will come;  
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "} 
    he will bring with him the prize of vic -- to -- ry.
}
sopNotesAnt = \relative e' {
    r8 des8 ges[ f] ges ees[ f] ges bes aes aes ges aes4
    \noBreak \hideNotes e16 \unHideNotes   %so that I can align the * better
    \allowBreak aes8
    \allowBreak bes
    \allowBreak ces[ bes]
    \allowBreak aes
    \allowBreak aes4
    \allowBreak aes8
    \allowBreak ges([ bes] aes4)
    \allowBreak ges8
    \allowBreak aes
    \allowBreak des,
    \allowBreak des4 \bar "||"
}
altoNotesAnt = \relative c' {
    bes\breve*5/16 des4.~ des2~ des2
    s16
    ees4.~ ees bes\breve*5/16 ces4 aes
}
tenorNotesAnt = \relative des {
    des\breve*5/16 ges4.~ ges2 f
    s16
    ees4. ges4.~ ges\breve*5/16 ees4 f
}
bassNotesAnt = \relative c {
    ges\breve*5/16 bes4. des2~ des
    s16
    aes4. ces des\breve*5/16~ des2
}
