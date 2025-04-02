\version "2.18.2"
\include "../../../lbi_defs.ily"

antiphon = "M"
psalmnum = "Magnificat"
psalmtone = "48"
psalmtonestruct = "43"
keysig = \key aes \major
frompitch = a
topitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
    Re -- joi -- cing you shall draw wa -- "ter * " from the well -- springs
    of the Sa -- vior.
}
sopNotesAnt = \relative fis' {
    \global	% will be populated by an include file
		% in the cantor/organ scores called lbi_defs
    \keysig
    \voiceOne
    r8 aes8 g aes f f ees f[ ees] ees4 ees8 des ees[ f ees] ees4
    ees8 f des4 des \bar "||"
}
altoNotesAnt = \relative d' {
    \global
    \keysig
    \voiceTwo
    c\breve*7/16~ c2. s4. s2 bes4 aes
}    
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    ees\breve*7/16 aes2.~ aes\breve*7/16 f2
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    aes\breve*7/16~ aes2. c\breve*7/16 des2
}