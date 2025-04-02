\version "2.18.2"
\include "../../../lbi_defs.ily"

antiphon = "B"
psalmnum = "Benedictus"
psalmtone = "69"
psalmtonestruct = "43"
keysig = \key c \major
frompitch = a
topitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
    Re -- joice and be "glad, * " O daugh -- ter of Zi -- on;
    I will come and make my dwell -- ing in you, says the Lord.
}
sopNotesAnt = \relative fis' {
    \global	% will be populated by an include file
		% in the cantor/organ scores called lbi_defs
    \keysig
    \voiceOne
    r8 e8 e[ f] e d g([ a] g4) g8 a[ c] c c b[ a g] g4 \bar ","
    g8 g \bar "" a[ g] f \bar ""
    f g \bar "" a4 a8 a \bar "" g--[ a] \breathe g8 f \bar "" f4( e) \bar "||"
}
altoNotesAnt = \relative f' {
    \global
    \keysig
    \voiceTwo
    s2. s2 s8 a2 d,4.~ d2~ d4.~ d4~ d2 c4 d c2
}    
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    c2.~ c\breve*5/16~ c2~ c4. b2 a4.~ a4 f2~ f4 a4~ a2
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    c2. e\breve*5/16 f2 g4.~ g2 f4.~ f4~
    << { \voiceOne f2 } \new Voice {d2} >> f2 a,2
}