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
  \key c \major
  \cadenzaOn
  \autoBeamOff
}

\header {
  % title = "Responsory"
}

sopMusic = \relative g' {
  c4 b8 a a [ b] a b a g4 \bar "," g8 e g a--[ c] g g g--([ f] d4) \bar "'"
  f8 f[ g] g4 g \bar "||"
}
sopWords = \lyricmode {
  This is the day the Lord has "made; * " let us re -- joice and be glad,
  al -- le -- lu -- ia.
}
altoMusic = \relative c' {
  g'2 f\breve*5/16 e\breve*5/16 f4 e d4~ d4. c4~ c b
}
altoWords = \lyricmode {}

tenorMusic = \relative c' {
  c2~ c\breve*5/16~ c\breve*5/16 a4 c4 a4~ a4. f4 d2
}
tenorWords = \lyricmode {}

bassMusic = \relative f {
  e2 f\breve*5/16 c\breve*5/16 c2 d4( f4.)~
  <<
    {\noBreak \hideNotes f4}
    \new Voice {\voiceTwo a,4}
  >>
  g2
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