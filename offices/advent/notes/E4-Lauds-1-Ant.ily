\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key ges \major
antiphon = "1"
psalmtone = "76"
psalmtonestruct = "43"
psalmnum = ""
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
    The Lord, the migh -- ty "God, * " will come forth from
    Zi -- on to set his peo -- ple free.
}
sopNotesAnt = \relative e' {

    
    
    r8 aes8 aes[ bes] aes f ges ges4( aes) \bar "'"
    aes8 f[ aes] aes aes ges[ f ees] ees4 f8 ges
    ges f ees des4 \bar "||"
  }
altoNotesAnt = \relative c' {

    
    
    des\breve*7/16 bes4( des4.) f2 c2 bes2 aes4
}
tenorNotesAnt = \relative g {

    
    
    f\breve*7/16 ees4( f4.) aes2 \parenthesize ces2. ees,2 f4
}
bassNotesAnt = \relative c {

    
    
    des\breve*7/16~ des4~ des4.~ des2 ees2. ces2 des4
}
