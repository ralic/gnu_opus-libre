%------------------------------------------------------------------%
% Opéra Libre -- flute1.ly                                         %
%                                                                  %
% (c) Valentin Villenave, 2008                                     %
%                                                                  %
%------------------------------------------------------------------%

\include "italiano.ly"

FluteUn = {
  #(make-instrument-name 'flute-one "flute" 25)
  \clef treble
}

Piccolo = {
  #(make-instrument-name 'piccolo "flute" 25)
  \clef "G^8"
}

PrologueFluteUn = { \FluteUn
  \relative {

    %%% Introduction %%%
    \partial 4 r8
    \tt {mi'32\< fa si mi fa} sib2.~\mp sib~\< sib~ sib2~\> sib4~ sib8\! r
    \ten mi,,,2~--\mf mi4 r | mi4~ mi4:32 ~ mi8 r |
    fa2~ fa \ten mi2.~ mi4 r |
    r \ten mi~\mp| mi2.~ | mi4 r |
    r mi~| mi2.~ | mi4 r |
    r r8 \t { mi16\<( la re} | mi2--->\f) r4 | r la, |
    r4 \tt {mi'16\p( la\< sol do sib} mib2\mf) r4 |
    r4 \tt {sold,16\p( si\< mi re fa} sol2\mp) r4|
    R2 r4 r8 \t {lab16( mib fa} do8) r | re,-.-> r r4 |
    mi,!2.~--\mp mi4 r | fa2~-- fa4 r2 |

    %%% Tempo giusto %%%
    \slap { \ind #"slap" re4\f} r R2*6 r4 do'16( fad la sol |
    re'4\f) r2 | r2 do,16( fad mib si' | re4) r2 R2.
    dod,,2.\mf( mi lab2) r4 | r8 mib'\mp( fa\< lab si dod |
    re4--\f) re8 re4-> re8 | re4-> re8 re~-> re16 re8.-- | re2.---> r4 R2*2 R2-\fermataMarkup

    %%% Solo Ténor %%%
    R1*2 R2. R1 R2. R1
    R2*4 R2.*7 r2 lab4---.\pp sol,---. r lab'---. sol,---. lab'---. r |
    sib---. si,---. si'---. | R4.
    R4.*2 r8 lab'-.\p r sib-. r si-. | R4.*5
    \acciaccatura mib,16 fab8-.\p mib-. reb-. r lab,-. sol-. R4.*15
    \ten do'4.~\p do4.~ do4.~ do8 r4 |
    r8 r16 do8.~ do4.~ do4.~ do8 r4 |
    r8 re4~ re4.~ re4 r8 | lab'\mf( fa mib) |

    %%% A tempo %%%
    re'32-.->\mp re,-. re-. re-. re,8-. r | sold,4:32\mf r8 |
    re'''32-.-> re,-. re-. re-. re,8-. r | sold,4:32\mf r8 |
    r8 \t {do16( fa sib)} \t {fa( sib mib)} |
    sol-.\f sol-. sol-. re-. r8 | sol16-. sol-. sol-. re-. r8 |
    sol16-. sol-. sol-. re-. r fa32\<( sol | lab8\sfz) r4 |
    R4.*2 dod,,16-.\mf dod-. r dod-. dod-. dod-. | mi8-. r4 |
    si'8-. r4 | si16-. si-. si-. r r8 | si16-. si-. si-. r r8 |
    si16-. si-. si-. r r8 | si16-.\< si-. r si-. si-. si-. |
    re->\f re re r r8 | re16-> re re r r8 |
    re16-> re re r r8 | mi16-> mi mi r r8 |
    re16-> re re r r8 | re16->\> re re r r8 |
    lab16-> lab lab r r8 | sol,16-> sol sol\! r r8 |
    R4.*8 r4 r8 \t {fa16\<( lab reb} \t {mi la do} |
    fa2.\f) | dod4\>( sib sol | mi4\pp) r2 |

    %%% Adagio %%%
    R1*4 R1.*2 R1*3 R1.*2 R1*2 do,2\p r4 |

    %%% Valse %%%
    r lab'''--\pp( lab--) | r solb--( solb--) | r do,--( do--) |
    r solb--( solb--) | r solb--( fab--) | r mib--( mib--) |
    mib4--( reb8--) r | mib4--( do8--) r | sol2.~\p sol4 r | R2.*2 R1
    r2 la'4--\p( la--) | r fa--( fa--) | r mi--( mi--) | r re--( re--) | r reb--( reb--) |
    r la--( la--) | r solb-- r fa-- |
    r2 re'8-.\f la'~-> la16 re,( la'8-.) | mib'4-> la,8-. lab'4.->( |

    %%% Vivo %%%
    la4\sfz) r | R2*8
    re,,,2\mp~ re~ re~ re4 r | R2*17
    r4 mi''8->\pp r |
  }
}

OuvertureFluteUn = { \FluteUn
  \relative {
    \tttt {mi''16 fa re dod' sol sold si} \t {sib,8 re fad} la16 fad mib do |
    mi4 r2 | \tttt {mi16 mi, fa sold la do dod}
    \tttt {mi mi, fa sold la do dod} \tttt {mi la, do dod fa sold la} |
    sib4
  }
}

ActeUnSceneUnFluteUn = { \FluteUn
  \relative {
    \ten do2~--\p do ~ do r4 |
    do2~-- do ~ do r4 |
    do2~ do4 r solb''4.--\pp r8 r4 |
    do,,2~--\p do4 r solb''4.--\pp r8 r4 |
    do,,2~\p do8 r do4 solb''4.-- r8 r4 |
    do,,2~ do8 r do4 solb''4.-- r8 r4 |

    si1\pp( solb2) r4 | mib1( do2) r4 |
    do'1\p( la2) r4 | la2.( mi4~) mi8 r lab4\<( la) |
    \t {\ind #"sostenuto" do8\mp( fa, lab,} \t {re,4) fa'8}
    \t {do'( fa, lab,} \t {re,4) fa'8}
    \t {do'( fa, lab,} \t {re,4) lab'8} \t {fa'4( sib8)} |
    \t {mi\mp( sib reb,} \t {solb,4) sib'8}
    \t {mi( sib reb,} \t {solb,4) sib'8}
    lab'4\mf(\> mi reb |
    do4\p) r2 | R2.*6 \ten do1\f~ do2 r4 |

    %%% Ad libitum %%%
    R1 R2.*2 R1 R2.*2

    %%% Agitato %%%
    \ten re,,1~\f re2 r | R1*2
    r4 r8 \t {re'16\mp( mib fa} sib4-.) r |
    r re,-.-> r2 | R1. r2 r4 \t {r8 fad( sib} |
    re4-.) r r2 | R1. R1
    r8 \t {la16( do re} mib4-.) r2 | R1
    R1. R1*2 R1.*3 R1 R1.
    dod'1\mf\>( re,2 dod1\p) r2 | R1.

    %%% Allegro non troppo %%%
    R1 R2. R1*2 r2 r4 r8 r16 fa,32\<( sol |
    la4-.\mf) r r2 | r8 fa16-.\mp la-. r8 fa16-. la-. r2 |
    R2. r8 sol16-. la-. r8 sol16-. la-. r2 |
    R2. r8 sol16-. la-. r8 sol16-. la-. r2 |
    R2. r8 fad16-.\mf la-. r8 fad16-. la-. r2 |
    dod2--\f r4 | mi,2.\mf r4 | R1*2
    r8 \st {do\p do'16 do, r8 do, do' do'16 do,8 do'16 |
    do,8 do,16 do'-> r do8-- do'16 do,8 do'16-> do, r do8-- do'16 |
    do,,8 do' do'16 do,8 do'16 do,8 do,16 do' |
    r do8-- do'16 do,8 do'16-- do, r do, do'8 |
    do-- do'16 do, r do, do'8 do'16 do,8 do'16 |
    do,8--\pp[ r16 do'] do,8--[ r16 do'] do,8--[ r16 do'] do,8--[ r16 do'] |
    do, do, do'' do, reb'\< reb, mib' mib,\! r4\fermata r8 r16 do'\pp |
    do,8--[ r16 do'] do,8--[ r16 do'] do,8--[ r16 do'] do,8--[ r16 do'] |
    do, do, mib'' mib, fa'\< fa, solb' solb,\! r4\fermata r8 r16 do\pp |
    do,8--[ r16 do'] do,8--[ r16 do'] do,8--[ r16 do'] do,8--[ r16 mib'] |
    mib, solb' solb, lab' lab,\< la' si, si' re8\mf r\fermata r r16 do,\p |

    %%% Moderato %%%
    do,8-- do,16 do' r do8-- do'16 do, do, r8 do'--[ r16 do'] |
    do,8-- sib16 do r do, do'8 r16 do8-- do'16 do,8 r |
    r do r16 sib do8 r8 do, |
    r8 do''16 do, r do' do,8 do,16 do' r8 |
    r do, r16 do'8-- do'16 do,8 do,16 do' r do8-- do'16 |
    do,8 r do,-- r r4 |
    r16 do do'' do, r sib do8 r do,--} r4 |
    \slap \ind #"slap" do8\sfz r r2 |
    r8 do''16-.\p do,-. r do8---. do'16-. do,8( do'-.) r do,~\pp |
    \ten do2.~ do2 r4 do~ \ten do2.~ do2 r8 fa,4.--\p( |
    do'4.) fa16-. sib,-. do4~-- | do8 fa4.~-- fa8 sib16-. mib,-. fa4~-- |
    fa8 r fa16-. fa-. do'-. sib-. do,4~-- |
    do8 sib'16-. fa-. do4-- r16 \st {fa\psempre sib do~-- do sib fa' sib, |
    do8-- sib,16 do sib' do8-- sib,16 do sib' do8-- |
    sib16 do do, sib' do sib, sib' do} | R2. R1
    R2*3 r4 r8 \ttt {sol32\pp\<( la si dod red mid} |

    %%% Allegro marcato %%%
    \st {fad8--\mf) r re--\p r fad,-- r re'-- \t {red16\<( mi mid} |
    fad8--\mf) r re--\p r fad,--} r r4 R1*2 |
    r2 r4 r8 \t {sol16\<( sib mib} |
    fad8-.\mf) r sol,---.\p r sib,---. r re'---. \t {red16\<( mi mid} |
    fad8---.\!) r sol,---. r sib,---. r r4 | R1*2
    r2 r4 sol8.-.\p sol16 si2--( sol8) r sol8.-. sol16 |
    si2--( sol8) r r4 | R1 r2 r4 sol8.-. sol16 si2--( sol8) r sol8.-. sol16 |
    si2--( sol8) r r4 | R1 r2 r4 \st {reb''8\pp r dob( r sib r lab) r reb r |
    dob\p( r sib r lab) r reb r dob\mp( r sib r lab) r r4 |
    dob8\p( r sib r lab) r r4 | r si,8\pp r sib r lab} r |

    %%% Agitato %%%
    re,2.\mf r4 | r re-- r re-- |
    r \t {sold'8\p( si do)} dod16\<( re dod re \tt {dod re dod re dod} |
    re4---.\f) re,2---> r8 \t {fa16( sol la} | sib4-.->\sfp) r r8 \st {fa r4 | fa8 r r4 r2 |
    R1 r4 lab8 r r lab r4 | r8 fa r4 r2 | r8 re} r4 r2 |
    R1 reb'8-.->\sfz r r4 r1 | R1*2
    \st {la16\pp fa fa8 la16 fa fa8 la16 fa fa8 la16 fa fa8 |
    sib16 fa fa8 sib16 fa fa8 sib16 fa fa8 |
    si16\p sol sol8 si16 sol sol8 |
    do16 sol sol8 do16 sol sol8 |
    dod16 la la8 re16 la la8 |
    re16\< la la re sold8->\!} r | R2 R1*4
  }
}

ActeUnSceneUnBisFluteUn = { \FluteUn
  \relative {
    R2.*6
    \ttt {re16( dod) re( dod) re( dod)}
    \ttt { re( mib fa) lab( sib si) }
    \ttt { dod( mi fad sol la do) } |

    %%% Piu vivo %%%
    re4->\f r r2 | r4 \ttt {re,,16\mf\<( fa sol) lab( sib dod) } \ttt { red( mi fad) la( si do) } |
    re4->\f r r2 | r4 \ttt {re,,16\mf\<( mi sol) la( sib do) } \ttt { mib( fa solb) lab( si dod)} |
    re8.---> re16 re8-. re'~-> re16 re, re8-. |
    re'4-> r8 re,~-> re16 re re8-. |
    re'8.-> re,16 re8-. re-> r4 | re-> re8 re4-> re8 |
    R2. \ten re2.~\pp re4. r8\fermata r4 |
    R2. \ten re2.~\pp re2~ re8 r\fermata r4 |
    R1 R2 |

    %%% Largo %%%
    R2*3 R2. R2 R2. R2 R2.*2
    r2 r4 sib,-.\mf | sol2-- r4 sib-. | sol2-- r4 R2 R1
    R2.*2 R2*2
    r2 r8 sib-.\mf | sol4-- r8 sib-. | sol2-- |
    r8 sol\sfz r4 | r8 sol-> sib-> r r4 |
    r2 r8 sol->( sib-> reb->) |
    R2. R2*3 R2.*3

    %%% Adagio %%%
    R1*5
    \ten si1~\pp si2 r | R1*3
    r2 r4 si~\pp | si si32\>( la8..~) la4 si32\>( la8..~)|
    la4 \simile si32 la8..~la4 r8 si32 la16.~
    la2 si32 la8..~la4 r8 si32 la16.~
    la2 si32 la8..~la4
    si la32 si8.. la32 si8.. |
    la4-- la-- si-- si-- la-- la-- si-- la-- |
    la8\p( sol si4) si8( sol la4) |
    la8( sol si4) \simile si8 sol la4 |
    la8 sol si4 si8 sol la4 |
    la8 sol si4 la  la8 sol |
    si4 si8 sol la4 la8 sol |
    si4 la  la8 sol si4 |
    si8 sol la4 la  la8 sol |
    si4 si8 sol la4 la | la la r2 |
    r si4--\pp si-- | si-- r r2 |
    r4 si si si |
    R1*2 R1-\fermataMarkup |
    R2*4
  }
}

InterludeUnFluteUn = { \FluteUn
  \relative {
    R1. R1*3 R1. R1
    sold'4--\mp r sold-- r sold-- r |
    sold-- r sold-- r sold-- r |
    sold-- r8 sold16 sold \ten la2~-- la4 r r2 |
    sold4.--\mp r8 sold4.-- r8 sold4.-- r8 |
    sold4.-- r8 sold4.-- r8 sold4.-- r8 |
    sold4.-- r8 sold4.-- r8 | sold2-- r4 | R2
    \ttt {r16 sold\mp( la si mi re}
    \ttt {fa) re( mi fa sib sol}
    \ttt {do\<) sol( sib do mib reb} |
    fad1~\mf) fad2 r8 mib4-- do8( |
    fad1) r4 sol,( | fad'1~) fad2 r |
    fad1-- r4 \tt {sol,16\mp sib do\< mib reb} |
    fad2\! r8 fad~ \t {fad sol,( fad'} sib2.--->)\f\> |
    \ten fad2.~\pp fad4 r2 | R2. |
    fad,,16\p( sol fad re do re fad re do re fad sol |
    fad2.~) fad4 r2 R2.*2
    fad16( sol fad re do re fad sol fad re do re |
    fad2.~) fad4 r2 R2. fad'16( sol fad mi dod mi fad sol fad mi dod mi |
    fad4) r2 | R2.*2 |
  }
}

ActeUnSceneDeuxFluteUn = { \FluteUn
  \relative {
    %%% Air de la Soprano2 %%%

    R2.*2-\markup "prenez le Piccolo" \Piccolo  R1*2 R2.*2  R1*2  R2.*2
    R1*2  R2.*2 R1*2  R2.*2 R1*2  R2.*2  R1*2 R2.*2
    re''4-.\pp la'-. sold8( mi) re4 | mi8( re) la'( sold) r mi( sold4-.) |
    mi-. re8( la' sold4-.) | la8( sold) mi( re) r la'( |
    sol!4-.\p) do-. si8( sol) fa4-. | sol8( fa do' si) r sol( si4) |
    sol-. fa8( do' si4-.) | do8( si) sol( fa) r do'-. |
    fa,( sol) si4-. do-. fa,8( do') | r fa,-. sol( si) do4-. si8( fa) |
    sol4-. si-. do8( sol~) | sol2 r4 | \repeat unfold 6 {R1*2 R2.*2}
    R1 |  r2 sol4-.\ppp do-. | si8( sol fa4) sol8( fa) | do'( si) r sol( si4) |
    sol4-. fa8( do' si4) do8( si) | sol( fa) r do' fa,( sol si4) |
    do-. fa,8( do') r fa,( | sol si do4) r | si8( do si sol fa4) si8( do |
    si sol fa sol si4) si8( do |
    si sol fa4) si8( do | si sol fa sol si4) |
    si8( do si sol fa sol) si( do | si sol fa sol) r si( do si |
    sol fa sol) si( do si |sol fa) r si( do si |
    sol fa sol) si( do si sol4) | si8( do si sol fa sol) si( do |
    si4) fa8( sol si do | si4) fa8( sol si do |
    si4) fa8\>( solb sib do sib4) | fa solb sib2\!\fermata

    %%%% Récitatif %%%

    R2.*2 R1 R2.*3 R1 R2.*4 r2 r8 r16 fa32( si |
    mi?8\sfz) r r2 R2 R2. R1*2 R2.*5 R1 |

    %%% Duo %%%

    R2. R1 R2. R1 R2. R1 R2. R1 R2. r8
    \t {mi,16\p( fa sol} sib8---.) r8 |R2 r4
    \t {mi,16( fa sol} sib8-.) r4 |r8 r16 fa16-. do16.--( si'!32 mi8-.) r2 | r2 r8
    \t {mi,16( fa sol} sib8-.) r8 |r2 r8
    \t {mi16( red dod} lad8-.) r8 r2 |
    R1 red,,4\mp\<( mi) red( mi) sol\!( la) sol( la) sol-- r4 | r8.
    \t {fa'32\p( mi re } si8-.)  r8 r8
    \t {la16( sold fad} red8-.) r8 r4 r2 |

    %%% Piu vivo %%%
    R2. R1 R2.
    r4 r8 r16 \st {mib la re sold dod} | sol'4\sfz r r2 |
    r4 sol,,--\mf la-- | do8-> re~-> re4 r2 |
    r4 sol,--  do-- | re8-> fa,~-> fa4 r2 |
    r4 re'-- mi-- | la8-> re~-> re4 r  | R2.
    r8 mi-. mi,4-- sold-- la8-> re~-> re4 r |
    r16 la-. la-. la-. re4-- do-- re8->\< sol~->\! sol4 r |
    R2.*6-\markup { Prenez la \concat { G \super de } Flûte } \FluteUn
    r4 r8 fa,,-.->\mf r4 |

    %%% Poco allargando %%%
    re'1~\f re2 sol( mi re) |
    %%% Tempo giusto subito %%%
    sib4-> r r2 | R1*3
    r2 r8 si\< la( do) | dod2\f r4 |
    sol,2--\mf r8 fa'\mp( mi'4~)|
    mi8 r r4 r8 fa,( mi'4~)| mi8 r r2 |
    \tt { r16 sold,,\<( si re mi }
    \tt { sol sib do mib solb }
    lab2\f) r8 fa,\mf( mi'4~) | mi8 r r4 fa,( |
    mi'8) r r2 |
    r8 mi,\mf( la) mi |
    r  mi( si') mi,|
    r  mi( la) mi |
    r  mi( si') mi,|
    r  mi( la) mi |
    r  la\f( la') la,|
    r  la( mi') la, r la( | la'-.) r r2 |
    R1 R2.*3 R2 \ten sib,,2.~\pdolce sib2. r4 R1*3
  }
}

InterludeDeuxFluteUn = { \Piccolo
  \relative {
    R1 R2. R2 R2. R2 R2. R2
    r4 sol''--\mp R2 r4 si-- R2 |
    \t {la'8-.\pp mi-. dod-.} \t {do-. mi-. lab-.}
    \t {sol-. re-. si-.} \t {sib-. re-. solb-.}
    \t {fa-. lab,-. mi'-.} \t {mib-. sol,-. re'-.} |
    \t {reb-.( fa-. la-.} reb8-.) r | R2
    r4 \t {la8-.\pp( reb,-. fa-.} la,8-.) r r4 |
    r re'!8-.( solb,-. sib-.) r r4 | R2
    \ten mi,,1~\mp mi~ mi~ mi4 r r2 R2. |
    \ten re1~ re2 r4 | R2. R1 R2. R2
  }
}

ActeUnSceneTroisFluteUn = { \FluteUn
  \relative {
    R2.*6 re''2.~ re8 r r2 |
    R2.*8 r2 \t {la8 la la} re4 do re8 la~ la4 r2 |
    R2.*5

    %%% Lamento %%%
    R1.*6 R1*5/4*5
    reb2 sib4 r | do2 la4 r |
    reb2 sib4 r | fad2 re4 r |
    \t {sib'16 sib sib} mib8~ mib4 mib4~ mib sib re | sold4. r8 r4 | R2*2

    %%% Tempo I %%%
    R2.*9 sol,,2. lab8 r r2 |
    R2.*3

    %%% Tempo II %%%
    R1.*4 sol2. r | R1.
    r2. sol''8 r r4 |
    si,,1~ si4 r2 | r4 sib |
  }
}

ActeUnSceneTroisBisFluteUn = { \FluteUn
  \relative {
    R1 dod1~dod R1
    r2 dod dod dod R1
    r2 dod dod r fad1~fad~fad2. r4 |
    R1*4
    r2 dod~dod~dod8 r dod4 mi2 dod~dod~dod8 r dod4 mi2. dod8 r |
    r2 \t {sol'8 mi r} \t {sol mi r}
    \t {la sol r} \t {la sol r} \t {la sol r} \t {la sol r} |
    \tt {do16 reb, mi sol la} do8 r
    \tt {mib16 reb,mi sol do} \tt {mib sol, la do mib} |
    fad4 r r2 | R1*10 R2. R1*6
    r2 r4 \tt {lab,16 sib si do dod} |
    mi8 r \tt {re,16 mib fa lab sib}
    mi8 r \tt {re,16 mib fa lab sib} |
    mi8 r \tt {re,16 mib fa lab sib}
    mi8 r \tt {mib,16 fad la si  re} |
    fad2. r4 |
    R1 r2 r4 dod, | mi2 dod | r2 r4 do! mib2 do~ do2. r4 |
    R1*7
    fad2 r4 fad la2 fad~fad4 r r2 R1*9
  }
}

ActeUnSceneTroisTerFluteUn = { \Piccolo
  \relative {
    R2*3 R2. R2*2 R2.*7 R1*2
    re'16 re' sol re lab' mi red sol fad fa lab mi sol re lab' mi |
    red sol fad fa lad si la mi lab mib la fa mi lab sol solb |
    la r lab mib la fa mi lab sol fad si do sib fa la mi |
    sib' solb fa la lab sol do reb si r sib fa si sol fad sib |
    la sold dod re do lab re mib dod la red mi |

    %%% Poco meno %%%
    re8 r r2 R2.*5-\markup { Prenez la \concat { G \super de } Flûte } \FluteUn
    r8 si, sib sol fad mib re'2. | R2.
    \t {r8 fa mi} \t {dod4 do la} | fa'2 r4
    \t {r8 fa mi} \t {dod do la~} \t {la do dod} |
    \t {sold' fa mi~} \t {mi dod do} \t {la fa' sold~} |
    \t {sold dod, do} \t {la fa' sold~} \t {sold16 r dod,8 do} |
    \t {la fa' sold} \t {do, fa sold} \t {mi fa sold} |
    la32 sold fa8.~ \t {fa8 mi dod~ } \t {dod sold fa~ } |
    \t {fa mi dod~ } dod4 r |
    do,!2 r4 |

    r sol'2~ sol fad4~ fad2 r4 |
    r sol2 ~ sol fad4~ fad2 r4 |
    r re'2 ~ re  red4~ red2 r4 |
    r re2  ~ re  red4~ red2 r4 |
    R2.-\markup "prenez le Piccolo" \Piccolo
    r2 r8 mi'16 dod | fa dod do mi dod do fa dod mi8 r |
    R2.*2
    r4 mi16 dod fa dod do mi dod do fa dod mi do mi dod fa dod do mi dod do |
    fa sol mi dod fad dod sol' red re fad mid mi sol red fad dod sol' red re fad mid mi lab sib |
    sol4 r r2 |
    R2.-\markup { Prenez la \concat { G \super de } Flûte } \FluteUn
    r4 sib,,2~sib4 la2 R2.
    r4 la4. mib'8~ | mib4 lab2 |
    r4 sib,2 sib si4~ si r8 fa''16 mi dod do la sold' |
    r4 sib,,2 sib si4~ si r2 |
    r4 re2 re red4 | r16 fa' mi dod do la sold' si sold, sold' si, si' |
    re re r8 r4 re,, | sol2 fad4~ fad si re |
    r8 si sib sol fad mib re' si sib sol fad mib |
    \t {r fa' mi} \t {dod do la} \t {sold' fa mi}|
    \t {dod la fa'} \t {sold fa mi} \t {dod la fa'} |
    \t {sold do, dod} \t {sold' dod, fa} sold16 mi fa sold |
    \grace la8 \pitchedTrill sold2.\startTrillSpan la sold4\stopTrillSpan r2 |
    R2.*8-\markup "prenez le Piccolo" \Piccolo
    \acciaccatura {la16[ mi]} red'16 r r8 r2 R2.*3
  }
}

InterludeTroisFluteUn = { \FluteUn
  \relative {
    R1 R2. R1 R2. R1 R2. R1 R2.
    fad2. r4 fad2 r4 | fa'4. lab8 solb la |
    fa4 r8 la,32 do fa lab |
    do2 sib8 reb do4. r8 |
    mib2 lab4 si | R2*4
  }
}

ActeUnSceneQuatreFluteUn = { \FluteUn
  \relative {
    \partial 4 r16 la'' la la re4 do re8 la4 r R2 r4 r16
    la la la | re4 do re8 la4 r r8 sib r dod re4 r2 | R2*2
    R2-\fermataMarkup

    %%% Allegretto comodo %%%
    R1 R2. R1*2 R1. R1*2 re,2 re re re re re2. r4 |

    %%% Agitato %%%
    la8 r r2 R2.*5 r4 r8 do do do |
    fa2.~ fa8 r r4 sib,16 mib fad si |
    re4 re, re re' r8 re \t {re re re} |
    sold4 sold, sold sold' r8 dod, \t {si sold mi'} |
    sol4 r2 | R2.*4
    r2 \tt {la,,16 re mi sol la}
    dod8 r r4 dod32 dod16.~dod16 dod |
    dod8 r r4 dod8 r dod8.. dod32 dod8 r r4 |
    re8 r r4 re32 re16. r8 re8.. re32 re8 r r4 |
    red8 r r red r4 |
    sold16 la sold mi re la mi re sold,8 r |
    sold''16 la sold mi re4 \t {mi,8 la re} |
    la' r r4 r2 | R2. R1 R2.
    r8 r16 mi,,32 la mi'8 r | R2.
    \t {r8 mib16} la8 r4 | R2.
    r4 la8 mi! mi4 r2 |

    %%% Placando assai %%%
    r2 la~ la2. r4 |
    r fa8. fa16 la2~la2. r4 |
    la,2 lab sol fad2.~ fad r4 |

    %%% Andante a piacere %%%
    r2 \t {dod4 dod dod} \t {re re re} mib r |
    r2 \t {dod4 dod dod} \t {re re re} mib r |
    r2 \t {fa4 fa fa} \t {fad fad fad} sol r |
    r2 \t {fa4 fa fa} \t {fad fad fad} sol r |
    r2 mi'' si4. la fa'2 si, re4. la |
    R1*7 R2*3 R2.*6

    %%% A tempo %%%
    r4 do, reb mib |
    r fad sold la la'2. r4 |
    la,,1~ la8 r r2 |
    r2 r4 r8 \t {sold16 si dod} |
    re2.~re8 r r4 r2 |
    fad,2. fad2 fad4 fad fad2 r8 \t {dod'16 fa la} |
    dod8. dod16 dod8 dod~dod \t {dod16 fa, la} dod4 |
    r16 dod dod8 \t {dod,16 fa la} dod8~dod dod dod dod|
    \t {fa,8 la dod~} \t {dod dod4} dod8 dod |
    r dod \t {dod4 dod8} \t {fa,16 la dod4} |
    red4. r8 red4 | red4 r8 \t {red,16 sol si}
    red8. red16 red8 red~ red4 red r8 fa4 r8 |

    sold2\startTrillSpan sold8\stopTrillSpan sold, sold, r4 |
    lad2~lad8 r | R4.
    sold''2\startTrillSpan sold8\stopTrillSpan sold, sold, |
    sol2~sol8 r r4 |
    sold''2\startTrillSpan sold8\stopTrillSpan sold, sold, |
    la''8 r r4 R2*2
    mi,,4.~mi4 r16 do'8.~do4 lab' |
    R2 R4. r2 r8 \t {sold16 si dod} |

    re4 r r2 | r4 r8 \t {dod,16 sib do} \t {sol4 sib do} |
    dod4 r r2 | R1 r2 \t {mib,4 re mib} | fad2. r4 |
    r8 re'4 mi8 fa4. sol8~sol4 sib do dod |
    re4 r r2 R1*3 R2 R2.*2 R2 R1

    %%% Piu lento %%%
    R2.*21
    R1. R1 R1. R1 R1. r2 la,4 r | R1. R1
    la4 sol fa mi fa8 mi fa sol la2 mib4 r |
    R1.*5 r2 mib4 r | R1. R1 r2 r4 la sol fa |
    mi r r2 | R1.*5 r2 la4 r | r2 r4 fad la r |
    r2 la4 r |
  }
}

EntracteFluteUn = { \FluteUn
  \relative {
    R2*9
    R1*10 r4 \t {reb''16 do sib} sol8 r2 | R1
    r4 dod r2 | R1 r4 re, r re | r dod re r | R1*2
    r2 sold,16 la sold mi re mi sold la | sold2. r4 |
    re16 fad sold si mi2.~ mi4 r r2 | R1*2
    r8 lab' mi mib sol fad fa lab | R1
    r4 \t {lab8 mib la} \t {fa mi lab} \t {sol fad la} |
    r2 r4 r8 \t {do,,16 re mi} | fad4 re' r2 | R1
    r8 \t {sol,16 sib do} dod8 dod re4 r | R1*4
    r4 r8 mi,,32 la do fa sold8 la la lab |
    do reb mib do mi fa sold sold |
    la4 r r8 \t {sold,16 la dod} re4 |
    r8 \t {sold,16 la dod} re4 r |
    r8 \t {sold,,16 re sold} si fad sold si
    re8 \t {sold16 re sold} la mi sold la |

    %%% Fugato %%%
    re4 r dod,2~ dod2. r4 | R2.*2 R2
    R1 r4 dod2~ dod2.~ dod4 r r2 |
    reb sib8 r r4 | R2. do2 la8 r |
    R1 reb2 sib8 r r4 R2. sol2. re'4 r r2 | R1
    r4 do si'~ si2. sol2. r4 | R1
    r4 re2~ re si'4 sold'2~ sold8 r \tt {la,16 si re mi sol} |

    %%% Stretto %%%
    la4 r r2 R1
    r8 \t {mi16 dod red} lad4 r2 |
    mi8 sold mi'4 r2 |
    sol,,4 r8 do r si' r4 |
    sold r sold8 lad r lad |
    sold4 sold8 lad r4 r8 \t {fad16 lad re} |
    fad4 r r r8 \t {la,16 do fa} |
    sold4 r r r8 \t {sol,16 la do} |
    re4 fa16 sol lab sol lab4 r R1*3

    %%% Noir %%%
    R2.-\fermataMarkup R2.*4 R2 R2. R1 R2. R2
    R1*5 R1.*4 r2 sib,, R2.-\fermataMarkup
    R2.*8 R2.-\fermataMarkup

    %%% poco più %%%
    R2.*4 R2.-\fermataMarkup

    %%% Andantino %%%
    mi1~ mi4 r mi1~ mi4 r mi1~ mi4 r si2. r4 R2.

    %%% Largo non troppo %%%
    do'1. si1~ si4 r la1. sol2 fa mi4 r |
    la1.~ la1~ la4 r | la1 mi'2~ mi1~ mi4 r |
    la1.~ la2 sol fa~ fa mi2. r4 |
    la,4 sol fa mi fa8 mi fa sol |
    la1~ la4 r | si1. si2 do2. r4 |
    do2 si la~ la4 sol fa mi fa r |
    do1~ do4 r re2. r4 R1 R2. R2
  }
}

ActeDeuxSceneUnFluteUn = { \FluteUn
  \relative {
    R2.*4 R2 R2.*2 R2 | r2 \tt {si''16 red re fad fa}|
    la4~ la8[ fa]~ fa8 r | r8. red16 si4. la'8~ | la2~ |
    la2.~ | la2~ | la4 r \t {r8 sol,, mib'} | fad2.~ | fad4 r |
    r \tt {sib16 mib dod fad mi} la4~ | la4. sib,8 la'4~ |
    la2.~| la4 r | R2. R2 | R2.*2 R2 |
    mi2.~| mi2.~| mi2.~| mi4 r |

    %%% Entrée de la Soprano Deux %%%
    R2.*2 R1 R2. \t { r2 mi,, la} lab2.~ lab4 r sib2.~sib2 r |

    %%% Andantino %%%
    r2 mi,~ mi2. r4 R2. | r2 mi4~ mi2.~ mi4 r mi~ mi r |
    mi r2 r mi4~ mi2.~ mi4 r2 R2. | R1 R2. R2
    re2 r4 r mi la2~ la4 r2 R1 R2. R1
    re2.~ re2. r4 | R2. R1 mi,2 r4 R1 R2.
    re4 la' sold8 mi~ mi4~ mi2.~ mi2. r4 |
    r8 re la'2~ la2. r4 | r mi2 la2. r4 |
    mi'4. la4. sold4 mi re r |

    %%% Entrée de la Contralto %%%
    sold,8 la sold mi re mi | sold la sold mi re mi sold4~ sold2.~ sold4 r r2 |
    R2. R1 R2. R1 r2 re4~ re re2 r4 | r2 re4~ |
    re2. r4 | r4 mi2~ mi4 r mi r | r re2~ re4 r r2 |
    re''8 r r2 | r r8 re r8 r16 re, | re'8 r r2 | R1 r4 r8 re, r4 |
    re,4 fa8 sib4 mib8~ | mib2 r4 |
    R2.*5 r4 re2~ re r4 | r mib8 fa la2~ la4 r2 |
    R1 lab,4 solb fa mib fa8 mib fa solb lab4 | mib2.~ mib4 r r2 |
    R2. R1 re'8 mib re sib lab sib re4 r r2 |
    la4 sol fa mi fa8 mi fa sol la4 | mi2.~ mi4 r | fad2. r4 |
    R2. R1 R2. R1 R2. R1
  }
}

ActeDeuxSceneUnBisFluteUn = { \FluteUn
  \relative {
    R1 R2. R2

    %%% Presto agitato %%%
    sol'8 mi sol mi sol mi sol mi sol mi | sol2. r2 |
    sol8  mi sol mi sol mi sol mi sol lab| sol2. r2 |
    sol8  mi sol mi sol mi sol mi sol lab| sol2. r2 |
    sol8 mi? sol mi sol mi sol mi sol lab| sol2. r2 |
    sol8  mi sol mi sol mi sol mi sol lab| sol mib reb mib sol4 r2 |
    sol8  mi sol mi sol mi sol mi sol lab| sol mib reb mib sol lab sol4 r |
    sol8  mi sol mi sol mi sol mi sol mi |
    sol   mi sol mi sol mi sol mi sol mi |
    sol   mi sol mi sol mi sol mi sol mi | sol4 r1 | R1*5/4
    r2 dod8 re dod la sol la | dod4 r1 | R1*5/4
    re,8 dod re dod re dod re dod re dod | re4 r1 |

    R1*5/4*6
    mi1*5/4~ mi2. r2 | R1*5/4*3
    fa1*5/4~ fa2. r2 | R1*5/4*9

    %%% Boum %%%
    R1*5/4-\fermataMarkup
    sol8 mi sol mi sol mi sol mi sol mi | sol2. r2 |
    sol8 mi sol mi sol mi sol mi sol mi | sol2. r2 |
    sol8 mi sol mi sol mi sol mi sol mi | sol2. r2 |
    sol8 mi sol mi sol mi sol mi sol mi | sol2. r2 |
    sol8 mi sol mi sol mi sol mi sol mi | sol2. r2 |
    sol8 mi sol mi sol lab sol mi sol lab | sol2. r2 |
    sol8 mi sol lab sol mi sol lab sib reb |

    %%% Air Ténor %%%
    mi'4~ mi16 fa mi fa mi fa mi fa mi4~ \t {mi8 red mi} | red2 r4 red, mi |
    mi'4~ mi16 red mi red mi red mi red mi4 r |
    r4 \t {mi,,8 sol lab} \t {sib si re} \t {mi sol lab} sib16 reb mib fa |
    lab4. mib8 sib sol sol, sol' sib mib | lab2. r4 sol,,8 mi |
    sol mi sol mi \t {lab sib re} \t {mi sol sib} \t {reb mib fa} |
    sib4. lab8 mib sib'~ sib2~ |
    sib4 r \t {sol,,8 mi sol} \t {si re lab'} \t {sib mib lab} |
    si4. lab8 si mib, lab do, mib lab | si2. r4 sol,,8 mi |
    \t {sol lab sib} \t {reb mib mi} \t {sol lab sib} \t {reb mib fa} \t {lab sib si} |
    re8 r reb, fa sib re r reb, fa sib | re4 r r2 sol,,,8 lab |
    sol mi sol mi sol mi sol mi sol r | sol mi sol mi sol lab sol r r4 |
    sol8 mi sol mi sol mi sol mi sol lab | sol mi sol mi sol mi sol r r4 |
    sol8 mi sol mi sol mi sol mi sol lab |

    %%% Moderato assai %%%
    sol8 mi sol mi sol mi sol mi sol mi sol mi sol mi | sol4 r2 r1 |
    sol8 mi sol mi sol mi sol mi sol mi sol mi sol mi | sol4 r2 r1 |
    sol8 mi sol mi sol mi sol mi sol mi sol mi sol mi | sol4 r2 r1 |
    sol8 mi sol mi sol mi sol mi sol mi sol mi sol mi | sol4 mi sol |
    mi sol mi sol~ sol2 r4 R2 |
    do2.~ do4 r2 | do2.~ do4 r2 | si2.~ si4 r2 |
    sol8 mi sol mi sol mi sol mi sol mi sol mi sol4 r2 |
    la4 sol la sol la sol la | sol8 la sol la sol la sol2 r |
    sol8 la sol mi re mi sol2 r4 sol8 mi |
    sol2 r4 | sol8 la sol mi re mi | sol2 r4 |
    sol8 la sol mi re la' | sol2 r4 |
    sol4 mi sol8 mi sol la sol mi re mi |
    sol1 r2 r4 | sol4 mi sol mi sol2.~ |
    sol4 mi sol2 mi4 sol r |
    sol8 mi sol mi sol mi sol mi sol mi sol mi sol mi |
    \repeat volta 2 { sol4 r2 r1 |
    sol8 mi sol mi sol mi sol mi sol mi sol mi sol mi |
    sol4 r2 r8 mi sol mi sol mi sol mi | }
    sol4 r2 r8 mi sol mi sol mi sol mi | sol4 r2 r1 |

    %%% Presto subito %%%
    sol1.~ sol2 r \t {fad'8 mi sol} red'4 | R1.
    \tt {sol,,8 mi sol mi r } \tt {sol mi sol mi r} \tt {sol mi sol mi r} |
    \tt {sol8 mi sol mi r } \tt {sol mi sol mi r} r2 |

    %%% Tempo giusto %%%
    sol2 r4 | R2.*6-\markup "Prenez le piccolo" \Piccolo R2*2
    R2.*4 R2 R4. |
    r4 \tt {sol'16 lab sol lab sol} \tt {lab do lab do re} \tt {fa do lab do fa} |
    sib2~ sib8 sib sib | reb2 r4 |
    sib2~ sib8 sib sib | solb2 r4 |
    sib2 la32 si dod re |mi4 mi8 mi~ mi mi \t {mi16 fad sold} |
    la8 \t {la,16 solb lab} mib8 r r4 | R2.
    r8 \t {la16 mib do} sib8 r r4 | R2.
    r8 \t {la'16 reb, solb} sib,8 r r4 | R2.
    r8 \t {la'16 reb, re} solb,8 r r4 | R2.
    r8 \t {la'16 sib, reb} re,8 r r4 | R2.
    r2 \t {fa16 la lab} do8 | r2 \t {la16 reb do} fa8 |
    \t {reb16 fa mi} lab8 r2 | re,2.
    R2.-\markup { Prenez la \concat { G \super de } Flûte } \FluteUn
    R2 R4. R2 R1*5/8 R2.

    %%% Tempo I %%%
    r2 r4 fa,,16 sib reb solb | la4 r2 la4 r | la r la r2 |
    la4 r2 r8 si sold'4 | R1*5/4-\fermataMarkup
    r4 sol,,8 mi sol mi sol mi sol mi | sol2. r2 |
    r4 sol8 mi sol mi sol mi sol mi | sol2. r2 |
    r4 sol8 mi sol mi sol mi sol mi | sol2. r2 |
    r4 sol8 mi sol mi sol mi sol mi | sol2. r2 |
    r4 sol8 mi sol mi sol mi sol mi | sol2 r4 sol8 mi sol mi |
    sol lab sol2 r4 sol8 mi | sol lab sol4 r sol8 mi sol lab |
    sol1*5/4~ sol2. r2 |
    R1*5/4*7
  }
}

ActeDeuxSceneDeuxFluteUn = { \FluteUn
  \relative {
    R1.*4 la'4 sol fa mi fa8 mi fa sol | la4 mi r1 | R1*2 la4 sol fa |
    mi fa8 mi fa sol la4 mi r | R2.*2 | la4 sol fa mi fa8 mi fa sol la1 r2 |
    R1. la4 mi r2 | R1 la4 sol fa mi fa8 mi fa sol la4 mi r8 |
    r4 r8 la~ la2~ la4 r8 la~ la2~ la4 r8 mib'~ mib2~ |
    mib4 r8 mib~ mib4 r | fa8 sib sib dob r4 sib8 sib | fa'4. r8 mib16 mib fa8 r4 |
    R2. la,,4 sol fa mi fa8 mi fa sol la4 mi2 r4 | mi2. r4 | R2.*2 r2 r8 la~la mi r4 |
    R2.*2 r2 r8 la'~ la mi r4 | R4. mi,1~ mi2. r4 |
    r8 mi' r4 r8 mi'16 mi, r4 | r4 r8 r16 re mi8 r r4 |
    r2 r4 sold16 sold la8 | sib4 r r sold16 sold la8 |
    sib4 r r sold16 sold la8 | sib4 r r sold16 sold lad8 | si!1~ si2 r4 |
    la,4 sol fa mi fa8 mi fa sol la4 mi r2 |
    la4 sol fa mi fa8 mi fa sol | la1.~ la2 r4 | la4 mi r2 |
    la2.~ la1~ la2.~ la1~ la2.~ la2. r4 | la2.~
    la1~ la2 r4 R1 la2.~ la1~ la2.~ la1~ |
    la2 r4 | R1 R2. R1 R2. R1 r2 r8 r16 \t {mi''32 fa sol} |
    la8 r r4 | r r8 \t {mi16 fa sol} | la8 r r4 |
    r2 r8 \t {mi16 fa sol} | la8 r r4 r2 | R1*2
    la8 r2 | la,4 r8 sold sold | la sold, sold la r |
    mib'4 r8 re re | mib4 la,8 r4 | lab4 r4 r8 | R2*5/4
    lab''8 r2 | R2*5/4 lab,,4 r4 r8 | R2*5/4*4
    R1*3 r4 \slap { \ind #"slap" reb sib} r r \slap {sib sol} r | R1*4
    lab'4 r2 R2 R1*2 la,!4 sol fa mi fa8 mi fa sol lab2.~ lab2 r4 | R2.*3
    R2*2 R2.*2 R2*2
    mib''4 reb dob sib dob r | r r8 \slap { sold, la} r r4 |
    r8 \slap {sold la} r r \slap {sold la fad |
    sol} r r4 | R2*4 r4 la8 r | R2
    r4 r8 \slap {sold la} r r4 | R2*7
    la'4 sol fa mi fa8 mi fa sol | la4 mi r | R2.*2 la4 mi r la, mi r |
    R2.*9
  }
}
