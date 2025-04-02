\version "2.24.3"
\include "../../lbi_defs.ily"

% \include "gregorian.ly"

% \paper {
%   top-system-spacing.basic-distance = #10
%   score-system-spacing.basic-distance = #20
%   system-system-spacing.basic-distance = #20
%   last-bottom-spacing.basic-distance = #10
% }

global = {
  \key f \major
  \cadenzaOn
  \autoBeamOff
}

\header {
  % title = "Responsory"
}

sopMusic = \relative g' {
  f8 f f4 \bar "" g8[ a] \bar "" a4 \bar "," g8 f \bar "" g[ a] g \bar "" f4 f \bar "||"
  f8 f f4 \bar "" g8[ a] \bar "" a4 \bar "," g8 f \bar "" g[ a] g \bar "" f4 f \bar "||"
  r8 a8 a a \bar "" a[ bes] a \bar "" a4 a8 a \bar "" g4 \bar "||"
  g8 f \bar "" g[ a] g \bar "" f4 f \bar "||"
  f8 f g a \bar "" a[ bes] a a a a \bar "" a4 \bar "'"
  g8 \bar "" g g \bar "" g[ a] g \bar "" f4 f \bar "||"
  f8 f f4 \bar "" g8[ a] \bar "" a4 \bar "," g8 f \bar "" g[ a] g \bar "" f4 f \bar "||"
}
sopWords = \lyricmode {
  "V. In" -- to your hands, "Lord, * " I com -- mend
  my spi -- rit.
  "R. In" -- to your hands, Lord, I com -- mend
  my spi -- rit.
  "V. You" have re -- deemed us, Lord
  God of truth.
  "R. I" com -- mend my spi -- rit.
  "V. Glo" -- ry to the Fa -- ther, and to the Son,
  and to the Ho -- ly Spi -- rit.
  "R. In" -- to your hands, Lord, I com -- mend my spi -- rit.
}
altoMusic = \relative c' {
  c2 d4 f4 d4~ d4. c2
  c2 d4 f4 d4~ d4. c2
  f2~ f4. d2 e4
  d4~ d4. c2
  f2~ f\breve*6/16~ f4. e4 d4. c2
  c2 d4 f4 d4~ d4. c2
}
altoWords = \lyricmode {}

tenorMusic = \relative c' {
  a2 bes4 c bes4~ bes4.~ bes4 a
  a2 bes4 c bes4~ bes4.~ bes4 a
  d2 c4. bes2 c4
  bes4~ bes4.~ bes4 a
  c2 d\breve*6/16 c4.~ c4 bes4.~ bes4 a
  a2 bes4 c bes4~ bes4.~ bes4 a
}
tenorWords = \lyricmode {}

bassMusic = \relative f {
  f2.~ f4 bes4 bes,4. f'2
  f2.~ f4 bes4 bes,4. f'2
  r2 r4. r2.
  bes4 bes,4. f'2
  a2 d\breve*6/16 r4. r4 r4. f,2
  f2.~ f4 bes4 bes,4. f'2
}
bassWords = \lyricmode {}


\score {
  \new ChoirStaff <<
    \new Lyrics = "sopranos" \with {
      % this is needed for lyrics above a staff
      \override VerticalAxisGroup.staff-affinity = #DOWN
    }
    \new Staff = "women" \with {\omit TimeSignature} <<
      \new Voice = "sopranos" {
        \voiceOne
        << \global \sopMusic >>
      }
      \new Voice = "altos" {
        \voiceTwo
        << \global \altoMusic >>
      }
    >>
    \new Lyrics = "altos"
    \new Lyrics = "tenors" \with {
      % this is needed for lyrics above a staff
      \override VerticalAxisGroup.staff-affinity = #DOWN
    }
    \new Staff = "men" \with {\omit TimeSignature} <<
      \clef bass
      \new Voice = "tenors" {
        \voiceOne
        << \global \tenorMusic >>
      }
      \new Voice = "basses" {
        \voiceTwo << \global \bassMusic >>
      }
    >>
    % \new Lyrics = "basses"
    \context Lyrics = "altos" \lyricsto "sopranos" \sopWords
    % \context Lyrics = "altos" \lyricsto "altos" \altoWords
    % \context Lyrics = "tenors" \lyricsto "tenors" \tenorWords
    % \context Lyrics = "basses" \lyricsto "basses" \bassWords
  >>
}