% https://nhs.io/sonicpi/


#(set-default-paper-size "a5" )

\version "2.14.2"

\layout {
    % remove indent on first stave
    indent = 0
}

\header {
    title    = "Mocking Bird"
    composer = ""
    tagline  = ""
}

{
    % add bar numbers at the start of each bar
    \override Score.BarNumber #'break-visibility = #'#(#f #t #t)
    \set Score.currentBarNumber = #1

    \time 4/4
    \clef treble

    \relative c' {
        d^\markup{\tiny D} b'8^\markup{\tiny B} b8 b4 b4
        b4 a8^\markup{\tiny A} a8 a2
        d,8 d8 a'8 a8 a4 a8 b8
        a4 g4 g2^\markup{\tiny G}
        d4 b'4 b4 b4
        b4 a4 a2
        d,8 d8 a'8 a8 a4 a8 b8
        a4 g4 g2
    }

    \addlyrics {
        \set fontSize = #-3

        Hush4 lit-8 tle8 ba4 by4
        don't4 say8 a8 word,2
        Mam8 my's8 going8 to8 buy4 you8 a8
        mock4 ing4 bird2

        If4 that4 mock4 ing4
        bird4 won't4 sing2
        Mam8 my's8 going8 to8 buy4 you8 a8
        dia mond4 ring2
    }
}
