\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antKeysig = \key f \minor
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
    O sa -- cred Lord of an -- cient Is -- ra -- "el, * " who showed
    your -- self to Mo -- ses in the burn -- ing bush, who gave him the
    ho -- ly law on Si -- nai moun -- tain: come, stretch out your
    migh -- ty hand to set us free.
}
sopNotesAnt = \relative e' {

    
    
    r8 ees8( aes4 g8) aes8 aes aes f g f ees f f4 \bar "'"
    f8 aes[ g] f g f \bar "" f[ ees] ees4 ees8 f \bar "" g[ aes] g
    \bar "" g4 \bar "'"
    f8 \bar "" aes g f ees f \bar "" g[ aes] g g aes \bar "" bes4 bes \bar ","
    c4 \bar "" bes8 aes g \bar "" f[ g] f \bar "" ees4 f8 g[ aes] g
    \bar "" f4 \bar "||"
}
altoNotesAnt = \relative c' {

    
    
    r8 ees8 c\breve*7/16 ees2 c\breve*14/16
    f4. ees4.~ ees\breve*5/16~ ees\breve*5/16
    f2 ees4 f4. des4. ees2. c4
}
tenorNotesAnt = \relative g {

    
    
    bes4 aes\breve*7/16 bes2 aes\breve*8/16 bes2.~ bes2.
    aes\breve*5/16 bes\breve*5/16 bes2 g4 f4. bes4.~ bes2.
    aes4
}
bassNotesAnt = \relative c {

    
    
    g'4 f\breve*7/16 ees4 c4 f\breve*8/16 g2. ees2.
    c\breve*5/16 ees\breve*5/16 des2 c4 des4. bes4.
    c4. ees4. f4
}
