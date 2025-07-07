\version "2.20.0"
%% include "../../../lbi_defs.ily"

antiphon = "1"
psalmnum = "Ps_119_105-112"
psalmtone = "48"
psalmtonestruct = "43"
antKeysig = \key aes \major
frompitch = a
topitch = a
%% Master transposition after accounting for psalm tone
master-from-pitch = a
master-to-pitch = a

text = \lyricmode {
    \set includeGraceNotes = ##t
    Your word, O Lord, 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "} 
    is the lan -- tern to light our way,
    al -- le -- lu -- ia.
}

sopNotesAnt = \relative e' {
    r8 aes8 g aes f[( ees] des4) \bar ""
    \noBreak \hideNotes f16 \unHideNotes   %so that I can align the * better
    \allowBreak des8
    \allowBreak ees
    \allowBreak f
    \allowBreak ees
    \allowBreak des
    \allowBreak aes'[ bes]
    \allowBreak aes8
    \allowBreak g[ aes]
    \allowBreak f
    \allowBreak ees
    \allowBreak f[ ees des]
    \allowBreak des4 \bar "||"
}
altoNotesAnt = \relative c' {
    ees2 des2.~ s16 des4. ees4. des2 bes4. aes4
}
tenorNotesAnt = \relative g {
    aes2~ aes4 f4 s16 bes4~ bes4. aes4.~ aes2 ges4. f4
}
bassNotesAnt = \relative c {
    c2 des2. s16 bes4. c4. des2~ des4.~ des4
}
