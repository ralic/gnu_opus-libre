\language "italiano"

\header {
  title = "L’escargoéland"
  poet = "Olivier Salon"
  composer = "Valentin Villenave"
  copyright = \markup {
    © et \translate #'(1.5 . 0) \scale #'(-1 . 1) ©
    V. Villenave, 2012. Licence Art Libre
  }
}

voix =
\relative do' {
  \time 5/4
  \tempo Adagietto
  \dynamicUp
  \phrasingSlurDashed
  r4 mi8\mf mi mi mi mi4 r
  r8 mi mi mi r mi r mi^- r4
  mi8^.\< mi^. r4 mi r8 mi mi4^-\!
  r r8 mi^\(\> mi mi mi mi\)\! r4
  r mi8^-\mf mi^- mi^- mi^- mi4^- r
  mi8^-^> mi^- r mi r mi r4 mi^-
  r8 mi^\(\mp mi mi mi mi\) r2
  mi8^-\> mi^- mi4^- mi^-\! r8 mi^. r4 \bar "|."
}

texte =
\lyricmode {
  A -- vec ses deux ailes
  qui traî -- nent à terre
  co -- mme dez hal -- tères
  au bout de bre -- telles,
  l’es -- car -- go -- é -- land
  ja -- mais ne se presse_:
  il sait que sans cesse
  l’es -- car -- go -- é -- land.
}

piano = <<
  \new Staff = "haut" \relative do' {
    \stemUp mi2^(\pp fa \stemNeutral sol4
    si2) <fa sol>4-- si4.--\p <fa sol>8(
    <la si>4) <fa sol>8( <si do>) r <sol la>(
    <do re>4--) <do re>8^(-. <fa, sol>-.
    <do' re>-. <fa, sol>-.)
    << {\voiceOne re'2--^( do4 si la2.)\> si2--\!} \\
    {\voiceTwo do4 si la sol8_( fa) sol2 fa2.--} >>
    <fa si sol'>2\ppp( <sol si fa'>4 <fa si sol'>2)
    << {\voiceOne sol'4( fa) do( si8 la sol4)} \\
    {\voiceTwo fa2-- fa2.--} >>
    si4.( la8)~ la2.
  }
  \new Staff = "bas" \relative do' {
    \clef bass
    \set followVoice = ##t
    \change Staff = "haut"
    \stemDown mi2 re_( \stemNeutral
    \change Staff = "bas" do4
    la2) <do re>4-- la4.-- <do re>8(
    <la si>4) <do re>8( <la si>) r <si do>(
    <sol la>4--)^\< <fa sol>8(-. <do' re>-.
    <fa, sol>-. <do' re>-.)^\!
    << {\voiceTwo fa,2--_( sol4 la si2.) la2--} \\
    {\voiceOne sol4 la si do8^ ( re) do2 re2.--} >>
    <do, la' re>2( <re la' do>4 <do la' re>2)
    << {\voiceTwo do4( re) sol(^\> la8 si do4)^\!} \\
    {\voiceOne re2-- re2.--} >>
    la4.( si8)~ si2.
  }
>>

\score {
<<
  \new Staff \new Voice = "voix" \voix
  \new Lyrics \lyricsto "voix" \texte
  \new PianoStaff \piano
>>
}
