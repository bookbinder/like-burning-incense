\version "2.18.2"
\include "../../../lbi_defs.ily"

antKeysig = \key f \minor
antiphon = "3"
psalmnum = "Phil_2_6-11"
psalmtonestruct = "33"
psalmtone = "50"
frompitch = a
topitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
    The law was gi -- ven to Mo -- "ses, * " but grace and truth
    come through Je -- sus Christ.
}
sopNotesAnt = \relative fis' {

		
    
    
    r8 f8 f4 ees8 g aes bes aes[ g f] f4 \bar "'" f8 g[ aes] g g([ aes] bes4)
    bes8 g \bar "" aes g \bar "" g4( f) \bar "||"
}
altoNotesAnt = \relative d' {

    
    
    s2 s2 s4. s4 s8 ees4. f2. ees4 c2
}    
tenorNotesAnt = \relative g {

    
    
    c4 bes2. c4. aes4. bes4.~ bes2.~ bes4~ bes( aes4)
}
bassNotesAnt = \relative c {

    
    
    aes'4 g2. f2. ees4. des2. ees4 f2
}