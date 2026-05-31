\version "2.16.0"
\include "../../../hornpipes/portobello.ly"
\include "../../../hornpipes/gloucesterhornpipe.ly"
\header { 
    copyright = ""
    subtitle = "  "
    title = \markup {
      \override #'(font-size . 4)
      \override #'(font-name . "URW Palladio L")
      "Portobello, Gloucester Hornpipe"
      }
    tagline = ""
}
#(set-global-staff-size 18)
\paper { 
    left-margin = 20
    right-margin = 20
    top-margin = 15
    raggedlastbottom = ##t
    indent = 0.0
    system-system-spacing =
      #'((basic-distance . 8)
         (minimum-distance . 4)
         (padding . 2)
         (stretchability . 60)) % defaults: 12, 8, 1, 60
}
\score {
    <<
        \new ChordNames {
            %%\set chordChanges = ##t
            \override ChordName .font-size = #-1
            \portobellochords
        }
        \new Staff \portobellomelody
    >>
    \layout {
        \context {
            \Score
            \remove "Bar_number_engraver"
            \override StaffGrouper.staff-staff-spacing.basic-distance = #1
        }
    }
    \header {
        piece = \markup { \fontsize #1 \portobellotitle }
    }
}
\markup { \raise #4 \italic { \portobellosourcetext}}
\score {
    <<
        \new ChordNames {
            %%\set chordChanges = ##t
            \override ChordName .font-size = #-1
            \gloucesterhornpipechords
        }
        \new Staff \gloucesterhornpipemelody
    >>
    \layout {
        \context {
            \Score
            \remove "Bar_number_engraver"
            \override StaffGrouper.staff-staff-spacing.basic-distance = #1
        }
    }
    \header {
        piece = \markup { \fontsize #1 \gloucesterhornpipetitle }
    }
}
\markup { \raise #4 \italic { \gloucesterhornpipesourcetext}}
