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
  f8 f f4 f8[ g] f4 f8 e g g a4 a \bar "," a8 a[ g] g[ f] f d f[ g] g[ f] f4 \bar "||"
  f8 f f4 f8[ g] f4 f8 e g g a4 a \bar "," a8 a[ g] g[ f] f d f[ g] g[ f] f4 \bar "||"

  f8 f f f[ g f] f4 f8[e] g8 g a4 \bar "||"
  a8 a[ g] g[ f] f4 \bar "||"

  f8[ g] f f f f4 f8 e  g g a([ bes] a4) \bar "'"
  a8 a g a g g[ f] f4 \bar "||"
  f8 f f4 f8[ g] f4 f8 e g g a4 a \bar "," a8 a[ g] g[ f] f d f[ g] g[ f] f4 \bar "||"
}
sopWords = \lyricmode {
  "V. In" -- to your hands, "Lord, * " I com -- mend
  my spi -- rit, al -- le -- lu -- ia, al -- le -- lu -- ia.
  "R. In" -- to your hands, Lord, I com -- mend
  my spi -- rit, al -- le -- lu -- ia, al -- le -- lu -- ia.
  "V. You" have re -- deemed us, Lord
  God of truth.
  "R. Al" -- le -- lu -- ia.
  "V. Glo" -- ry to the Fa -- ther, and to the Son,
  and to the Ho -- ly Spi -- rit.
  "R. In" -- to your hands, Lord, I com -- mend my spi -- rit, al -- le -- lu -- ia, al -- le -- lu -- ia.
}
altoMusic = \relative c' {
  c2 f4 c2 d4 g4 f4. c4 bes2.~ bes4 a
  c2 f4 c2 d4 g4 f4. c4 bes2.~ bes4 a
  c\breve*10/16 d4 c4~
  c8~ c4 bes2
  s\breve*11/16 g'4( f4.)~ f4 d4 c2
    c2 f4 c2 d4 g4 f4. c4 bes2.~ bes4 a
}
altoWords = \lyricmode {}

tenorMusic = \relative f {
  f2 bes4 a2 bes4 c4~ c4. f,4 d2. c2
  f2 bes4 a2 bes4 c4~ c4. f,4 d2. c2
  f\breve*10/16~ f4~ f4~
  f8~ f4 d2
  c'\breve*9/16 d4 c4~ c4.~ c4 bes a2
  f2 bes4 a2 bes4 c4~ c4. f,4 d2. c2
}
tenorWords = \lyricmode {}

bassMusic = \relative c {
  a2 d4 f2.~ f4~ f4.~ f,4~ f2.~ f2
  a2 d4 f2.~ f4~ f4.~ f,4~ f2.~ f2
  a\breve*10/16 bes4 f'4~
  f8 f,4~ f2
  a'\breve*9/16 bes4 f4~ f4.~ f2~ f2
  a,2 d4 f2.~ f4~ f4.~ f,4~ f2.~ f2
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