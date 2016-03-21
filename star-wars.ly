% Star Wars
% https://nhs.io/sonicpi/


#(set-default-paper-size "a5" )

\version "2.14.2"

\layout {
    % remove indent on first stave
    indent = 0
}

\header {
    title    = "Star Wars"
    composer = "John Williams"
    tagline  = "Scotby School"
}

{
    \time 4/4

    <<
    \new Staff {
        % add bar numbers at the start of each bar
        %\override Score.BarNumber #'break-visibility = #'#(#f #t #t)
        %\set Score.currentBarNumber = #1

        \clef treble
        \partial 4. r4. |

        \repeat volta 2 {
            \relative c'' {
                r2 g2^\markup {\tiny 67} |
                f8^\markup {\tiny 65} e_\markup {\tiny 64} d^\markup {\tiny 62} c'4._\markup {\tiny 72} g4^\markup {\tiny 67} |
                f8 e d c'4. g4 |
                f8 e f d2 r8 |
            }
        }
    }

    \new Staff {
        \clef bass
        \partial 4. g8_\markup {\tiny 55} g g |

        \repeat volta 2 {
            \relative c' {
                c2_\markup {\tiny 60} r2 |
                <c a>2_\markup {\tiny ch1}
                <c g>2_\markup {\tiny ch2}  |
                <c a>2
                <c g>2 |
                bes4_\markup {\tiny 58} <bis g>2_\markup {\tiny ch3} g8 g |
            }
        }
    }
  >>
}
