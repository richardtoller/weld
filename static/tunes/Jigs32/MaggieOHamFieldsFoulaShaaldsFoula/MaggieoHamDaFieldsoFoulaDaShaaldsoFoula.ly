\version "2.16.0"
\include "/home/richard/Dropbox/tunes/jigs/maggieoham.ly"
\include "/home/richard/Dropbox/tunes/jigs/shaaldsofoula.ly"
\include "/home/richard/Dropbox/tunes/jigs/fieldsofoula.ly"
\header { 
    copyright = ""
    subtitle = "  "
    title = \markup {
      \override #'(font-size . 4)
      \override #'(font-name . "URW Palladio L")
      "Maggie o'Ham, Da Fields o' Foula, Da Shaalds o' Foula"
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
            \maggieohamchords
        }
        \new Staff \maggieohammelody
    >>
    \layout {
        \context {
            \Score
            \remove "Bar_number_engraver"
            \override StaffGrouper.staff-staff-spacing.basic-distance = #1
        }
    }
    \header {
        piece = \markup { \fontsize #1 \maggieohamtitle }
        opus = \markup { \with-color #(rgb-color 0.4 0.4 0.4)  \fontsize #0.1 \maggieohamnotes }
    }
}
\markup { \raise #4 \italic { \maggieohamsourcetext}}
\score {
    <<
        \new ChordNames {
            %%\set chordChanges = ##t
            \override ChordName .font-size = #-1
            \shaaldsofoulachords
        }
        \new Staff \shaaldsofoulamelody
    >>
    \layout {
        \context {
            \Score
            \remove "Bar_number_engraver"
            \override StaffGrouper.staff-staff-spacing.basic-distance = #1
        }
    }
    \header {
        piece = \markup { \fontsize #1 \shaaldsofoulatitle }
        opus = \markup { \with-color #(rgb-color 0.4 0.4 0.4) "guitar: "
          \general-align #Y #DOWN {
          \epsfile #X #5 #"non-triplet.eps"
          }
        }    }
}
\markup { \raise #4 \italic { \shaaldsofoulasourcetext}}
\score {
    <<
        \new ChordNames {
            %%\set chordChanges = ##t
            \override ChordName .font-size = #-1
            \fieldsofoulachords
        }
        \new Staff \fieldsofoulamelody
    >>
    \layout {
        \context {
            \Score
            \remove "Bar_number_engraver"
            \override StaffGrouper.staff-staff-spacing.basic-distance = #1
        }
    }
    \header {
        piece = \markup { \fontsize #1 \fieldsofoulatitle }
        opus = \markup { \fontsize #0.1 \fieldsofoulanotes }
        
        opus = \markup { \with-color #(rgb-color 0.4 0.4 0.4) "guitar: "
          \general-align #Y #DOWN {
          \epsfile #X #5 #"triplet.eps"
          }
        }
    }
}
\markup { \raise #4 \italic { \fieldsofoulasourcetext}}
