\version "2.20.0"
%% include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key e \major
antiphon = "2"
psalmtone = "11"
psalmtonestruct = "33"
psalmnum = "Ps_139_13-18,_23-24"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = gis
%% Master transposition after accounting for psalm tone
master-from-pitch = a
master-to-pitch = a

text = \lyricmode {
    \set includeGraceNotes = ##t
    I am the Lord:  
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "} 
    I search the mind and probe the heart.
    I give to each one as his deeds de -- serve.
}
sopNotesAnt = \relative e' {
    e4 fis8 gis a4( gis) \bar ""
    \noBreak \hideNotes e16 \unHideNotes   %so that I can align the * better
    \allowBreak fis8
    \allowBreak fis[ gis]
    \allowBreak fis
    \allowBreak e4
    \allowBreak dis8
    \allowBreak cis[ dis]
    \allowBreak cis
    \allowBreak b4 \bar "'"
    \allowBreak b8
    \allowBreak cis[ e]
    \allowBreak e
    \allowBreak fis[ gis fis]
    \allowBreak fis4
    \allowBreak e8
    \allowBreak e
    \allowBreak fis[ gis]
    \allowBreak fis
    \allowBreak e4 \bar "||"
}
altoNotesAnt = \relative c' {
    e2~ e\breve*5/16
    s16
    cis2. s2 s8 s8 cis4.~ cis\breve*7/16~ cis4. b4
}
tenorNotesAnt = \relative g {
    gis2 b\breve*5/16
    s16
    a2. gis4. fis e4.~ e\breve*7/16 a4. gis4
}
bassNotesAnt = \relative c {
    e2~ e\breve*5/16
    s16
    a2. e4. dis cis a\breve*7/16~ a4. e'4
}
