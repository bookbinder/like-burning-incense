\version "2.18.2"

toneStruct = "VIa"
toneKeysig = \key c \major

sopranoIntone = { f'8 g'[ a']  }
soprano = { a'\breve bes'8 a'8 g' a'4 \bar "|" a'\breve f'8 g'[ a'] g' f'4 \bar "||"  }
sopranoFlex = { a'\breve \parenthesize g'4 \soprano  }


altoIntone = { r8 c'4~  }
alto = { c'\breve*19/16~ c'4~ c'\breve*17/16 d'4. c'4  }
altoFlex = { c'\breve \parenthesize d'4 \alto  }

tenorIntone = { r8 a4~  }
tenor = { f\breve*19/16~ f4 a\breve*17/16 f4. a4  }
tenorFlex = { a\breve \parenthesize bes4 \tenor  }

bassIntone = { r8 <f, f>4  }
bass = { f,\breve*19/16~ f,4 <f, f>\breve*17/16 bes,4. f4  }
bassFlex = { <f,~ f>\breve*18/16 \bass  }
