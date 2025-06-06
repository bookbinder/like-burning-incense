\version "2.20.0"
\include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key ges \major
antiphon = "B"
psalmtone = "60"
psalmtonestruct = "33"
psalmnum = "Benedictus"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a
%% Transposition interval after accounting for psalm tone
master-from-pitch = a
master-to-pitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
    A -- rise, a -- "rise! * " Wake from your slum -- ber, Je -- ru --
    sa -- lem, shake the chain from your neck, cap -- tive daugh -- ter
    Zi -- on.
}
sopNotesAnt = \relative fis' {

		
    
    
    r8 des8 ges[ f] ges bes4( aes) \bar "," aes8[ bes] aes aes aes4
    ges8 bes des[ ces] bes aes4 \bar ","
    aes8[ bes] aes ges[ f] ees8 des ces([ ees] ges4) \bar "'"
    aes4 ges8 f[ ges] ees des4 des4 \bar "||"
}
altoNotesAnt = \relative d' {

    
    
    r8 des8~ des4.~ des2 ees2 des2 ees4. ees4 des4.
    bes2 ces2 ees4. ces4. aes2
}    
tenorNotesAnt = \relative g {

    
    
    ges4~ ges4. f2 ges2~ ges2 ees4. aes4
    f4. ges2~ ges2~ ges2.~ ges4 f
}
bassNotesAnt = \relative c {

    
    
    bes4^"(bes4 or ces4 in bass?)"~ bes4. des2 ces2 bes2 aes4. ces4
    des4. ees2~ ees ces2. des2
}