\version "2.13.28"

\include "defs.ily"
\include "merge_rests.ily"
\include "bass_clarinet.ily"
\include "bass.ily"
\include "bassoon.ily"
\include "bass_trombone.ily"
\include "bells.ily"
\include "cello.ily"
\include "clarinet1.ily"
\include "clarinet2.ily"
\include "english_horn.ily"
\include "flute1.ily"
\include "flute2.ily"
\include "horn1.ily"
\include "horn2.ily"
\include "oboe.ily"
\include "percussion.ily"
\include "piccolo.ily"
\include "timpani.ily"
\include "trombone.ily"
\include "trumpet1.ily"
\include "trumpet2.ily"
\include "viola.ily"
\include "violin1.ily"
\include "violin2.ily"
\include "xylophone.ily"

#(set-global-staff-size 14)
instrument = "Orchestra"

\include "header.ily"

\paper
{
  short-indent = 5\mm
  system-separator-markup = \slashSeparator
}

\score
{
  <<
    \new StaffGroup
    <<
      \new GrandStaff
      <<
        \new Staff
        {
          \set Staff.instrumentName = "Piccolo"
          \set Staff.shortInstrumentName = "Pco."
          \piccolo
        }
        \new Staff
        \with { \override RestCollision #'positioning-done = #merge-rests-on-positioning }
        {
          \set Staff.instrumentName = "Flutes I,II"
          \set Staff.shortInstrumentName = "Fl.I,II"
          <<
            \new Voice
            {
              \voiceOne
              \dynamicUp
              \revert MultiMeasureRest #'staff-position
              \fluteOne
            }
            \new Voice
            {
              \voiceTwo
              \dynamicDown
              \revert MultiMeasureRest #'staff-position
              \fluteTwo
            }
          >>
        }
      >>
      \new Staff
      {
        \set Staff.instrumentName = "Oboe"
        \set Staff.shortInstrumentName = "Ob."
        \oboe
      }
      \new Staff
      {
        \set Staff.instrumentName = "English Horn"
        \set Staff.shortInstrumentName = "E.H."
        \englishHorn
      }
      \new Staff
      \with { \override RestCollision #'positioning-done = #merge-rests-on-positioning }
      {
        \set Staff.instrumentName = \markup{\center-column {\line {Clarinets I,II} \line {in B\flat}}}
        \set Staff.shortInstrumentName = "Cl.I,II"
        <<
          \new Voice
          {
            \voiceOne
            \dynamicUp
            \revert MultiMeasureRest #'staff-position
            \clarinetOne
          }
          \new Voice
          {
            \voiceTwo
            \dynamicDown
            \revert MultiMeasureRest #'staff-position
            \clarinetTwo
          }
        >>
      }
      \new Staff
      {
        \set Staff.instrumentName = "Bass Clarinet"
        \set Staff.shortInstrumentName = "B.Cl."
        \bassClarinet
      }
      \new Staff
      {
        \set Staff.instrumentName = "Bassoon I"
        \set Staff.shortInstrumentName = "Bsn."
        \bassoon
      }
    >>
    \new StaffGroup
    <<
      \new Staff
      \with { \override RestCollision #'positioning-done = #merge-rests-on-positioning }
      {
        \set Staff.instrumentName = "Horns I,II"
        \set Staff.shortInstrumentName = "Hn.I,II"
        <<
          \new Voice
          {
            \voiceOne
            \dynamicUp
            \revert MultiMeasureRest #'staff-position
            \hornOne
          }
          \new Voice
          {
            \voiceTwo
            \dynamicDown
            \revert MultiMeasureRest #'staff-position
            \hornTwo
          }
        >>
      }
      \new Staff
      \with { \override RestCollision #'positioning-done = #merge-rests-on-positioning }
      {
        \set Staff.instrumentName = "Trumpets I,II"
        \set Staff.shortInstrumentName = "Tpt.I,II"
        <<
          \new Voice
          {
            \voiceOne
            \dynamicUp
            \revert MultiMeasureRest #'staff-position
            \trumpetOne
          }
          \new Voice
          {
            \voiceTwo
            \dynamicDown
            \revert MultiMeasureRest #'staff-position
            \trumpetTwo
          }
        >>
      }
      \new Staff
      {
        \set Staff.instrumentName = "Trombone"
        \set Staff.shortInstrumentName = "Tb."
        \trombone
      }
      \new Staff
      {
        \set Staff.instrumentName = "Bass Trombone"
        \set Staff.shortInstrumentName = "B.Tb."
        \bassTrombone
      }
    >>
    \new StaffGroup
    <<
      \new Staff
      {
        \set Staff.instrumentName = "Timpani G,C,D"
        \set Staff.shortInstrumentName = "Timp."
        \timpani
      }
      \new RhythmicStaff
      {
        \set Staff.instrumentName = "Cymbals"
        \set Staff.shortInstrumentName = "Cym."
        \cymbals
      }
      \new RhythmicStaff
      {
        \set Staff.instrumentName = "Bass Drum"
        \set Staff.shortInstrumentName = "Bd."
        \bassDrum
      }
    >>
    \new StaffGroup
    <<
      \new Staff
      {
        \set Staff.instrumentName = "Bells"
        \set Staff.shortInstrumentName = "Be."
        \bells
      }
      \new Staff
      {
        \set Staff.instrumentName = "Xylophone"
        \set Staff.shortInstrumentName = "Xy."
        \xylophone
      }
    >>
    \new StaffGroup
    <<
      \new GrandStaff
      <<
        \new Staff
        {
          \set Staff.instrumentName = "Violin I"
          \set Staff.shortInstrumentName = "Vln.I"
          \violinOne
        }
        \new Staff
        {
          \set Staff.instrumentName = "Violin II"
          \set Staff.shortInstrumentName = "Vln.II"
          \violinTwo
        }
      >>
      \new Staff
      {
        \set Staff.instrumentName = "Viola"
        \set Staff.shortInstrumentName = "Vla."
        \viola
      }
      \new Staff
      {
        \set Staff.instrumentName = "Cello"
        \set Staff.shortInstrumentName = "Vcl."
        \cello
      }
      \new Staff
      {
        \set Staff.instrumentName = "Bass"
        \set Staff.shortInstrumentName = "Cb."
        << \bass \outline >>
      }
    >>
  >>
}

\score
{
  <<
    \new Staff
    {
      \set Staff.midiInstrument = "flute"
      << \piccolo \fluteOne \fluteTwo >>
    }
    \new Staff
    {
      \set Staff.midiInstrument = "oboe"
      << \oboe \englishHorn \fluteTwo >>
    }
    \new Staff
    {
      \set Staff.midiInstrument = "clarinet"
      << \clarinetOne \clarinetTwo \bassClarinet >>
    }
    \new Staff
    {
      \set Staff.midiInstrument = "bassoon"
      \bassoon
    }
    \new Staff
    {
      \set Staff.midiInstrument = "french horn"
      << \hornOne \hornTwo >>
    }
    \new Staff
    {
      \set Staff.midiInstrument = "trumpet"
      << \trumpetOne \trumpetTwo >>
    }
    \new Staff
    {
      \set Staff.midiInstrument = "trombone"
      << \trombone \bassTrombone >>
    }
    \new Staff
    {
      \set Staff.midiInstrument = "timpani"
      \timpani
    }
    \new Staff
    {
      \set Staff.midiInstrument = "string ensemble 1"
      << \violinOne \violinTwo \viola \cello \bass \outline >>
    }
  >>
  \midi{}
}
