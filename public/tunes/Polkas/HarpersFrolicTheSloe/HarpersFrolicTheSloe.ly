\version "2.16.0"
\include "/home/richard/Dropbox/tunes/polkas/harpersfrolic.ly"
\include "/home/richard/Dropbox/tunes/polkas/thesloe.ly"
\header { 
    copyright = ""
    subtitle = "  "
    title = \markup {
      \override #'(font-size . 4)
      \override #'(font-name . "URW Palladio L")
      "Harpers Frolic, The Sloe"
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
            \set chordChanges = ##t
            \override ChordName .font-size = #-1
            \harpersfrolicchords
        }
        \new Staff \harpersfrolicmelody
    >>
    \layout {
        \context {
            \Score
            \remove "Bar_number_engraver"
            \override StaffGrouper.staff-staff-spacing.basic-distance = #1
        }
    }
    \header {
        piece = \markup { \fontsize #1 \harpersfrolictitle }
    }
}
\markup { \raise #4 \italic { \harpersfrolicsourcetext}}
\score {
    <<
        \new ChordNames {
            \set chordChanges = ##t
            \override ChordName .font-size = #-1
            \thesloechords
        }
        \new Staff \thesloemelody
    >>
    \layout {
        \context {
            \Score
            \remove "Bar_number_engraver"
            \override StaffGrouper.staff-staff-spacing.basic-distance = #1
        }
    }
    \header {
        piece = \markup { \fontsize #1 \thesloetitle }
    }
}
\markup { \raise #4 \italic { \thesloesourcetext}}
