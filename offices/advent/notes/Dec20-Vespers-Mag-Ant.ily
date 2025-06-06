\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key f \minor
antiphon = "M"
psalmtone = "52"
psalmtonestruct = "44"
psalmnum = "Magnificat"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a
%% master transposition after accounting for psalm tone
master-from-pitch = a
master-to-pitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
    O Key of Da -- "vid, * " O roy -- al Pow -- er of Is -- ra -- el
    con -- trol -- ling at your will the gate of hea -- ven:
    come, break down the pri -- son walls of death for those who dwell
    in dark -- ness and the sha -- dow of death; and lead your
    cap -- tive peo -- ple in -- to free -- dom.
}
sopNotesAnt = \relative e' {

    
    
    r8 ees8( aes4 g8) aes f g[ f ees f] \bar "" f4 \bar "'"
    f8 \bar "" ees f \bar "" g4 g8 f \bar "" f ees ees4 \bar "'"
    f8 \bar "" aes8[ g] f ees f \bar "" g8[ aes] g g aes \bar "" bes4 bes \bar ","
    c4 c8 \bar "" bes8[ aes] g \bar ""
    f8[ g] f ees f \bar "" g4 g8 \bar "" f[ g] f ees f \bar "" g[ aes] g g aes
    \bar "" bes4 bes8 aes \bar "" aes4( g) \bar "'"
    \bar "" g8 g[ aes] g \bar "" f4 f8 \bar "" ees ees g aes \bar "" f4 f \bar "||"
}
altoNotesAnt = \relative c' {

    
    
    r8 ees8 c\breve*5/16 ees2 c4. s\breve*11/16 c\breve*5/16 ees\breve*5/16
    f2 ees4. f4. des\breve*5/16 c4.~ c4. ees4~ ees\breve*5/16 f2
    ees\breve*5/16~ ees4. des4. ees2 c2
}
tenorNotesAnt = \relative g {

    
    
    bes4 aes\breve*5/16 bes2 aes4. bes4 c2 bes\breve*5/16 aes\breve*5/16
    bes\breve*5/16~ bes2 g4. f4. aes\breve*5/16 g4. aes4. bes4~ bes\breve*5/16~
    bes2~ bes\breve*5/16~ bes4.~ bes4.~ bes2~ bes4 aes
}
bassNotesAnt = \relative c {

    
    
    g'4 f\breve*5/16 ees4 c f4. g4 aes2 g\breve*5/16
    f\breve*5/16 ees\breve*5/16 des2 c4. des4.~ des\breve*5/16
    ees4. f4. g4 ees\breve*5/16 des2 ees\breve*5/16~ ees4.
    bes4. c2 f2
}
