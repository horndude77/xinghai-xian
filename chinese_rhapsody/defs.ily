\version "2.13.28"

pizz = \markup{pizz.}
arco = \markup{arco}

boxMark = #(define-music-function (parser location markp) (string?)
#{
  \mark \markup { \box \bold $markp }
#})

outline =
{
  \time 6/8
  \tempo "Allegretto moderato" 4.=100
  \boxMark "A"
  s2.*36 |

  \boxMark "B"
  \time 2/4
  \tempo "Larghetto animato"
  s2 |
}

afterGraceFraction = #(cons 15 16)

\layout
{
  \context
  {
    \Score
    skipBars = ##t
    extraNatural = ##f
    \override PaperColumn #'keep-inside-line = ##t
    \override NonMusicalPaperColumn #'keep-inside-line = ##t
    autoAccidentals = #`(Staff ,(make-accidental-rule 'same-octave 0)
                               ,(make-accidental-rule 'any-octave 0)
                               ,(make-accidental-rule 'same-octave 1))
    \override Beam #'breakable = ##t
    \override NoteCollision #'merge-differently-dotted = ##t
  }

  \context
  {
    \RhythmicStaff

    %Workaround bug. Without this the multimeasure rest would be placed above
    %the staffline.
    \override MultiMeasureRest #'staff-position = #0.01
  }
}

\midi
{
  \context
  {
    \Voice
    \remove "Dynamic_performer"
  }
}

\paper
{
  ragged-right = ##f
  ragged-last = ##f
  ragged-bottom = ##f
  ragged-last-bottom = ##f
}
