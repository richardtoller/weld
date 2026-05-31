\version "2.16.0"
\include "/home/richard/Dropbox/tunes/polkas/dashingwhitesergeant.ly"
\include "/home/richard/Dropbox/tunes/polkas/myloveshesbutalassieyet.ly"
\header { 
    copyright = ""
    subtitle = "  "
    title = \markup {
      \override #'(font-size . 4)
      \override #'(font-name . "URW Palladio L")
      "Dashing White Sergeant, My Love She's But a Lassie Yet"
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
    markup-system-spacing =
      #'((basic-distance . 9)
         (padding . 0.5)
         (stretchability . 30)) 
    system-system-spacing =
      #'((basic-distance . 8)
         (minimum-distance . 4)
         (padding . 3)
         (stretchability . 60)) % defaults: 12, 8, 1, 60
}
\score {
    <<
        \new ChordNames {
            %%\set chordChanges = ##t
            \override ChordName .font-size = #-1
            \dashingwhitesergeantchords
        }
        \new Staff \dashingwhitesergeantmelody
    >>
    \layout {
        \context {
            \Score
            \remove "Bar_number_engraver"
            \override StaffGrouper.staff-staff-spacing.basic-distance = #1
        }
    }
    \header {
        piece = \markup { \fontsize #1 \dashingwhitesergeanttitle }
    }
}
\markup { \raise #4 \italic { \dashingwhitesergeantsourcetext}}
\score {
    <<
        \new ChordNames {
            %%\set chordChanges = ##t
            \override ChordName .font-size = #-1
            \myloveshesbutalassieyetchords
        }
        \new Staff \myloveshesbutalassieyetmelody
    >>
    \layout {
        \context {
            \Score
            \remove "Bar_number_engraver"
            \override StaffGrouper.staff-staff-spacing.basic-distance = #1
        }
    }
    \header {
        piece = \markup { \fontsize #1 \myloveshesbutalassieyettitle }
    }
}
\markup { \raise #4 \italic { \myloveshesbutalassieyetsourcetext}}
