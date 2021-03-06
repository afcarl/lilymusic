\version "2.12.0"

#(set-global-staff-size 20)

\paper {
  ragged-bottom = ##f
  ragged-last-bottom = ##f
}


\header {
  title = "Sei Lob und Preis mit Ehren"
  composer = "Johann Sebastian Bach (1685-1750)"
  subtitle = "Motette BWV 231"
  instrument = "Strings accompaniment"
  copyright = \markup \center-column {
    \line {
      Engraved by
      \with-url #"http://www.wilbertberendsen.nl/"
      {
        Wilbert Berendsen
        (http://www.wilbertberendsen.nl/)
      }
    }
    \line {
      Copyright © 2017
      \with-url #"http://www.cpdl.org/"
      {
        The Choral Public Domain Library
        (http://www.cpdl.org/)
      }
    }
    \line {
      This edition may be freely distributed,
      edited, performed or recorded.
    }
  }
}

\include "music.ily"

stringstruct = {
  \compressFullBarRests
  \structure
}


violonoIPartij =
\new Staff <<
  \set Staff.instrumentName = "Violino I"
  \stringstruct
  \sop
>>

violonoIIPartij =
\new Staff <<
  \set Staff.instrumentName = "Violino II"
  \stringstruct
  \alt
>>

violaPartij =
\new Staff <<
  \set Staff.instrumentName = "Viola"
  \stringstruct
  \ten
  \clef alto
>>

celloPartij =
\new Staff <<
  \set Staff.instrumentName = "Cello/Bc"
  \stringstruct
  \bas
  \clef bass
>>

\book {
  \score {
    \new StaffGroup <<
      \violonoIPartij
      \violonoIIPartij
      \violaPartij
      \celloPartij
    >>
  }
}

\book {
  \bookOutputSuffix "violino-I"
  \header {
    instrument = "Violino I"
  }
  \score {
    \violonoIPartij
  }
}

\book {
  \bookOutputSuffix "violino-II"
  \header {
    instrument = "Violino II"
  }
  \score {
    \violonoIIPartij
  }
}

\book {
  \bookOutputSuffix "viola"
  \header {
    instrument = "Viola"
  }
  \score {
    \violaPartij
  }
}

\book {
  \bookOutputSuffix "violoncello"
  \header {
    instrument = "Cello/Bc"
  }
  \score {
    \celloPartij
  }
}

