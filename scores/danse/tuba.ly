%-- Danse -- tuba.ly ----------------------------------------------%
% (c) 2009 - 2012 Valentin Villenave <valentin@villenave.net>

\language "italiano"

Titre = "Danses kàla"
UnTitre = "La première."
DeuxTitre = "La deuxième."
TroisTitre = "La troisième."
QuatreTitre = "La quatrième."
TubaInstr = \markup \center-column {
  "Tuba"
  \line {(en Si \concat {\flat )}}
}
PianoInstr = "Piano"

\header {
  title = \Titre
  subtitle = "pour tuba et piano"
  composer = "Valentin Villenave"
  date = "printemps 2009 - automne 2012"
}

#(set-global-staff-size 18)
\paper {
  first-page-number = #-1
%  min-systems-per-page = #4
}

\pointAndClickOff
\pageBreak
\markup \fill-page {
  ""
  \fill-line {
    ""
    \right-column \italic {
      "Pour Camille, Cécilia, Raphaël et Clément,"
      "ainsi que pour la classe de Claude Lherminier."
    }
  }
  ""
  \fill-line {
    \override #'(box-padding . 6)
    \box \center-column {
      \line {
        Copyright & copyleft © Valentin Villenave, 2009-2011.
      }
      \line {
        \with-url #"http://valentin.villenave.net"
        \typewriter http://valentin.villenave.net
      }
      \vspace #.5
      \override #'(line-width . 100)
      \justify {
        Cette partition est publiée suivant les termes de la licence
        \with-url #"http://artlibre.org/licence/lal"
        \bold { Art Libre }
        \concat { ( \with-url #"http://artlibre.org" \typewriter http://artlibre.org ).}
        Vous pouvez la copier, la modifier et la jouer \italic librement
        sans contrevenir au droit d'auteur, à  condition de respecter les
        termes de la licence (notamment en veillant à  mentionner le nom
        de l’auteur et l’adresse web d’origine).
      }
      \vspace #.5
      \line {
        Gravure réalisée au moyen du logiciel libre
        \with-url #"http://www.LilyPond.org"
        \concat {\bold "GNU LilyPond" ,}
        \concat { $(string-append "version " (lilypond-version) ".") } 
      }
    }
  }
}
\pageBreak

UnMesures = {
  \tempo Deciso 2 = 84 ~ 92
  \time 2/2 s1*42 \bar "||"
  \tempo Sostenuto
  s1
  \time 7/8 s1*7/8
  \time 2/2 s1
  \time 7/8 s1*7/8
  \time 5/8 s1*5/8
  \time 3/2 s1.
  \time 2/2 s1
  \time 7/8 s1*7/8
  \time 2/2 s1
  \time 7/8 s1*7/8
  \time 5/8 s1*5/4
  \time 7/8 s1*7/8
  \time 2/2 s1
  \time 7/8 s1*7/8
  \time 2/2 s1
  \time 7/8 s1*7/8
  \time 5/8 s1*5/8
  \time 2/2 s1
  \time 7/8 s1*7/8
  \time 2/2 s1
  \time 5/8 s1*5/2
  \time 7/8 s1*7/8
  \time 5/8 s1*5/8
  \time 7/8 s1*7/8
  \time 2/2 s1
  \time 7/8 s1*7/8
  \time 2/2 s1
  \time 7/8 s1*7/8
  \time 5/8 s1*5/2
  \time 2/2 s1
  \time 7/8 s1*7/8
  \time 2/2 s1
  \time 7/8 s1*7/8
  \time 5/8 s1*5/2
  \time 7/8 s1*7/8
  \time 3/2 s1.
  \time 5/8 s1*5/4
  \time 7/8 s1*7/8
  \time 3/2 s1. \bar "||"
  \tempo "Poco allargando"
  \time 2/2 s1*24 \bar "||"
  \tempo "Tempo I"
  s1
  \time 7/8 s1*7/8
  \time 2/2 s1
  \time 7/8 s1*7/8
  \time 2/2 s1
  \time 7/8 s1*7/8
  \time 2/2 s1
  \time 7/8 s1*7/4
  \time 5/8 s1*5/8 \bar "||"
  \time 2/2 s1*21 \bar "||"
  s1*21 \bar "||"
  s1
  \time 7/8 s1*7/8
  \time 2/2 s1
  \time 7/8 s1*7/4
  \bar "|."
}

QuatreMesures = {
  \time 2/2 s1*2
  \time 3/2 s1.
  \time 2/2 s1*2
  \time 3/2 s1.
  \time 2/2 s1*2
  \time 3/2 s1.*2
  \time 2/2 s1*2
  \time 3/2 s1.
  \time 2/2 s1*2
  \time 3/2 s1.
  \time 2/2 s1*3
  \time 3/2 s1.
  \time 2/2 s1 \bar "||"
  \time 3/4 s2.*27 \bar "||"
  \time 2/2 s1
  \time 3/4 s2.*2
  \time 2/2 s1*2
  \time 3/4 s2.
  \time 2/4 s2
  \time 3/4 s2.
  \time 2/4 s2
  \time 3/4 s2.
  \time 2/2 s1*2
  \time 3/4 s2.*2
  \time 2/2 s1 \bar "||"
  s1*16 \bar "||"
  s1
  \time 3/2 s1.
  \time 2/2 s1
  \time 3/2 s1.
  \time 2/2 s1*2
  \time 3/2 s1.
  \time 2/2 s1*2
  \time 3/2 s1.
  \time 2/2 s1*4
  \time 3/2 s1.
  \time 2/2 s1*2
  \time 3/2 s1.
  \time 2/2 s1*2
  \time 3/2 s1. \bar "|."
}

UnTuba =
 %% Transpose
 \smart \transpose do re
\relative do' {
  \clef bass
  R1*2
  fa,8-\dyn "f,_franc"\< ^"détaché" sib do fa4\!-- mi-- sib8( |
  do4) \breathe fa,8\< sib do fa[(\! fa,]) mi'[(|
  fa mi]) sib( do) solb2~-- |
  solb4 r r2 |
  R1*3
  fa8\< sib do fa4--\! mi-- sib8 (|
  do4) \breathe mib8( reb la) do[( sib solb]) |
  la(\< sol re) mib[ do] si4.\sf--~ |
  si2. r4 |
  r2 r8 mib\mf( fa solb) |
  lab4-- r8 la,( si do) re4-- |
  r solb,8(\mp lab) r2 |
  fa'8\< sib do fa4--\f mi-- sib8( |
  do4) \breathe fa,8 sib do fa[( fa,) sib] |
  mi( fa mi) sib[\< do] re mi fa | solb2.--\! r4 |
  R1*3
  r8 fa,\< si! do solb'4\!-- mib,8[\< sib' |
  si] solb'4--\! dod,,8[\>( re)] la'( sib) fa'( |
  solb1~)-\dyn "mp,_ten." solb2. r4 |
  r2 do,4.(\p re8~ |
  re4 la) r8 si4(\< do8) |
  re4.(\! mi8)~ mi4 si8(\> fa\!)~ |
  fa4. r8 fa[(\> mi re mi |
  la,] si2..)~-\dyn "p,_ten." |
  si4 r r2 |
  r4 solb'(-\dyn "pp_soutenu" dob reb |
  solb2. fa4)~ |
  fa r solb,( dob |
  reb) solb,,(\< reb' dob' |
  solb'2)--\p r8 fab,( dob'4) |
  solb'4.-- mib,8\< lab reb solb4--\!~ |
  solb8( do,) r4 do,8^"(détaché)"\mp\cresc mi lab mib |
  sol si fad re'-> sib fa dod la' |
  sib( dod,) re'[\<-- mi-- fa]-- fad4.--\startTrillSpan |

  sol!4->--\sf\stopTrillSpan r r2 |
  R1*7/8 R1 R1*7/8 R1*5/8 R1.
  mib,4->\mp ^"incisif" r8 mib-> r4 mib-> |
  r la8\sf\>( sol) fa( sol reb) |
  mib4\!-> r8 mib-> r4 mib-> |
  r la8\>( sol) fa( sol reb) |
  mib-.\! r solb(\mf fa mi) |
  solb4-- mi8( re do) |
  mib4-- dod8(\> si) la( si fa) |
  sol4->\! r r2 |
  si8\mp(\< re) fa lab4--\! r | R1
  fa,8( sib) re solb4-- r |
  fa8(\sf\> mib) reb( mib la,) |
  si4->\mf r8 si-> r4 si-> |
  r mi8(\> re) do( re la) |
  si4->\! r8 si-> r4 si-> |
  r mib8( reb do) |
  re4-- reb8( dob sib) |
  do4--^"scherzando" fad8(\< sol lab) |
  si,-.\! r sib( la lab) |
  mi'4--\< fa--\! fa,8( fad sol) |
  red'4-- red,8( mi fa) |
  re' r dod\sf( si) la( si fa) |
  sol4->\f sol'-- sol,8-. sol'-> r sol,-. |
  r4 dod'8\>( si la si fa) |
  sol4->\! sol,8 sol'-> r sol,-. r sol''-> |
  r4 dod,8(\> si la si fa)\! |
  fad(\> mi re mi sib)\! |
  si(\> la sol la fa)\! |
  mi4-- sol-- r8 |
  red4-- fad-- r8 |
  re''8[(\mf do) sib do mib,] fa( lab sib) |
  mib( re) do re fad,( la si) |
  mi[( re) do re lab] sib( fa) sib |
  fa sib,( fa' sib) fa(\< sib) do |
  fa4\f-- mi-- sib8( |
  do4) \breathe fa,8\< sib do |
  fa4\!-- mi8( fa mi) |
  sib4-- do-- fa,8( |
  sol4)\breathe sol8( fa) mib( fa si,) |
  dod4-> r8 dod-> r4 dod-> r2 |
  R1*5/8
  mi'8(\f re do re lab) sol( fa mib[ fa dob)] sib4-- |
  la8(-\dyn "f_sempre" sol fad) lab4-- sol8( fa mi) fad4-- r |

  do1~^"ten." do2. r4 |
  R1*4
  r4 solb''(-\dyn "p_espr." dob reb~ |
  reb solb2.) |
  fa2( mib4 reb |
  mib\> sib2.)\! |
  sol1--^"ten."~ sol2. r4 |
  R1*2
  r2 sib2--\pp~ |
  sib4( fa\< sib do! |
  fa2.)~-\dyn "p,_dolce" \t {fa8( mi fa)} |
  mi2( re4 do~ |
  do4.\> re8\!)~^"ten." re2~ re2. r4 |
  r2 r4 re,--(\< |
  mi-- fa-- sol2\!-- |
  lab4--\mp sol-- fa-- sol-- |
  mib!2--) fad--~ | fad2. r4 |
  r4 fad8(\p\>^"léger" mi) re( mi sib) |
  sol4\!-- r r2 |
  r4 fad'8(-> mi) re( mi sib) |
  sol( sib) reb( do mib) fad( mi la) |
  si(\< re) fa2--~\mf fa8~ |
  fa fa,\< sib do fa2--\!~ |
  fa4 r r r8 |
  solb,,( sib) re( dod) fa( la lab) |
  sib( lab solb) lab( mib) |

  mi\< si' do sol'--\f^"(ten.)"~ sol2~ sol2. r4 |
  r2 mib,4\pp( sib' do sol'2.)~ sol2. r4 |
  mi,,4.(^"dolce" fa8)~ fa2~ |
  fa4 r fa( do' sol'2.)\breathe fa,4~ |
  fa2( sol)~^"ten." sol2. r4 |
  r8 sol'-\dyn "ff_sub." do re sol2->--~ sol2. r4 |
  sol,,8\p do re sol4-- re,8(\> sol) do | sol'2.\! r4 |
  r2 r4 re,(-- |
  mi-- r8 fa-- r4 sol--)~ |
  sol2. r4 |
  fa2.-- r4 |
  mi4.--\cresc fa8--~ fa mi( fa sol) |
  la4.-- sol8( la sib) do4--\!~ |
  do r mib,!2\f-- |

  <fa~ \parenthesize fa,>1--^"ten."\sf fa2. r4 |
  R1 r2 solb4.-- -\dyn "f,_en dehors" lab8--~ |
  lab4 mib-- r8 fa4->\< solb8-. |
  lab4->--\! solb8^"détaché" fa mib fa sib, do--\sf~ |
  do2. r4 | R1*2
  r8 mib\< fa solb lab4--\f solb8 fa |
  mib\< fa sib do--\!~ do2 |
  do,8\<^"(toujours détaché)" fa sib do--\!~ do4 mib,8[\< sib' |
  mib] fa4--\! sib,8[\< do fa] sib4--\! \breathe |

  fa8-\dyn "f_très franc" sib do fa4-- mi-- sib8-. |
  do4-- r r2 |
  fa,8\< sib do fa[\!( fa,]) mi'( fa mi) |
  sib( do) solb2.--~ solb4 solb(\p dob reb |
  solb2.) sol,4(\> | do! re! sol2)\! |
  solb8-\dyn "f_sub." reb dob solb4-- lab-- mib8-. |
  fa4-> r r2 |
  r4 lab,8(->\> solb) fab( solb do,)\! |
  re4-. la'8^"détaché" re sol,\cresc re' sol do, |
  sol' do fa, do' fa sib, mib |
  fa,\< sib do fa4->\! r |
}

DeuxTuba =
 %% Transpose
 \smart \transpose do re
 \relative do' {
  \clef bass
  \time 4/4
  fa,,8. la16 r4 solb8. lab16 r4 |
  \time 3/4
  r8 fa r la r16 solb8 lab16 |
  \time 2/4
  R2
  \time 4/4
  fa8. la16 r4 solb8. lab16 r4 |
  \time 3/4
  r8 fa r16 la8 solb16 r8 lab |
  \time 2/4
  R2
  \time 4/4
  fa8. la16 r16 mib' reb8 solb,8. lab16 r mi'8 do16 |
  fa,8 la r16 mib'8 reb16 solb, lab mi' do sib re si sol |
  fa8. la16 r4 solb8 lab mib'16 reb mi do |
  fa,8. la16 r mib' reb8 solb, lab r16 mi'8 do16 |
  fa,8. la16 r mib' reb8~ reb16 solb, lab mi'~ mi8 do |
  fa,8 la dod16 si8. solb8 lab r16 re8 sib16 |
  re' fad red si~ si do sib8 la16 dod sold mi~ mi8 fa16 sol |
  red'16 fad re si~ si fa8 sol16 sold mi la dod~ dod do sib8 |
  re16 fad red si~ si sol \t {la sib do} mi sold mi dod~ dod4 |
  r16 dod,, \t {sol' sib mi}
  \tttt {fa la sold do si mib re} fad4 sold8 mid |
  la4. r16 la~ la2~ | la8 r r4 r2 |
  \stemUp \xNote la,4^"(snap)" \xNote la \stemNeutral
  r16 fa, fa fa fa fa fa fa |
  r4 \stemUp \xNote la'4 \stemNeutral r8 si,16 si si si si si |
  r lab lab lab lab lab mi' mi mi mi r8 r dod16 dod |
  dod4 r8 sol'16 sol mib fad fad8 do16 do do do |
  r4 la16 la la la la la la la r4 |
  r16 sib' sib sib sib sib sib sib sib sib sib sib sib8 r16 re, |
  \time 3/4
  re re re re re re re re re re re re |
  \time 4/4
  sib' re si sol~ sol4 r8 mib16 reb r mi do8 |
  sib'16 re si sol~ sol4. r8 mib16 reb mi do |
  mib' sol mi do~ do4 r8
  \stemUp \xNote la \stemNeutral r \stemUp \xNote la \stemNeutral |
  sib8. re16~ re8 si r sol4. |
  do,,16 la' \t {sib mi fa} \tttt {lab solb la si re do red} mi4. r8 |
  \t {sold4 sol si~} si2~ si2. r4 |
  \time 3/4
  r8 do,, r16 re8 red16 r8 si |
  \time 2/4
  \stemUp \xNote la'4 \xNote la \bar "|."
}

TroisTuba =
 %% Transpose
 \smart \transpose do re
 \relative do' {
  \clef bass
  \time 3/4
  R2.*2
  mib,8 fa mib fa mib fa |
  r mib fa sib, lab' reb |
  mib, fa mib fa mib fa |
  r fa sib, mib, sol' do, |
  reb mib reb mib reb mib |
  r4 reb8 mib r sib |
  si' dod si dod si dod |
  r mib, fa sib re, mi |
  si' dod4. lab,8 sib |
  si' dod4 lab,8 \t {re, la' mi'} |
  fad si dod4 fad~ fad2 r4 |

  r2 mi,?4~ mi8 fad4. r4 |
  mib8 fa mib fa r4 |
  mib8 fa re mib do re |
  mib fa mib fa r re |
  mib si do re mib fa |
  solb lab solb lab r mi, |
  si' solb' lab mi, \t {do sol' re'} |
  la'4. si8~ si4 |
  r8 la si la si4 |
  la8 si fad, sold la' si~ |
  \t {si mib, fa} mi'4 la~ |
  la r8 la,, sib,4~ |
  sib2.~

  sib4 r2 | sol''2 r4 |
  mib8 fa r4 r8 mib |
  r fa r si,? do re |
  mib fa r4 mib8 fa |
  r sol, r re' reb mib |
  si dod r si' dod si, |
  dod' si dod4 r |
  r8 si dod sol' sol, la |
  la, sol' sol, la' r sol, |
  la sol la fad fa sol |
  mib4. fa8 mib' fa |
  mib fa mib fa mib fa |
  r4 r8 do' re,4\fermata \bar "|."
}

QuatreTuba =
 %% Transpose
 \smart \transpose do re
 \relative do' {
  \clef bass
  \t {fa8 fa fa} \t {do do do}
  \t {fa fa fa} \t {do do do} |
  \t {fa fa fa} \t {do do do}
  \t {mib mib mib} \t {sib sib sib} |
  \t {fa' fa fa} \t {do do do}
  \t {fa fa fa} \t {do do do}
  \t {mib mib mib} \t {sib mib sib} |
  fa4 r r2 | R1 R1.
  \t {fa8 sib lab} \t {sib fa mib}
  \t {fa sib, fa'} \t {mib lab sib} |
  \t {sold dod si} \t {dod sold fad}
  \t {sold dod, si} \t {dod sold' dod} |
  \t {si mi re} \t {sol fad, si}
  \t {la re sol} \t {r fa, sib}
  \t {mi reb sol} \t {r reb, lab'} |
  \t {fa' fa fa} \t {do do do}
  \t {fa fa fa} \t {do do do}
  \t {mib mib mib} \t {sib sib sib} |
  \t {fa' fa fa} \t {do do do}
  \t {fa fa fa} \t {do do do} |
  \t {fa fa fa} \t {do do do}
  \t {mib mib mib} \t {sib mib sib} |
  fa4 r r2 r4 \t {mib8 sib' mib,} |
  fa,4 r r \t {mib'8 lab fa,} |
  r2 \t {mib8 fa r} r4 |
  \t {mib'8 lab solb} \t {lab mib reb}
  \t {mib sib fa'} \t {mib sib' do}
  \t {la re do} \t {re sib, mib} |
  \t {la re do} \t {re mib, sib}
  \t {la' re do} \t {fa r sib,,} |
  \t {la' re do} \t {fa r sib,,}
  \t {la' mi re'} \t {r sib do} |
  \t {fa fa fa} \t {do do do}
  \t {fa fa fa} \t {do do do} |
  r2 \t {mib8 mib mib} \t {sib sib sib}
  r4 \t {sib8 mib sib} |
  \t {do fa do} fa,4
  \t {sib8 mib sib} \t {fa do sol} |

  reb2.~ reb2 r4 | R2.
  reb2 mib4~ mib2 r4 |
  reb'4~ \t {reb8 mib reb} mib4~ mib2 r4 |
  \t {r4 si'' fad} \t {mi8 la sol} |
  re2 r4 |
  sib'!4. fa!~ fa2.~ |
  fa8 r mib2 |
  sib'4~ \t {sib8 do sib} do4~ |
  do2 fa,4~ fa2 r4 |
  \t {r4 sib fa} \t {mib8 lab solb} |
  reb2. |
  si8 mi re la \t {dod si sold} |
  fad4. mi8 fad4~ fad2 r4 |
  mi4~ \t {mi8 fad mi} fad4~ |
  fad2 r4 |
  mi,2 fad4~ fad2 r4 |
  si,4. fad8 si fad |
  mi' si la' fad, r4 |
  \t {mi'8 la re} sol4 r |

  \t {fa'8 fa fa} \t {do do do}
  \t {fa fa fa} \t {do do do} |
  \t {mib mib mib} \t {sib sib sib} \t {mib sib mib} |
  \t {fa fa fa} \t {do do do} \t {fa do fa} |
  \t {mib mib mib} \t {sib sib sib}
  \t {mib mib mib} \t {sib mib sib} |
  fa4 r r2 |
  dod,4 sol8 dod r4 |
  \t {dod'8 fad mi} \t {fad red dod} |
  \t {red la si} \t {dod red fa} \t {sol do sib} |
  \t {do fa mib} \t {sol fa la} |
  si4 r2 |
  r4 dod,,, r8 la''16 dod r4 |
  \t {fa8 fa fa} \t {do do do}
  \t {fa fa fa} \t {do do do} |
  \t {mib mib mib} \t {sib sib sib} \t {fa' fa fa} |
  \t {do do do} \t {fa fa fa} \t {do do fa} |
  r4 \t {sib,8 mib sib} \t {fa do sol'} \t {re la mi} |

  fa,1~ fa2. r4 |
  mib''4. fa8~ fa2~ fa4 r r2 |
  sib'2 fa~ fa4 r mib2 |
  sib'4~ \t {sib8 do sib} do4 fa,~ |
  fa2. r4 |
  sib8 do \t {fa, mib lab} solb2~ |
  solb4 r reb2 |
  solb4. dod,8~ \t {dod fad mi} fad4~ |
  fad2 r4 sold,8 dod |
  fad4 mi,~ \t {mi8 la, si'} fad'4~ |
  fad r \t {do8 fa sib} \t {lab mib sib} |
  \t {lab reb fad} \t {mi si fad}
  \t {mi la re} \t {do sol re} |
  \t {do fa sib} \t {lab mib sib} fa4 r |

  \t {fa''8 fa fa} \t {do do do}
  \t {fa fa fa} \t {do do do} |
  \t {mib mib mib} \t {sib sib sib}
  \t {fa' sib, mib} \t {do, fa sib}
  \t {mib do, fa} \t {sib do mib} |
  \t {fa fa fa} \t {do do do}
  \t {mib mib mib} \t {sib mib sib} |
  fa4 r r1 | R1*2
  \t {si,8 mi re} \t {mi si la}
  \t {si mi, fad} \t {lab sib do}
  \t {re sol fa} \t {sol mi re} |
  \t {fa fa mi} \t {mi re re}
  \t {fa fa fa} \t {mi mi mi} |
  \t {re re re} \t {sol sol sol}
  \t {mi mi mi} \t {la la la} |
  si4 r \t {fa,8 fa fa} si,4 r2 |
  fa'''4 do mib sib reb lab si r |
  fa,8 fa' do fa do mib sib fa |
  fa' do fa do mib sib fa fa' |
  r fa do mib sib fa fa' do fa do mib sib |
  fa si fad si fad la mi si |
  dod' r dod sold si fad dod red' |
  lad red r dod sold mi' si mi si re la4 |
  \t {fa''8 fa fa} \t {do do do}
  \t {fa fa fa} \t {do do do} |
  \t {mib sib mib} \t {fa, do fa}
  \t {sib fa sib} \t {do sol do} |
  \t {fa, sol do} \t {re mib, sib'}
  \t {do fa re} \t {sol fa la} si4 fa,, |
}
