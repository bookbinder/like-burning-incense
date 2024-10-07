\version "2.20.0"
\include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key f \minor
antiphon = "Ben."
psalmtone = "50"
psalmtonestruct = "33"
psalmnum = "Benedictus"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
    The pa -- ra -- lyzed "man * "
    picked up the bed on which he was ly -- ing,
    and gave praise to God; all who saw it gave glo -- ry to God.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    \voiceOne
    r8 f8 aes g f f4 \bar "'"
    aes8[ g] f ees f[ aes] aes bes aes g f4 f \bar "'"
    ees8 \bar "" f[ c'] c([ des] c4) bes8 aes4( g) \bar "'"
    g8[ aes] g bes4 aes g8[ aes] f([ g] aes4) aes8 g g4( f) \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    c\breve*7/16~ c\breve*10/16 des\breve*5/16~
    des4 ees\breve*5/16~ ees\breve*7/16 f2. des2. c2
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    aes\breve*7/16~ aes\breve*10/16~ aes\breve*5/16~
    aes4~ aes\breve*5/16 bes\breve*7/16~ bes2.~ bes2. aes2
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    f\breve*7/16 ees\breve*10/16 des\breve*5/16
    bes4 aes\breve*5/16 ees'\breve*7/16 des2. f2.~ f2
  }
