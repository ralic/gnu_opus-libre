%------------------------------------------------------------------%
% Opéra Libre -- clarinette.ly                                     %
%                                                                  %
% (c) Valentin Villenave, 2008                                     %
%                                                                  %
%------------------------------------------------------------------%

\include "italiano.ly"
ClarinetteUn = {
  #(make-instrument-name 'clarinet-a "clarinet" 25)
  \clef treble
}

PrologueClarinetteUn = { \ClarinetteUn
  \relative {

    %%% Introduction %%%
    \partial 4 r4 R2.*3 R1 |
    \ten mi,2~--\fp mi4 r | mi2 r4 |
    mi2\p\<~ mi\> \ten mi2.~\! mi4 r R2 |
    \tt {lab16\mf( mi sol lab sol} \ten si2~)|
    si4 r | R2 \tt {sol16( mi fad la sib} do2\>) ~ |
    do4\p r | r r8 \t {la16\<( sol re'}|
    mi2--->\f) r4 | r4 re r sol\p( | mi'2) r4 | R2 r2 mi,8-> mi~->|
    mi2\> | \ten re2.~\p re2 | reb4 r \t {la4--\mp lab8~--} |
    \t {lab8 solb4--} mib8-- r | fa2~-- fa4 r2 |

    %%% Tempo giusto %%%
    re8->\f r r4 | R2*2
    re4\mp( mib fa lab fa lab8) r |
    \t {dod4\mp( mi fad} \t {sol\< la do} |
    re4\f) r2 |
    r8 mi,,\mf\<( sol sib do mib | re4--\!) r2 |
    r8 mi,\mf( dod mi dod mi) |
    r mi( dod mi sol la) |
    r la( sol la do mib) |
    r sib( reb mi sol lab | la4\< do mib |
    re4\f) r8 si'4.~-- si4 r8 re,4.-- | dod2.---> r4
    R2*2 R2-\fermataMarkup

    %%% Solo ténor %%%
    R1*2 R2. R1 R2. R1
    R2*4 R2.*11 R4.*5
    sol,8 r4 | R4.*4
    fab''8-.\p mib-. reb-. mib-. reb-. sib-. sol-. r4 |
    sol,8-. r4 | R4.
    r8 mib-.\p( lab-. mi'-. lab,-. mib-.) |
    r mib-.( lab-. mi'-. lab,-. mib-.) |
    r solb-.( si-. re-. si-. solb-.) |
    r solb-.( si-. re-. si-. solb-.) |
    r fa-.( lab-. do-. lab-. fa-.) |
    r fa( sib reb solb la |
    sib4.~\p) sib8 r sib,( reb mib solb mib solb lab |
    la4.~\p) la8 r re,( fa sol lab sib reb mib |
    mi4.~\p) mi8 r lab,( sib si dod mi\< la mib |

    %%% A tempo %%%
    re8\sfz) r4 | r8 \t {sib,16\mp\<( mib lab} \t {do fa sol} |
    re'8\sfz) r4 | r8 \t {mib,,16\mp( lab reb} \t {fa sol do)} |
    r8 fa,,( sol) | \ten lab4.~\f lab~ lab4 r8 |
    sol16-.\mp sol-. sol-. lab,-. r8 | sol'16-. sol-. sol-. lab,-. r8 |
    sol'16-. sol-. sol-. lab,-. r8 | sol'16-. sol-. sol-. lab,-. r8 |
    mi''16-. mi-. mi-. fa,-. r8 | mi'16-. mi-. mi-. fa,-. r8 |
    mi'16-. mi-. mi-. fa,-. r8 | mi'16-. mi-. mi-. fa,-. r8 |
    mi'16-. mi-. mi-. fa,-. r8 | mi'16-. mi-. mi-. fa,-. r8 |
    fa'16\f fa fa mi, r8 | fa'16 fa fa mi, r8 |
    re'16 re re reb, r8 | re'16 re re reb, r8 |
    lab''16 lab lab sol, r8 | reb'16\> reb reb sib, r8 |
    fa'16 fa fa solb, r8 | reb'16 reb reb\! r r8 |
    R4.*8
    re,8\<( mi fa sol lab) | mi''2\f( mib4) | lab,2\>( mib4 | reb4\pp) r2 |

    %%% Adagio %%%
    R1*4 R1.*2 R1*3 R1.*2 R1*2 sol,2\p r4 |

    %%% Valse %%%
    si'2 r4 | r sol'2--\pp | r4 reb2-- | r4 sol,--( sol--) |
    r fa--( fa--) | r re--( re--) | r re-- r do-- | R2. R2 R2.*2
    R1 r2 lab'4--\p( lab--) | r solb--( solb--) | r fa--( fa--) |
    r reb--( reb--) | r do--( do--) | r sib--( sib--) | r fa-- r mi-- |
    r4 la8-.\f fad'4-> la,8-. fad'4-> | re'4.-> fad,8-. re'4-> |

    %%% Vivo al fine %%%
    re,,4--->\sfz r | R2*3
    r4 r8 fad-.->\mp | sol-.-> r r4 |
    r8 la->\<\mf la-> do-> re->\! r r4 | R2*22
    r4 mi,8->\pp r |
  }
}

OuvertureClarinetteUn = { \ClarinetteUn
  \relative {
    R2. \tttt {mi16 do' reb la sib solb' sol,}
    \t {mib'8 sol si} \tt {do16 la lab mi mib}
    \tt {lab, la do fa, reb'} \tt {do reb lab' la, fa'}
    \tt {mi fa do' reb, mi} | sib4
  }
}

ActeUnSceneUnClarinetteUn = { \ClarinetteUn
  \relative {
    R2*2 R2. R2*2 R2.
    R2*2 R2. R2*2 R2.
    \t {r4 fa,\p( solb} | sib2~) sib8 r r2 |
    \t {mib,4( solb sib} | do2~) do8 r r2 |
    \t {la'4\p( mib8} si') r \t {la,( mib' si')} \t {solb'( si, mib,)} |
    \t {la,4( mib'8} si') r \t {la,( mib' si')} |
    \t {\simile mi, sol do} \t {solb' do, mi,} \t {la, mi' sol} mib' r |
    \t {mi, sol do} \t {solb' do, mi,} la, r |
    \t {do4\mp lab'8} reb r \t {fa, lab mi'} \t {la mi lab,} |
    \t {do,4 lab'8} reb r \t {do, lab' mi'} |
    \t {fa, lab mi'} \t {la mi lab,} \t {do,4 lab'8} reb r |
    \t {fa, lab mi'} \t {la mi lab,} fa4~\< |
    \ten fa2~\f fa8 r lab4\p\<( | fa'2\mp) lab,4\<( | reb2~\mp) reb8 r solb,4\<( solb'2\mf) re!4( |
    do4\p) r2 | \tt {r16 lab,\p( sib reb mib} mi2~) |
    mi8 sold32\<( la si re mi8-.\!) r r4 | R2.*2
    r8 sib,16-.\mf mib-. la-. mi,-. sib'-. mib-. la4-- |
    \ttt {fad,16\pp( sol fad sol fad sol}
    la32 sib la sib \t {re16 mib re} \tttt {mib\< re mib re mib re mib} |
    \ten do'1~\f) do2 r4 |

    %%% Ad libitum %%%
    R1 si,2\p( la4~\> | la sol2 | solb2.--\pp) r4 |
    la2\>( sol4~ | sol fa2\!) |

    %%% Agitato %%%
    \ten mi1~\f mi2 r | R1*2
    mi'4-.\mf re2-- mi4-. si2->( do4) r |
    re,2.--\mp r4 r2 | R1*2 fa16\mf( reb8) solb16-.\< fa?2.->\! r2 |
    R1*2 r2 r4 r8 re'-. | do8.( fa'16\<) si,?2.->\! r2 |
    R1*2 \ten mib,,1\mp r2 | R1.*2 r4 mi'!2--\mf r4 | r mi2-- r4 r2 |
    si'1.\f\>( sib1\pp) r2 | R1.

    %%% Allegro non troppo %%%
    R1 R2. R1*3
    sib4-.\mp r r2 | r8 sib-. r sib-. r2 |
    R2. r8 sib-. r sib-. r2 |
    R2. r8 sib-. r sib-. r2 |
    R2. r8 sib-.\mf r sib-. r2 |
    mi,2--\f r4 | sib2.\mf r4 | R1*2
    re2.--\mp r4 | R1 re2-- r4 | R2.*2 R1*8

    %%% Moderato %%%
    R2.*2 R1 R2. R1 R2. R1
    \ten sib2.~\pp sib2 r | \ten sib2.~ sib2 r |
    \ten sib2.~ sib2 r4 r8 sib'--\p | sib16 sib fa' do sib2 |
    sib,4.-- mib8-- fa16( sib) do( sib) mib( do) sib8-- |
    fa'16\mp( reb) fa-. la,~-- la8 fa'16( reb) mib8-.( reb) |
    dob( sib) dob16\<( sib) dob( reb) | sib8->\! r r2 | R1
    R2*3 r4 r8 \st {si!\p |

    %%% Allegro marcato %%%
    re-- r la-- r re,-- r si'-- r re-- r la-- r re,-- r r4 |
    R1*3 re'8-- r mib,-- r solb,-- r si'-- r | re-- r mib,-- r solb,--} r r4 |
    R1*2 r2 r4 fa8.-.\p fa16 lab2--( fa8) r fa8.-. fa16 |
    lab2--( fa8) r r4 | R1 r2 r4 fa8.-. fa16 lab2--( fa8) r fa8.-. fa16 |
    lab2--( fa8) r r4 | R1 r2 r4 \st {fad'8\pp r | mi( r dod r si) r re' r |
    do\p( r la r sol) r fa r | mib\mp( r re r do) r r4 |
    la8\p( r sol r fa) r r4 | r la8\pp r sold r fad} r |

    %%% Agitato %%%
    re'2.\mf r4 | r re-- r re-- |
    R1 re'4---.\f re,2---> r4 la'4-.->\p r r8 \st {re, r4 |
    re8 r r4 r2 | R1 r4 fa8 r r fa r4 |
    r8 re r4  r2 | r8 do} r4 r2 | R1
    fa8-.->\sfz r r4 r1 | R1*2
    \st {do'8\pp mib la, mib' do mib la, mib' |
    sib do sol do sib do} |
    la16\p( si) re8-. la16( si) re8-. |
    la16( do) re8-. la16( do) re8-. |
    \t {fad,16( si mi)} la8-. \t {fad,16( si mi)} la8-. |
    \t {fad,16( si mi)} la8-. mi-.-> r | R2 R1*4
  }
}

ActeUnSceneUnBisClarinetteUn = { \ClarinetteUn
  \relative {
    R2.*4
    \ttt {fa,16\pp( mi re) dod( re mi)} fa8-- r
    \ttt {fa16( mi re) dod( re mi)}|fa8-- r
    \ttt {lab16( sol lab) sib( si dod)} re8-- r |
    \ttt {sol16( lab sol) lab( sol sib)}
    \ttt {si( dod si) dod( si mi)}
    \ttt {fad( sol fad sol la do)} |

    %%% Piu vivo %%%
    re4->\f r r2 |
    \tt {r16 mi,,,\p\< fad( sold la) } \tt {si( do re) fa( la)} \tt {do( re mib) fa( lab)}|
    re4->\f r r2 |
    \tt {r16 mi,,,\p\< sold( sib dod)} \tt {mib( sol sib) do( mi)} \tt {fad( sol la) si( do)}|
    re4->\f re8 la4->( re8) | lab4.->( re) fad,->( re') |
    mi,4-> mi8 mi4-> mi8 |
    R2. \ten fa,,2.~\pp fa4. r8\fermata r4 |
    R2. \ten fa2.~\pp fa2~ fa8 r\fermata r4 |
    R1 R2

    %%% Largo %%%
    R2*3 R2. R2 R2. R2 R2.*2
    r2 r4 lab'-.\mp | sol2-- r4 lab-. | sol2-- r4 R2
    sib2--\mf r |
    R2.*2 R2*2
    r2 r8 fa,-.\mp | sol'4-- r8 fa,-. | sol'2-- |
    r8 re->\f r4 | r8 mi-> do-> r r4 |
    r2 r8 reb-> \t {sol16\< lab sib} reb8->\! |
    R2. R2*3 R2.*3

    %%% Adagio %%%
    R1*21
    r4 mi--\pp mi8( re fad4) |
    fad8( re mi4) \simile mi8 re fad4 |
    fad8 re mi4 mi8 re fad4 |
    fad8 re mi4 mi8 re fad4 |
    mi  mi8 fad re4 re8 fad |
    mi4 mi8 fad r2 |
    r fad4--\p fad8( re | mi4) r r2 |
    r4 fad--\pp fad-- mi-- |
    R1*2 R1-\fermataMarkup |
    R2*4
  }
}

InterludeUnClarinetteUn = { \ClarinetteUn
  \relative {
    R1. R1*3 R1. R1 R1. r4 r16 sold8.\mp( \t {sol4 si\< sib} \ten re2~\!)|
    re1~ re4 r r2 |
    la1\p la2~la1( si2 do) \ten mi~-- mi r4 |
    r4 \ttt {r16 sold\mf( la si mi re} |
    fa8) r r4 \ttt {r16 sold,\<( la si mi re} |
    sol1~\mf) sol2 r8 mi4-- si8( |
    sol'1) r2 | sold,4-- r8 re16\mf( mi re\> si la8\!) r4 |
    sold'4.--\mp r8 sold4.-- r8 |
    sold4( mi8) r sold4( mi8) r la4( mi8) r |
    re'4 r8 \t {do16( mi la} sol4.) re16( sol | mib2.--->\f)\> |
    \ten dod2.~\pp dod4 r2 | R2.*9
    fad16( sol fad mi dod mi) fad( sol fad mi dod mi |
    fad4) r2 | R2.*3
  }
}

ActeUnSceneDeuxClarinetteUn = { \ClarinetteUn
  \relative {
    %%% Air de la Soprano2 %%%

    R2.*2 R1*2  R2.*2 R1*2 R2.*2  R1*2  R2.*2 R1*2  R2.*2
    R1 | re,8\p( fa sold si) sold( si sold fad) |
    re-- r r2 | re8( fad) sold4 r |
    R1*2 |
    dod,8\pp( fad sold si) sold( fad) | dod4-- r8 sold'(\< fad re) |
    \ten dod1~--\mp | dod2 r4 sold''8\mp\>( la |
    sold mi) re( si) sold4\! | R2. |
    \ten dod,1~ | dod2 r4 mi8( fa |
    la si) re( fa) re4 | r dod,-- r |
    \ten mi1~--\mp | mi2. r4 | R2.*2 |
    \ten lab'1~\f| lab2. r4 | R2.*2 | \ten lab1~\f| lab2. r4 |
    R2.*2 | r4 sold,8\p( re' sold, re) dod( re) |
    sold( re' sold, re) dod( re) sold4-- |
    dod,8( re) fad2~-- | fad2. \repeat unfold 8 {R1*2 R2.*2} |
    R1 r2 la'2\ppp\fermata |

    %%% Récitatif %%%

    R2.*2 R1 R2.*3 R1 R2.*3
    \repeat tremolo 12 {si,32\fp do} |
    \repeat tremolo 12 {sol'32\p\< lab}|
    sol8\sfz r r2 R2 R2. R1*2 R2.*5 R1 |

    %%% Duo %%%

    re,8---.\pp re8---. re8---. re8---. \simile re8 re8
    \repeat unfold 12 re r
    \repeat unfold 13 re r re(
    \ind #"senza cresc." reb) \repeat unfold 7 reb
    \repeat unfold 5 mi mi(
    sol) \repeat unfold 3 sol r
    \repeat unfold 2 sol sol(
    fa) \repeat unfold 7 fa r4 | r8
    fa--\mf \repeat unfold 2 fa--
    lab---.\p lab---. lab---. lab---. \simile lab lab
    \repeat unfold 4 lab---. r
    \repeat unfold 13 lab r
    lab lab\< lab
    \st {dod\mp dod mi mi
    \repeat unfold 2 {dod dod mi mi} sold r
    lad\mf\< lad sold sold lad lad sold sold} do2.~\! do~ do4 r2
    r2 r8 sib4.--\fsubito |

    %%% Piu vivo %%%
    sol,4\sfz r2 | R1 R2.*2 R1
    r16 re''-.\mf\< re-. re-. sol4--\! fa-- | sol8-> fad,~-> fad4 r2 |
    r16 re'-.\< re-. re-. sol4--\! fa-- | fa8-> fad,~-> fad4 r2 |
    r16 mi'-.\< mi-. mi-. sold4--\! fad-- la8-> sold~-> sold4 r | R2.
    r16 mi-.\< mi-. mi-. la4--\! sold--| la8-> sold~-> sold4 r |
    r16 la-. la-. la-. la4-- sol-- | la8->\< sold~->\! sold4 r |
    R2.*2 r16 re32->\mf( mi re8) r2 |
    R2.*2 r4 r16 mi32->( re) r8 r4 |
    r r8 re-.-> r4 |

    %%% Poco allargando %%%
    \t {sib,--\ff( sib-- sib--)}
    \t {sib--( sib-- sib--)}
    \t {sib--( sib-- sib--)}
    \t {si8-- r si4--( si--)}
    \t {dod--\>( dod-- dod--)}
    \t {fad--( fad-- fad--\!)}

    %%% Tempo giusto subito %%%
    re-> r r2 |
    r4 re,8-.\mp re-. r2 |
    r4 reb8-. reb-. r2|
    r4 mib8-. mib-. r2|
    r8 sol-. sol4-. r2|
    R2. re'2.\mp( fa'4) re,2.( fa'4~)| fa8 r r2 |
    R2 re,,2~\mf( re4 fad')| re,2.( fad'8) r r2 |
    r8 la\mf( re) la
    r sol( re') sol,
    r la( re) la
    r sol( re') la
    r la( re) la
    r mi'\f( la) mi
    r re( sol) mi r re( | fa-.) r r2 |

    %%% Largo assai %%%

    %%TODO: doigté alternatif pour le sib?
    r4 sib,2.\p( | la4.) r8 la4( | lab4.) r8 lab4( sol4.) r8 r4 | r sol-- |
    \ten solb2.~\pp solb2. r4 | r2 \st {fa4-- mi-- mib-- r la,-- r re,--} r r2 |
  }
}

InterludeDeuxClarinetteUn = { \ClarinetteUn
  \relative {
    R1 R2. R2 R2. R2 R2. R2
    r4 si'--\p R2 r4 do-- R2 |
    sold'8-. r sol-. r fad-. r fa-. r |
    \t {mi-. r reb-.} \t {do-. r si-.} |
    do4( do'8-.) r | R2
    r4 solb8-.\p r sib,-. r r4 |
    r mib8-. r fa-. r r4 | R2
    sold,2\pp( mi4) r |
    sold2( mi4) r |
    sold2( mi4) r | R1 R2.
    sold2( mi4) r | sold2-- r4 | R2.
    la,2--\p r | R2. fa4-- r |
  }
}

ActeUnSceneTroisClarinetteUn = { \ClarinetteUn
  \relative {
    R2.*4 | solb'8-.\mf mib4-- solb8-. mib4-- r4 r8 mib4---> do8-. |
    sib2.~--\< sib8\! r r2 |
    R2.*8 r2 \t {mib'8-.\f mib-. mib-.} la4-- solb-- lab8-> mib~-> mib4 r2 |
    R2.*5

    %%% Lamento %%%
    R1.*6 R1*5/4
    lab,,2\p\>( fa4\!) r2 |
    sol2\>( mi4\!) r2 |
    \simile lab2 fa4 r2 |
    lab2 la4 r2 |
    re2\mp( si4) r |
    reb2( sib4) r |
    re2( si4) r |
    lab2\<( solb'4\!) r |
    sol2\mf sol4~-- sol8 reb,~-> reb4 mi'\<( | mib'4.\f) r8 r4 |
    R2*2

    %%% Tempo I %%%
    R2.*8
    mib,,2.\p solb\< reb8\sfz r r2 |
    R2.*3
    R1.*4 si'2.--\p r4 r2 | r2 r4 \ten mib2.~\mf mib~ mib8 r r4 |
    \ten lab,1~\p lab4 r2 r4 sib-- |
  }
}

ActeUnSceneTroisBisClarinetteUn = { \ClarinetteUn
  \relative {
    R1*4 r2 \ten do~\pp do1 | R1 r2 la~ la r | R1*11 r2 r4
    dod16\mf( mi8) dod16 |
    sol'8-- r\tt {fa,16--\mp( lab sib reb mi)}
    sol8 r \tt {fa,16--( lab sib reb mi)}
    sol8 r \tt {fa,16--( lab sib reb mi)}
    sol8 r \tt {\simile fa,16 lab sib reb mi}
    sol8 r \tt {fa,16 lab sib reb mi}
    sol8 r \tt {fa,16\< lab sib reb mi} |
    fad4--\sf r r2 | R1*10 R2.
    r4 la,2\p la4\<( do2\> la~)\! la2. r4 |
    r2 \tt {fad16--\pp( sol la do re)} r4 |
    r2 r4 \tt {fad,16--( sol la do re)}|
    r4 \tt {fad,16--( sol la do re)}
    r4 \tt {fad,16--( sol la do re)}
    mib8 r \tt {\simile fad,16 sol la do re}
    mib8 r \tt {fad,16 sol la do re}
    mib8 r \tt {fad,16 sol la do re}
    mib8 r \tt {fad,16 sol la do re}
    mib8 r \tt {fad,16 sol la do re}
    mib8 r \tt {fad,16\< sol la do re}
    fad2.\mp r4 | R1*6
    r4 mib,--\p r2 | r4 mib-- r2 | mib4-- r mib-- r | R1*7
    fad'2\p\>( re~\!) re4 r r2 | R1*5
    r2 lab'\mp( reb1)\fermata
  }
}

ActeUnSceneTroisTerClarinetteUn = { \ClarinetteUn
  \relative {
    r4 r16 sol'-.\mf( sol-. sol-. do2--)
    r4 r16 sol-.( sol-. sol-. do8-- sol16-. sol-. do2--) |
    r4 r8 sol16-.( sol-. do8-- sol16-. sol-. do8.--) sol16-. |
    sol-.( sol-. sol-. sol-.) r8 do4-- sold16-.( la-.
    re,8->) r r2 | R2.*3
    re8\p\(( dod) fa,( fad) la( sib)\) re,\(( dod) fa( fad) re( dod)\) |
    mib'\(( re) fad,( sol)\) si\(( lad) sol( fad)\) |
    mi'\(( red) si( do)\) fa\(( mi) do( dod)\) |
    re-- r r4 r2 |
    R1*3 R2.*2

    %%% Poco meno %%%
    la4\mp\>( sol fa \ten mi2.~\!) mi2 r4 |
    R2. mib2.~\p mib2 r4 R2.
    re2.~--\pp re2 r4 |
    \longHairpins {
      r8 si'''\p\<( sib sol fad mib\> re'2\!) r4 |
      r8 si\p\<( sib fad re si\> sib'2\!) r4 |
      r8 sol\mp\<( fad re si sib\> | re4\!) r2 |
      \t {r8 do\p( la~} \t {la) sold( fa} \t {do\>) la( mi~)} mi2\! r4 |
    }
    r4 sol2--\p sol-- fad4~-- fad fad-- r |
    r  sol2-- sol-- fad4~-- fad\> fad--\! r |
    r  sib2--\mp sib-- si4~--  si\>  si--\!  r |
    r  sib2-- sib-- si4~-- si\>  si--\!  r |
    r sib'2--\mp sib-- sib4~-- sib2 r4 |
    r sib2--\mp\< re-- fad4~--\mf fad r2 |
    R2.*3
    r4 r16 \st {lab\mp\>( mib la, mi sib la'8\!)} r4 |
    r fa,2--\p fa-- fa4~-- fa2 r4 |
    r fa2-- r4 sib4.--\< mi8~-- mi4 la2--\mp |
    r4 mib2--\mp mib--\> re4~--\! re r2 |
    r4 mib2-- mib--\> re4~\! re r2 |
    r4 sol2--\mf sol--\< fad4~--\! fad\> fad--\! r |
    r  sol,\mf\<( sol' sib2--\!) si4~-- si mib\<( sol\!) |
    r8 mib\f( re si sib sol fad') mib( re si re mib) |
    re'\>( fad, sol,4\!) r8 re( mib,2--\mp) r4 | R2.*15
  }
}

InterludeTroisClarinetteUn = { \ClarinetteUn
  \relative {
    R1 R2. R1 R2. R1 R2. R1 R2.
    la'2.--\p r4 la2-- r4 |
    la4.\p( do8) sib( reb) la4-- r |
    mi'2--\mf re8( fa) mi4.-- r8 |
    sib8\f( sol) sib( si) re\<( si) re( mib\!) | R2*4
  }
}

ActeUnSceneQuatreClarinetteUn = { \ClarinetteUn
  \relative {
    \partial 4 r4 re16\mp( mi fa sol la8-.) la,-.( re-.) la'4-- r |
    R2 r4 r8 la,-. re16( mi fa sol la8-.) la,-.( sib-.) fa'4-- r16
    re-.\mp re-. re-. sol4--( mi-- re--) r2 | R2*2
    R2-\fermataMarkup

    %%% Allegretto comodo %%%
    R1 R2. R1*2 R1. \t {fad4\pp( sol fad} \t {sol fad sol} | la2.) r4 |
    \t {fad4( sol fad} \t {sol fad sol} \t {fad sol fad~)}|
    \t {fad sol( fad} sol) r | \t {mib,2--( mib4~--)} mib2 |

    %%% Agitato %%%
    sol8-.-> r r2 | R2.*5
    r8 sol--\mf( sol-- sol--) do4~--| \ten do2.~ do8 r r2 |
    re4--->\mf r4 r16 la-.\f la-. la-. | re4-- do-- re8-> la~-> | la4 r r16 si-. si-. si-. |
    mi4-- re-- mi8-> si~-> | si4 r2 |
    \ten re,2.~\p re2 r4 | re2.-- re4--\mp re-- re-- |
    re16\<( mi sol la) do( re mi sol) la( do re mi) |
    sol8--->\f r r4 sol32-> sol16.~sol16 sol-. |
    sol8-.-> r r4 sol8-.-> r sol8..-> sol32 sol8-.-> r r4 |
    lab8-.-> r r4 lab32-> lab16. r8 lab8..-> lab32 lab8-.-> r r4 |
    la!8-.-> r r la-.-> r4 | re,2--\f mi4-- re2-- mi4-- |
    re8-> r re,16\p( mi re mi re mi re mi re mi re mi) |
    \t {re8( mi re} \t {mi\> re mi} re8\!) r |
    re16( mi re mi re mi re mi) re( mi re mi re mi re mi) |
    \t {re8( mi re} \t {mi\> re mi} re8\!) r |
    re16( mi re mi re8) r | re16( mi re mi re mi re mi re8) r |
    mib16( fa mib fa mib8) r | mib16( fa mib fa mib fa mib fa mib8) r |
    \t {mi8( fad mi} \t {fad mi fad)} | \t {mi\>( fad mi} \t {fad mi fad} mi8\!) r |

    %%% Placando assai %%%
    r2 sol~\pp sol2. r4 |
    r2 sol~ sol2. r4 |
    sol,2\>( solb fa \ten mi2.~\!) mi r4 |

    %%% Andante a piacere %%%
    r2 mib~\p( mib\> mi4\!) r |
    r2 mib~( mib\> mi4\!) r |
    r2 \ten mib~ mib2. r4 |
    r2 mib~ mib2. r4 |
    r2 mib'\mf( mi4 fa8 mi4.)
    re'4\>( lab mib2 |
    si4. reb\!)
    R1 r2 \longHairpins { si~\p( si4 si\< la2\> si2.\!) } r4 |
    R1*3 R2*3 R2.*6
    r8 mi~--\f\< \t {mi mi mi} \t {fa-- fa fa} \t {sol-- sol sol\!} |
    r  sib~--\< \t {sib sib sib} \t {do-- do do} \t {reb-- reb reb} |
    \t {mib-- mib mib} \t {solb-- solb solb} \t {lab-- lab lab\!} r4 |
    R1 R2. R1 R2. R1 R2. R1 R2.
    sib,2--\ff sib4-- sib-- sib4.-- sib8~-- sib4 r |
    sib2-- r4 sib2-- r4 si4.-- r8 si4-- re---> r re8.-> re16 re8-. re~--->|
    re4 re-- r8 re4-- sol,8-. |

    \ten si2.~\ff si8 r4 | re,,8.->\f reb16~-> reb8 mi~-> mi r |
    r8 \ttt {reb16\<( solb lab) si( re mi)} |
    \ten reb'2~\f reb8 r4 | re,,8.->\f reb16~-> reb8 mi~-> |
    mi r fa16\<( sol) do-. fa-. | sib2~\f sib8 r4 |
    fa'8-.\sfz r r \t {r16 re\mp( mi} re8-.) r r4 |
    r \ten la,~\p la4.~ la2 reb'--\mf\< |
    R2\! R4. R2. re4->\f r r2 |
    \ten re,1~\pp( re2 do~ do sib la2.) r4 |
    r2 la4.\p\<( mib'8~| mib4 solb2 re'4\!~| re) mi--\<(\mf si-- do,-- |
    re,->\!) r r2 | R1*2 \st {re'8\p re re re re re re re |
    R2 re8 re re re re re R2. re8\pp re re re} R1

    %%% Piu lento %%%
    R2.*3 sib'8(\pdolce solb fa dob sib solb fa\> solb sib dob fa solb |
    sib2\!) r4 | R2.*3
    sib8\p( solb fa re do sib sol fad re fad sol sib do\> re fa solb sib4~\!)|
    sib2 r4 R2.*2 sib8\p( solb fa reb do lab |
    sol mib re mib sol lab do\> reb fa solb sib4~\!) | sib2 r4 | R2.*2

    R1. R1 R1. R1 R1. r2 sib,4->\mf r | R1.
    solb'8\mp( lab4) solb8 \ten la2--~la1.~la2. r4 |
    R1.*5 r2 mi,4-.\sfz r | R1. R1 R1. mi'4-.\sfz r r2 |
    R1.*5 r2 sib4-.\sfz r | r2 r4 si-.-> do-.-> r r2 reb4---> r |
  }
}

EntracteClarinetteUn = { \ClarinetteUn
  \relative {
    R2*9

    %%% Vivo subito %%%
    R1*7
    \ten re,1~\p re~ re4 r r2 |
    R1*4 r4 sib'--\p r sib-- | r sib( sib-.->) r |
    r re--\mp r re-- r re,-- r2 | R1*2
    r2 dod'16( re) fad-. sold-. fad4~-- | fad r r2 |
    R1*3 r4 lab,8.--\mf lab16 si4-- r r la8-.\mp la-. sold4-. r |
    r la2.~\p la4 re,-.-> r2 | R1*2 |
    fa8\mp\<( solb) solb( fa) la( sib) sib( la) reb\>( do) do( si\!) r \st {sib\p sib sib |
    r si si si r do do do r reb reb reb r re re re r mib mib mib} r2 |
    R1 re'4--\f re16 re re re re4-- re16 re re re re4--
    re16 re re re re4-- | re16 re re re re4-- re16 re re re re4-- |

    %%% Fugato %%%
    re,-- r r2 | R1 R2.*2 R2
    R1 r4 \ten sol,2~\p sol2.~ sol4 r r2 |
    re'2\mp( si8) r r4 | R2.
    reb2( sib8) r | R1
    re2( si8) r r4 | R2.
    re2.( mib4) r r2 | R1 R2.*2
    r4 r8 sol~\mp( sol4. la8~ la sol4. \ten la2~) la r4 | R2.
    r4 re,,16\mf( mib) fa-. lab-. sib( si) dod-. mi-. fad\<( sol) la-. do-. |

    %%% Stretto %%%
    re4->\f re,---> r re---> r re---> r re---> |
    re,---> re'8---> \st {re\p re re re re |
    mi mi mi mi fa fa fa fa |
    sol sol sol sol sol sol sol sol} |
    lab4--\mf r solb-- solb-- lab-- r solb-- solb-- |
    sol-- r sol-- sol-- sib-- sib-- sib-- sib-- |
    sib-- r r2 | R1*3

    %%% Noir %%%
    R2.-\fermataMarkup R2.*4 R2 R2. R1 r4 r8 re,?->\mf r4 R2
    R1*5 R1.*2 r2 fad2\p( re4) r R1. r2 re-- |
    R2.-\fermataMarkup R2.*3
    la'4\mp( sol fa mi fa8 mi fa sol |
    la4 sol fa mi fa8 mi fa sol la4 mi) r | R2.-\fermataMarkup

    %%% Poco più %%%
    R2.*4 R2.-\fermataMarkup

    %%% Andantino %%%
    la'4\mp( sol fa mi fa8 mi fa sol) |
    la4( sol fa mi fa8 mi fa sol) |
    la4( sol fa mi fa8 mi fa sol |
    la4 mi) r2 R2.

    %%% Largo non troppo %%%
    la4\mp\(( sol8) r fa4( mi8) r fa\<( mi) fa sol\) |
    la4\!( sol8) r fa4( mi8) r fa\<( mi) fa sol |
    \simile la4\! sol8 r fa4 mi8 r fa mi fa sol |
    la4 sol8 r fa4 mi8 r fa mi fa sol |
    la4 sol8 r fa4 mi8 r fa mi fa sol |
    la4 sol8 r fa4 mi8 r fa mi fa sol |
    la4 sol8 r fa4 mi8 r fa mi fa sol |
    la4 sol8 r fa4 mi8 r fa mi fa sol |
    \ind #"senza cresc." la4 sol8 r fa4 mi8 r fa mi fa sol |
    la4 sol8 r fa4 mi8 r fa mi fa sol |
    la4 sol8 r fa4 mi8 r fa mi fa sol |
    la4 sol8 r fa4 mi8 r fa mi fa sol |
    la4\mpsempre sol8 r fa4 mi8 r fa mi fa sol |
    la4 sol8 r fa4 mi8 r fa mi fa sol |
    la4 sol8 r fa4 mi8 r fa mi fa sol |
    \cresc la4 sol8 r fa4 mi8 r fa mi fa sol |
    la4 sol8 r fa4 mi8 r fa\< mi fa sol |
    la4\ff mi~ mi2. r4 | mi2.---> r4 R1 R2. mi,,8-.->\sffz r r4 |
  }
}

ActeDeuxSceneUnClarinetteUn = { \ClarinetteUn
  \relative {
    R2.*3 | re''8 sib~ sib2~ | sib4 r |
    si!8 sol~ sol2~ | sol2 r4 | r sold |
    mi2.~ | mi2.~ | mi2.~ | mi4 r |
    R2. R2 R2.*2 r4 r8 la, |
    mi2.~ | mi2.~ | mi2.~ | mi4 r |
    R2. R2 R2.*2 R2 | R2. mi'2.~| mi2.~| mi4 r |

    %%% Entrée de la Soprano Deux %%%
    R2.*2 R1 R2. sib,1 la2.~ la4 r | lab2.~ lab2 r |

    %%% Andantino %%%
    R1*2 R2.*3 r2 solb'4 lab r |
    si si, r R2.*4 R1 R2. R2
    R2. R1 R2. R1 R2. R1
    sold''8 la sold mi re mi sold2. r4 |
    R2. R1 R2. R1 R2.
    fad,,2. r4 | fa2.~ fa2. r4 | R2. fad2. r4 fa2.~ fa2. r4 |
    sold''8 la re la sold mi re la' sold mi re mi re si |

    %%% Entrée de la Contralto %%%
    la2.~ la2. r4 R2. R1
    R2. R1 R2. R1 r2 la,4~ la4 la2 r4 R2. |
    r4 la2 r4 r la2~ la4 r la r r la2~ la4 r r2 |
    fad8 r r2 R1 R2. R1 R2. do'2 re4 mib8 lab sib4 r |
    R2.*5
    r4 la'8 sib la fa mib fa la2~ la4 r r2 | r2 la4~ |
    la4. lab4 si8 solb4 | lab mib r re la2 r4 |
    r4 la2 r4 lab2. r4 la2 r4 fa2 r4 | R2. R1
    R2. r2 r4 fad mi re dod | re8 dod re mi fad2. r4 |
    R2. R1 R2. R1 mi4 reb r mi reb r2 |
  }
}

ActeDeuxSceneUnBisClarinetteUn = { \ClarinetteUn
  \relative {
    R1 R2. R2

    %%% Presto agitato %%%
    R1*5/4*5
    sol''1*5/4~ sol~ sol2. r2 |
    R1*5/4*11
    la,,2 sol mi4 | dod2. r2 |
    re4 r2 re4 r | re r re r2 | re4 r r8 re' fa sol lab si |
    do4 r1 | R1*5/4*4
    r2 r8 re,,~ re2 | fa2~ fa8 sol~ sol2 | lab2. r2 | R1*5/4*6
    fad4 r2 fad4 r | fad r fad r2 | fad4 r r8 fad' sol la do re |
    mib4 r1 | R1*5/4 fad,,4 r1 | R1*5/4-\fermataMarkup

    %%% Boum %%%
    R1*5/4*3 re'1*5/4~ re2. r2 | si1*5/4~ si2. r2 |
    sol2 r4 sol do | sib mib1 | mi2. r2 | R1*5/4*3

    %%% Air ténor %%%
    sol4 mi8 r \t {mi, sol mi'} \t {sol mi' sol} \t {mi sol, mi} |
    sol4 mi8 r \t {sol, mi' sol} \t {mi' sol mi} \t {sol, mi sol,} |
    sol'4 mi8 r \t {mi sol mi'} \t {sol mi sol} \t {mi sol, mi} |
    sol4 mi8 r \t {sol mi' sol} \t {mi sol, mi} \t {sol, mi mib} |
    reb r \t {mib lab mib} sib' r \t {si mi si} sol' r |
    \t {lab reb mib} \t {lab mib sib} \t {mib lab mib} sib r r4 |
    sol4 mi8 r \t {mi, sol mi'} \t {sol mi' sol} \t {mi sol, mi} |
    sol4 mi8 r \t {sol, mi' sol} \t {mi' sol mi} \t {sol, mi sol,} |
    sol'4 mi8 r \t {mi sol mi'} \t {sol mi sol} \t {mi sol, mi} |
    sol4 mi8 r \t {mib, lab si} \t {re sol sib} \t {mi sol mi} |
    sol,4 mi8 r \t {fa, sib re} \t {mi lab reb} \t {mib lab mib} |
    \t {sol, mi sol} mi r \t {sol mi sol} mi r \t {sol mi' sol} |
    mi sol, mi r \t {mi, lab reb} \t {sol mi sol} mi r |
    \t {sol mi sol} mi r \t {sol mi sol} mi r \t {sol mi sol} |
    mi r r4 \t {sol8 mi sol} mi r r4 | R1*5/4*4

    %%% Moderato assai %%%
    si'1*7/4~ si4 r2 r1 |
    si1 do2. si do1~ | do4 r2 r1 |
    si2 do2. si2 do2. dod1 |
    re2.~ re4 r r2 | R2. R2
    si,2.~ si4 r2 | si2.~ si4 r2 |
    do2.~ do4 r2 | do'2.~ do4. dod8~ dod4~ dod2. |
    re1 r2 r4 | R1*7/4*2 |
    r8 fa,, solb reb' re4 |
    r8 reb, re la' sib4 |
    r8 fa solb reb' re4 |
    r8 solb, la re fa4 |
    r8 fa, solb reb' re4 |
    r8 mib, lab si mi4 |
    r8 fa, solb sib reb4 |
    r1 r8 re sol fa sib4 | R1*7/4*3
    \repeat volta 2 { R1*7/4*3 }
    R1*7/4*2

    %%% Presto subito %%%
    mi,2 mib,1~ mib~ mib4 r |
    \tt {solb8 mib r4 r8} r1 |
    mib2. r4 r2 | R1.

    %%% Tempo giusto %%%
    re2 r4 | R2.*2
    r4 mib' solb mi' lab, reb re, r2 | R2.
    solb2 fa4 mi |
    re2.~ re2 r4 | fa fad sol sib2 r4 |
    mib4. r8 | R4. r8 re~ \t {re re re} \t {red red red} \t {mi mi mi} |
    mib2~ mib4 reb'16 do | sib2 r4 |
    mib,2~ mib4 re16 la' | mi'2 r4 |
    mi4 do8 sol reb |
    la'4 la8 sib~ sib mi mi re4 r2 |
    r4 \t {fa,16 re mi} si8 r4 |
    r2 r8 \t {reb'16 sol, mi} re8 r r2 |
    r4 lab,2 sol4 do si |
    r sol2 lab4 si do |
    r sol2 lab4 si do |
    r re mib r fad sol sib si8 re mib sol |
    sib2. R2. R2 R4. R2 R1*5/8 R2.

    %%% Tempo I %%%
    R1
    fa4 r2 fa4 r fa r fa r2 | fa4 r \t {lab,8 solb la} fa'4 r |
    la,, r1\fermata | R1*5/4
    si'2. do2 si do2. R1*5/4*2
    si2. do2 si do2. R1*5/4*14
  }
}

ActeDeuxSceneDeuxClarinetteUn = { \ClarinetteUn
  \relative {
    R1.*6 la'4 mi r2 | R1 R2.
    reb4 reb8 reb r4 | mi?8 mi r4 r8 mi |
    r16 re re re r8 mi r4 | R2. la1.~ la4 sol fa mi fa8 mi fa sol |
    la4 mi r1 | fa4 la, r2 | R1 R2.
    reb4 reb8 reb r mi fa4 | reb4 r8 |
    mi1~ mi2. r4 | fa1~ fa4 r r mib'8 mib |
    sib'2 r8 sib16 sib dob8 r | sib2. r4 |

    R2. R1. do,,2. r4 | la2. r4 |
    la'4 sol fa mi fa8 mi fa sol |
    la4 mi r R2
    la4 sol fa mi fa8 mi fa sol |
    la4 mi r8 sib'~ sib mi, r4 |
    R4. mi4 r r mi8 mi mi4 r r mi8 mi |
    mi4 r r mi8 mi | mi4 r r fa8 fa | sol4 r r la16 la la8 |
    lab4 r r sib16 sib la!8 |
    lab4 r r sib16 sib la!8 |
    lab4 r r sib16 sib lab8 | lab1~ lab2 r4 |
    R1. R1 R1.
    la!4 sol fa mi fa8 mi fa sol la2 r4 |
    fa4 do r2 |

    R2. R1 R2. R1 R2. R1 mib4 reb dob |
    sib1~ sib2.~ sib1~ sib4 r2 | R1 R2. R1
    R2. R1 R2. R1 R2. R1 r2 r8 r16 \t {mi'32 fa sol} |
    la8 r r4 | r r8 \t {mi16 fa sol} | la8 r r4 |
    r2 r8 \t {mi16 fa sol} | la8 r r4 r2 | R1*2

    sold8 sold la r4 | la4 r8 sold sold |
    la la,, la sold r | la'' sold,, sold la r |
    sold' sold la r4 | re,4 r r8 | R2*5/4
    sold'8 sold la r4 | r sold,,8 sold la |
    re4 r r8 | R2*5/4*4 R1*2
    reb,4 r r2 | R1*6
    si''4 r2 | R2 r2 r4 solb16 la8 solb16 reb'1 |
    R2.*2 do,2.~ do2 r4 | R2.*3

    R2*2 R2. la''4 sol fa | mi2~ mi4 r |
    la mi~ mi fa | sol4 r |
    sib,,16 sib sib sib sib sib sib sib |
    sib sib sib sib sib sib sib sib |
    sib sib sib sib sib sib r sib |
    sib sib sib sib sib sib sib sib |
    lab8 r r4 | R2*4
    r4 mi8 r | R2
    sib'16 sib sib sib sib sib sib sib |
    sib sib sib sib mi mi mi mi | re8 r r4 | R2*6

    la'2.~ la~ la~ la~ la2 r4 | R2.*11
  }
}