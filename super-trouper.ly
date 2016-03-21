% Star Wars
% https://nhs.io/sonicpi/


#(set-default-paper-size "a5" )

\version "2.14.2"

\layout {
    % remove indent on first stave
    indent = 0
}

\header {
    title    = "Super Trouper"
    composer = "Benny Andersson / Björn Ulvaeus"
    tagline  = "Scotby School"
}

{
    % add bar numbers at the start of each bar
    \override Score.BarNumber #'break-visibility = #'#(#f #t #t)
    \set Score.currentBarNumber = #1

    \time 4/4
    \clef treble

    \relative c'' {
        g8_\markup{\tiny G} c_\markup {\tiny C} d_\markup {\tiny D} e_\markup {\tiny E} d_\markup {\tiny D} c_\markup {\tiny C} d_\markup {\tiny D} e_\markup {\tiny E} |
        g2._\markup{\tiny G} g8 g |
        g f_\markup{\tiny F} f4 f g_\markup{\tiny G} |
        e2_\markup{\tiny E} d_\markup{\tiny D} |
    }

    \relative c'' {
        g8_\markup{\tiny G} c_\markup {\tiny C} d_\markup {\tiny D} e_\markup {\tiny E} d_\markup {\tiny D} c_\markup {\tiny C} d_\markup {\tiny D} e_\markup {\tiny E} |
        g2._\markup{\tiny G} g8 g |
        g f_\markup{\tiny F} f4 f g_\markup{\tiny G} |
        e2_\markup{\tiny E} d_\markup{\tiny D} |
    }

    \relative c'' {
        r4  a8_\markup{\tiny A} c_\markup{\tiny C} c a_\markup{\tiny A} a g_\markup{\tiny G} |
        g_\markup{\tiny G} c_\markup{\tiny C} c g_\markup{\tiny G} b_\markup{\tiny B} c_\markup{\tiny C}( c4) |
        r4  a8_\markup{\tiny A} c_\markup{\tiny C} c a_\markup{\tiny A} a g_\markup{\tiny G} |
        g2_\markup{\tiny G} r2 |
        r4  a8_\markup{\tiny A} c_\markup{\tiny C} c a_\markup{\tiny A} a g_\markup{\tiny G} |
        g_\markup{\tiny G} c_\markup{\tiny C} d_\markup{\tiny D} e_\markup{\tiny E} d_\markup{\tiny D} c_\markup{\tiny C} d_\markup{\tiny D} e_\markup{\tiny E} |
        g1_\markup{\tiny G}( | g2)
    }

    \relative c'' {
        r8 g8 c e |

        \repeat volta 2 {
            g4 g f f | e8 d e f e4 d | f f e e | d2. r4 |
            f4 f e e | d2. r4 | d8 c d e d4 c | c2 r8 g8 c e |
            g4 g f f | e8 d e f e4 d | f f e e | d2. r4 |
            f4 f e e | d2. r8 d8 | d c d e d4 c | c2 r8 g8 c e |
        }

        c1^"Second time" |
    }
}
