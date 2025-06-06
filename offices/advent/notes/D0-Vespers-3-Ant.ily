\version "2.18.2"
\include "../../../lbi_defs.ily"

antKeysig = \key aes \major
antiphon = "3"
psalmnum = "Phil_2_6-11"
psalmtonestruct = "33"
psalmtone = "24"
frompitch = a
topitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
    The ful -- ness of "time * " has come u -- pon us at last;
    God sends his Son in -- to the world.
}
sopNotesAnt = \relative fis' {

		
    
    
    r8 aes8 g aes f f([ ees] des4) des8 ees[ f] ees f4 f8 ees8 \bar ""
    ees([ f] ees4) \bar ","
    des4 f8[ aes] bes \bar "" aes4 g8 aes f \bar ""
    f([ ees f ees] des4) \bar "||"
}
altoNotesAnt = \relative d' {

    
    
    ees4 des4. s2 s8 c\breve*7/16 des4( c) des\breve*5/16
    ees\breve*5/16 des2.
}    
tenorNotesAnt = \relative g {

    
    
    aes4~ aes4. bes4( f4.) ees\breve*7/16 aes2~ aes\breve*5/16~
    aes\breve*5/16~ aes2( f4)
}
bassNotesAnt = \relative c {

    
    
    c4 des4.~ des4~ des4. aes\breve*7/16~ aes2 bes\breve*5/16
    c\breve*5/16 des2.
}