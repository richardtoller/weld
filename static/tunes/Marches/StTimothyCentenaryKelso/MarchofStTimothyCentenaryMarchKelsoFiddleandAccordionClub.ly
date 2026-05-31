\version "2.16.0"
\include "/home/richard/Dropbox/tunes/marches/marchofsttimothy.ly"
\include "/home/richard/Dropbox/tunes/marches/centenarymarch.ly"
\include "/home/richard/Dropbox/tunes/marches/kelsofiddle.ly"
\header { 
    copyright = ""
    subtitle = "  "
    title = \markup {
      \override #'(font-size . 4)
      \override #'(font-name . "URW Palladio L")
      "March of St Timothy, Centenary March, Kelso Fiddle and Accordion Club"
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
            \marchofsttimothychords
        }
        \new Staff \marchofsttimothymelody
    >>
    \layout {
        \context {
            \Score
            \remove "Bar_number_engraver"
            \override StaffGrouper.staff-staff-spacing.basic-distance = #1
        }
    }
    \header {
        piece = \markup { \fontsize #1 \marchofsttimothytitle }
    }
}
\markup { \raise #4 \italic { \marchofsttimothysourcetext}}
\score {
    <<
        \new ChordNames {
            %%\set chordChanges = ##t
            \override ChordName .font-size = #-1
            \centenarymarchchords
        }
        \new Staff \centenarymarchmelody
    >>
    \layout {
        \context {
            \Score
            \remove "Bar_number_engraver"
            \override StaffGrouper.staff-staff-spacing.basic-distance = #1
        }
    }
    \header {
        piece = \markup { \fontsize #1 \centenarymarchtitle }
    }
}
\markup { \raise #4 \italic { \centenarymarchsourcetext}}
\score {
    <<
        \new ChordNames {
            %%\set chordChanges = ##t
            \override ChordName .font-size = #-1
            \kelsofiddlechords
        }
        \new Staff \kelsofiddlemelody
    >>
    \layout {
        \context {
            \Score
            \remove "Bar_number_engraver"
            \override StaffGrouper.staff-staff-spacing.basic-distance = #1
        }
    }
    \header {
        piece = \markup { \fontsize #1 \kelsofiddletitle }
    }
}
\markup { \raise #4 \italic { \kelsofiddlesourcetext}}
