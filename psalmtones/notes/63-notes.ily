\version "2.18.2"

toneStruct = "43"
toneKeysig = \key aes \major


sopranoOneFlex = {\afterGrace aes'\breve^"A†" f'4 \breathe aes'\breve g'8 f' aes'4 \bar "|" g'\breve f'8 ees'4 \bar "||"}
sopranoOne = {aes'\breve g'8 f' aes'4 \bar "|" g'\breve f'8 ees'4 \bar "||"}
sopranoShort = { \override Stem.stencil = ##f
                 \afterGrace aes'\breve*1/2 \parenthesize f'4_"+"
                 \revert Stem.stencil
                 g'8 f' aes'4 \bar "|" \allowBreak g'\breve*1/2 f'2 ees'4 \bar "||"  }
sopranoTwoFlex = {\afterGrace aes'\breve^"B†" f'4 \breathe aes'\breve g'8 f' aes'4 \bar "|" g'\breve f'8 ees'4 \bar "||"}
sopranoTwo = {aes'\breve g'8 f' aes'4 \bar "|" g'\breve f'8 ees'4 \bar "||"}

altoOneFlex = {}
altoOne = {}
altoTwoFlex = {}
altoTwo = {}

tenorOneFlex = {}
tenorOne = {}
tenorTwoFlex = {}
tenorTwo = {}

bassOneFlex = {}
bassOne = {}
bassTwoFlex = {}
bassTwo = {}


