%------------------------------------------------------------------%
% Opéra Libre -- violon2.ly                                        %
%                                                                  %
% (c) Valentin Villenave, 2008                                     %
%                                                                  %
%------------------------------------------------------------------%

\include "italiano.ly"

ViolonDeux = {
  #(make-instrument-name 'violin-two "violin" 23.5)
}

PrologueViolonDeux = { \ViolonDeux
  \relative {
    %%% Introduction %%%

    \partial 4 r4 R2. sib'''2.~\pp\upbow\< sib2.~
    sib2:16~\f\> sib4:32~ sib8\! r
    \ten mi,,,2~\f| mi4 r | mi2.~| mi4 r | fa2\f\> mi2.~\mp| mi4 r R2 |
    <sold, re'>2.~| <la re>4 r | R2 <sol red'>2.~|
    <sol mi'>4 mi'8--\<( mi--) \t {mi--( mi-- mi--)} \tt {mi16--( mi-- mi-- mi-- mi--)} |

    %%% Entrée du baryton 2 %%%
    mi2--->\f r4 R2 fa16\mf\< fa fa fa sib sib sib sib |
    sib4.--->\f r8 dod,-.-> r | r dod-.-> r4 | r8 dod-.-> r4 dod8-.-> r |
    r4 dod\upbow \glissando | re8-> r r re-.-> r4| r8 re-.-> r4 |
    mi8-.->\mf r r4 mi8-.-> r | r mi4.\>\upbow fa2~--\p fa r4 |

    %%% Tempo giusto %%%
    <re re'>8\sfz r re16\p( mib) re( mib) |
    re( mib) re( mib) re( mib) re( mib) |
    re( mib) re( mib) re'( mib,) re( mib) |
    re( mib) re( mib) re( mib) re( mib) |
    re( mib) re( mib) re( mib) re( mib) |
    re( fa) re( fa) re( fa) re( fa) | dod'8 r r4 | R2
    <re re'>4\f\downbow re\downbow re,\downbow |
    lab2-- r4 | <re' re'>4.\downbow re\upbow |
    sib,2.\mp\downbow dod mi |
    lab4.\< sol | la8 do4 mib8 fa4 |
    <re re'>8.->\f re16-. re8-. <re re'>4-> re8-. |
    <re re'>4-> re8-. <re re'>8~-> <re re'>16 re-. re8-. |
    <re re'>2.---> r4 | R2*2 R2-\fermataMarkup

    %%% Solo ténor %%%
    R1*2 R2. R1 R2. R1
    R2*4 R2.*11
    r4\fermata \pizz lab'8\p |

    %%% Andantino %%%
    lab, r lab' lab, r sol' r lab-> r |
    sib-> sib, si'-> | lab, r lab' lab, r lab' |
    lab, r lab' lab, r lab' |
    r lab r r sib r r sol r |
    r lab, r sol, r4 | R4.*12
    \arco la'16\>( sib dod re) solb8 |
    \ten <fa sib>4.~\pp <fa sib>~ <fa sib>~ <fa sib>8 lab,16( sib reb mi) |
    fad( la~ la4~) la4.~ la~ la8 r16 red,( mi fad) |
    la( si) <sol do>4~ <sol do>4.~ <sol do> r16 sib,\<( reb solb) la( do\!) |

    %%% A tempo %%%
    \t {re16\sfp\>( lad fad} re8-.) re,-.\! | la4~--\mf la16 r |
    \t {re''16\sfp( la sol} re8-.) re,-. | si4~--\mf si16 r |
    si16 mi lab\< reb fa sol |
    sib8->\f r16 sib sib sib sib8-> r16 sib sib sib |
    sib8-> r16 sib sib sib |
    dod8-> r4 | \pizz sold,8->\mf r re sold-- r4 |
    sold8-> r re lad'-- r4 | mi'8-> r4 |
    mi8-> r4 | \arco mi8-.->\mf r4 |
    lad8-.-> r \ind #"jeté" lad32 lad16. | r8 lad-.-> r |
    lad16\f\> lad lad mi,\! r8 | lad'16\> lad lad mi,\! r8 |
    si''16\> si si sol,\! r8 | si'16\> si si fa,\! r8 |
    si'16\> si si\! r r8 | re,16\mf\> re re\! r r8 |
    fad,16\mp\> fad fad\! r r8 | mi16\sfz\> mi dod dod si si |
    \ten lad4.~\p lad~ lad8 r4 | R4.*5 R8*5 |
    do''16\ff do do la r8 do16->\> do do fad,\! r8 |
    sol16->\mf\> sol sol\! r r8 sol16\> sol sol\! r r8 |
    re16-.\p si-. si-. red,-. dod'-. mid,-. r8 r4 |

    %%% Adagio %%%
    R1*4 R1. r2 mi\pp(\glissando mi'4) r |
    R1*3 R1. r2 mi,\pp(\glissando red'4) r |
    R1*2 r2 la4\mf\glissando la'2.~\pp la4 r2 | R2.

    %%% Valse %%%
    \pizz sol,,4\mp sol' si | dod, la' r |
    sol, red' sol r re r red sol, r4
    \ttt {\arco fad'16\pp( sol fad sol fad sol)} |
    \ttt {fad( sol fad sol fad sol}
    \ttt {fad\> sol fad sol fad sol)} |
    r8 do'\pp( la) r r la( sol) r r sol( mi) r |
    mi'4 \ttt {lab,16\>( sol lab sol lab sol} lab4\!) r | R1 R2.
    r4 \pizz sold,,\mp mi' re lad' r |
    r sold, mi' re fad r | r dod r do |
    \arco <la fad'>8.->\mf <la fad'>16 <la fad'>8-.
    <fad' re'>~-> <fad re'>16 <fad re'> <fad re'>8-.
    <re' la'>8.-> <re la'>16 |
    <re la'>8-. <re la'>~->\< <re la'>8. <re la'>16 <re la'>4-> |

    %%% Vivo al fine %%%
    <re, la' re'>4->\sfz r |
    r8 re16-.\mf re-. mib8-> r |
    r re16-. re-. mib8-> r | R2
    mib16( re) mib( re) mib( re) mib( re) |
    fa( re) fa( re) fa( re) fa( re) |
    lab'\< lab lab lab lab lab lab lab |
    sol\f\> sol do, do do do re re |
    do8\mp r r4 | R2*21
    r4 \pizz mi'\mp
  }
}

ActeUnSceneUnViolonDeux = { \ViolonDeux
  \relative {
    R2*2 R2. R2*2 R2.
    R2*2 \ind #"flaut." do'4.\pp r8 r4 |
    R2*2 <re, sol>4. r8 r4 |
    R2*2 <dod' fad>4. r8 r4 |
    R2*2 <dod fad>4.--\mp r8 r4 |
    \ttt {la,16( mib' si') si( mib, la,)}
    \ttt {la( mib' si') si( mib, la,)}
    \ttt {\simile la mib' si' si mib, la,}
    \ttt {la mib' si' si mib, la,} |
    \ttt {la mib' si' si mib, la,}
    \ttt {la mib' si' si mib, la,} la8 r |
    \ttt {la16 sol' red' red sol, la,}
    \ttt {la sol' red' red sol, la,}
    \ttt {la sol' red' red sol, la,}
    \ttt {la sol' red' red sol, la,} |
    \ttt {la sol' red' red sol, la,}
    \ttt {la sol' red' red sol, la,} la8 r |
    \ttt {mi''16\ppsempre lab, do, do lab' mi'}
    \ttt {mi lab, do, do lab' mi'}
    \ttt {mi lab, do, do lab' mi'}
    \ttt {mi lab, do, do lab' mi'} |
    \ttt {mi lab, do, do lab' mi'}
    \ttt {mi lab, do, do lab' mi'} mi8 r |
    lab,16 do, lab' mi'~ mi la \t {mi lab, do,}
    lab' do, lab' mi'~ mi la \t {mi lab, do,} |
    lab' do, lab' mi' reb fa, reb' mi reb8 r |
    \ttt {fa16\mp( lab, re, sib re lab'}
    \ttt {fa' lab, re, sib re lab'}
    \ttt {fa' lab, re, sib re lab'}
    \ttt {fa' lab, re, sib re lab')} |
    \ttt {fa'( lab, re, sib re lab'}
    \ttt {fa' lab, re, sib re lab'}
    \ttt {fa' lab, re, sib re la')} |
    \ttt {\simile sib' reb, solb, re solb reb'}
    \ttt {sib' reb, solb, re solb reb'}
    \ttt {sib' reb, solb, re solb reb'}
    \ttt {sib' reb, solb, re solb reb'} |
    \ttt {sib'\<( reb, solb, re solb reb')}
    \ttt {sib'( reb, solb, re solb reb')}
    \ttt {sib'( reb, solb, re solb reb')}
    <do do'>8--\f reb-- mib-- fad-- sold-- la--
    \t {reb,16\fp\< reb reb} \t {mib mib mib} \t {fad fad fad}
    \t {sold sold sold} \t {la la la} \t {si si si} |
    <do, re'>4\f\downbow <do re'>\downbow <do re'>\downbow
    <fad fad'>8-- sol-- la-- do-- re-- red-- |
    \t {sol,16\< sol sol} \t {la la la} \t {do do do}
    \t {re re re} \t {red red red} \t {mid mid mid} |
    <fad, sold'>4\!\downbow <fad sold'>\downbow <fad sold'>\downbow |
    <sol! sold'>8---> la-- \t {do16\< do do} \t {re re re} <fad, red'>4\downbow |
    \ten <do do'>1~\fmolto <do do'>2 r4 |

    %%% Ad libitum %%%
    R1 R2.*2 R1 R2.*2

    %%% Agitato %%%
    \ten re,1~\ff re~ re2 r | R1 dod4\f\upbow mi2 dod4 re2 re4-> r |
    r4 \ind #"secco" mib8-.\mf mib-. re4-. r r2 | R1*2
    r4 mib8-. mib-. re4-. r r2 | R1*3
    r4 re---> r1 | R1*2 R1.*3
    r4 r8 red16 \st {red mi4 r |
    r4 red16 red mi8 red16 red mi8} r4 r2 |
    \ten re'1.\f R1.*2

    %%% Allegro non troppo %%%
    \pizz sib4\mf r r2 | R2. R1
    \arco do8-.\pp sib-. do-. sib-. do-. sib-. do-. sib-. | R1
    \ind #"staccato leggiero" fa'16\ppsempre fa la la fa fa la la fa fa la la fa fa la la |
    fa fa la la fa fa la la fa fa la la fa fa la la |
    sol\p sol la la sol sol la la sol sol la la |
    sol sol la la sol sol la la sol sol la la sol sol la la |
    sol\mp sol la la sol sol la la sol sol la la |
    sol sol la la sol sol la la sol sol la la sol sol la la |
    do,\mf\< do do do do do do do do do do do |
    do do do do do do do do do do do do do do do do\! |
    r4 mi,8\f\<( dod'4.\!) | r8 re,\mf( dod2.) |
    sol2:32~\mp\< sol2~\mf\> sol2.\p r4 |
    re'16\mf re la' la re, re la' la re, re la' la re, re la' la | R1
    re,16\mf re la' la re, re la' la re, re la' la | R2.*2
    R1*6

    %%% Moderato %%%
    sib8--\p[ r16 do-.] sib8-- r sib--[ r16 do-.] sib8--[ r16 do-.] |
    sib8--[ r16 \simile do] sib8 r sib[ r16 do] sib8 r |
    sib8[ r16 sib] do-.[ sib-. r do] sib8--[ r16 sib,-.] |
    do8--[ r16 \simile sib] do8[ r16 sib] do8[ r16 sib] |
    do8[ r16 sib] do8[ r16 do'] sib8[ r16 do] sib8[ r16 sib,] |
    do8[ r16 sib] do8[ r16 sib] do8[ r16 sib] |
    do8[ r16 do'] sib8[ r16 sib,] do8[ r16 sib] do8[ r16 sib] |
    do8[ r16 sib] do8[ r16 sib] do8[ r16 do'] |
    sib8[ r16 do] sib8[ r16 sib,] do8[ r16 sib] do8[ r16 sib] |
    do8[ r16 sib\pp] do8 sib16-. do-. r8 sib16-. do-. |
    r8 \simile sib16 do r sib do8 r16 sib do8 r16 sib do8 |
    sib16 do r8 do16 sib do8 r16 sib do8 |
    sib16 do r8 sib16 do r8 sib16[ do r sib] do8[ r16 sib] |
    do8[ r16 sib] do8 sib16 do r8 r16 sib |
    do8[ r16 do] r8 sib16 do r8 sib16 do r8 do |
    r16 sib\ppsempre do8 r8 sib16 do r sib do8 |
    r16 sib do8 r16 sib do8 sib16 do r8 sib16 do r8 |
    sib16[ do r sib] do8[ r16 sib] do8[ r16 sib] |
    do8 sib16 do r8 sib16 sib | do8\sfz r r2 |
    \repeat tremolo 16 {do32\pp\<( sib)} |
    do8->\f r16 sib32-. sib-. do8-> r16 \simile sib32 sib |
    do8 r16 sib32 sib do16 r \t {sib16 sib do} | R2*2

    %%% Allegro marcato %%%
    \acc {<dod sold' sol'! red'>4\sfz dod\mp <dod sold'> dod |
    <dod sold' sol'! red'>4\sfz dod <dod sold'>} r |
    \st {sol'!\p sol mi mi} <re sib'>2--->( sol8) r r4 | R1
    \acc {<lab re sol dod>4\sfz dod,\mp <sib lab'> dod |
    <lab're sol dod>\sfz dod, <sib lab'>} r |
    \st {do'\p do lab lab} <si fad'>2--->( do8) r r4 | R1
    r4 fad,\mp\>( mib8\!) r r4 | r fad\>( mib8\!) r r4 |
    \st {mib\p mib re re} reb2\>( do8\!) r r4 |
    r fad\mp\>( mib8\!) r r4 r fad\>( mib8\!) r r4 |
    \st {mib\p mib reb reb} dod2\>( re8\!) r r4 | R1
    r2 r4 \pizz sib'\p lab( fa mib) r lab( fa mib) r |
    r sol\> fad mi\! |

    %%% Agitato %%%
    \arco <do re>2.\f r4 | R1*2
    re2-- fad16\<( sold la si) re8-.( fa-.) |
    \st {sib8\sfz <re,, la'>\pp <la' fa'>-> <re, la'> <la' fa'>-> <re, la'> <re la'> <do' la'>-> |
    <re, la'> <re la'> <la' fa'>-> <re, la'> <la' fa'>-> <re, la'>-> <re la'> <do' la'>-> |
    <re, la'> <la' fa'>-> <re, la'> <la' fa'>-> <re, la'> <re la'> <do' la'>-> <re, la'> |
    <re la'> <sib' fa'>-> re, re <lab' mib'>-> re, <sol re'>-> re |
    <sol re'>-> re re <do' lab'>-> re, re <sol re>-> re |
    <lab' mib'>-> re, re do'-> dod sol sib mib-> |
    sib dod sol'-> mib sol dod-> sol-> sold->} |
    dod->\sfz r r4 r1 | R1*2
    \ind #"staccato leggiero" fa,16\pp fa mib mib fa fa mib mib fa fa mib mib fa fa mib mib |
    mi mi do do mi mi do do mi mi do do |
    fa fa sol sol fa fa sol sol |
    \st {\t {re8\p fad( sol)} \t {re fad( sol)} |
    \t {mi sol( la)} \t {mi sol( la)} | \t {mi sold( la)} la->} r | R2 R1*4
  }
}

ActeUnSceneUnBisViolonDeux = { \ViolonDeux
  \relative {
    R2.*5
    r4 \ttt {lab16\p( sol sib si lad dod) } re8-- r |
    \ttt {lad'16( sold lad dod lad dod)}
    \ttt {mi( dod mi fad mi fad) }
    \ttt {sol\<( fad la) sol-- do-- la-- } |

    %%% Piu vivo %%%
    re4\sfz\downbow re,\downbow re,2\downbow | R2.
    re''4\f\downbow r8 re,,~\downbow re2 | R2.
    <fa' re'>4->\ff <fa re'>8-- <fa re'>4-> <fa re'>8-- |
    <mib re'>4-> <mib re'>8-- <dod re'>4-> <dod re'>8-- |
    <fad re'>4-> <fad re'>8-- <sold re'>4-> <sold re'>8-- | <sold re'>2.---> |
    R2. r4 fa,2~--\p fa4. r8\fermata r4 |
    R2. r4 fa2~-- fa2~fa8 r\fermata r4 |
    R1 R2

    %%% Largo %%%
    R2*3 R2. R2 R2.
    reb2~\p\> reb4\! r2 |
    <sol, mib'>2\< mib'4 si4--\mp r r2 |
    R1 R2. R2
    r2 r8 fa'4.\pp\upbow |
    \ten re2.~ re2 r4 |
    sib'2--\mp\> fa~\pp fa4 r2 |
    R2*3 R2. R1 R2.
    r4 <sib, re>\mf\downbow \ten <sib mib>2~\downbow <sib mib>
    <la red>2.\mp r2 <la red>4-.\downbow |
    <sold mi'>2.\downbow

    %%% Adagio %%%
    R1*33 R2*4
  }
}

InterludeUnViolonDeux = { \ViolonDeux
  \relative {
    R1. R1*3 R1. R1 R1.*2 R1
    r2 re8\mf( mi \t {fa la sold} | si1.~)
    si1~ si4\> la~ la sold2.~\p sold4 r2 |
    R2 \ttt {r16 re\p( mi fa la sold}
    \ttt {si sold la si mi re }
    \ttt {fa\< re mi fa sib do} |
    sol1~--->\f) sol2 r8 reb'4( sib8) |
    sol2.---> r8 mi( dod'4.) r8 |
    do1~---> do2 r8 sol4.( | fad'1--->) sol,2 |
    r16 lab( \t {sib mib reb} fad4~) fad4. mib,8( |
    re'2.--->\ff)\> | <sol, dod>2.~\p <sol dod>4 r2 |
    R2.*3 mi,2.~\pp mi~ mi~ mi~ mi2 r4 |
    mi2.~ mi~ mi~ mi \pizz fad4 r sol r sold r |
  }
}

ActeUnSceneDeuxViolonDeux = { \ViolonDeux
  \relative {
    %%% Air de la Soprano2 %%%

    R2.*2 R1*2  R2.*2 R1*2  R2.*2 |
    re4-.\mp la'-. sold8( mi re4-.) |
    mi8( re la' sold)-. r mi sold4-. |
    mi-. re8( la' sold4)-. |
    la8( sold mi re)-. r la'-. |
    R1*2 |  R2.*2 |
    sold8\pp\(( la sold mi) re( mi) sold( la |
    sold mi) re( mi) sold4-.\) sold8\(( la |
    sold mi) re( mi) sold( la |
    sold mi) re( mi) sold4-.\) |
    R1 | re4-.\pp la'-. sold8( mi re4-.) |
    mi8( re la' sold)-. r la( |
    sold mi) re( mi) sold4-. |
    re-+ <sold' re'>-.-> r2 |
    r8 <sold re'>8-.-> r4 re,-+ <sold' re'>-.-> |
    r8 <sold re'>-.-> r4 <sold re'>-.-> r8 re,-+ r <sold' re'>-.-> r4 |
    sol,,!-+ <si'' sol'>-.-> r2 |
    r8 <si sol'>-.-> r4 sol,,-+ <si'' sol'>-.-> |
    r8 <si sol'>-.-> r4 <si sol'>-.-> |
    r8 sol,,-+ r <si'' sol'>-.-> r4 |
    sol,,-+ <si'' sol'>-.-> r2 | la,,4-.\mf re8->( si) r la-. si4-> |
    re4-. sol8( fa) do'4-> | fa,8( sol) si-> do-> r4 |
    sol,->\ff do-> re8( fa) re( do) |
    sol( do) re( fa) re( do) sol( do) | re2.~| re4 r2 |
    \ind #"détaché" re'8 mib re sib lab sib lab fa |
    re fa re do sol2\> | lab2.~\!| lab2 r4 |
    R1*2 R2.*2 R1*2 R2.*2 |
    <re la'!>1~\ppp\CaV <re la'>~\CaV |
    <re la'>2.~\CaV <re la'>~\CaV |
    <re la'>1~\CaV <re la'>~\CaV |
    <re la'>2.~\CaV <re la'>2\CaV  r4|
    \flaut sold8\ppp( la sold mi re mi sold la |
    sold mi re mi sold4) sold8( la |
    sold mi re mi sold la |
    sold mi re mi sold4) |
    sold8( la sold mi re mi sold la |
    sold mi re mi sold4) sold8( la |
    sold mi re mi sold la |
    sold mi re mi sold4) |
    R1*2 R2.*2 R1*2 R2.*2 R1*2 R2.*2 R1 R1-\fermataMarkup  |

    %%% Récitatif %%%

    r4 r8 mib4.--\mp\downbow | do2.--\downbow~| do1~| do2 r4 |
    r4 r8 re4.--\downbow |  si2.~--\downbow| si1~| si2 r4 |
    R2.| r4 r8 <re sib'>4--\mp\downbow <si! sol'>8~--\downbow|<si sol'>2.~|
    <si sol'>8 <si sol'>~ \t {<si sol'> <si sol'> <si sol'>}
    si4:32\< |
    si8\sfz r r2 | R2 |R2.| R1*2 | R2.*5 | R1 |

    %%% Duo %%%

    r8 \pizz <sib re>\mp\arpeggUp
    r8 \simile <sib re> r8 <sib re>
    \repeat unfold 13 {r8 <sib re>} <sib re>4 |
    \repeat unfold 7 {r8 <do mi>} |
    \repeat unfold 3 {r8 <red fad>} <red fad>4 |
    \repeat unfold 4 {r8 <dod fad>} r4 | R2
    \arco fa!8--\mf
    fa-- fa-- fa-- \simile fa fa
    \repeat unfold 22 fa
    lad-.\psubito lad-. lad-. lad-. \simile lad lad
    \repeat unfold 8 lad
    mi'\mf\< \repeat unfold 7 mi
    sol\! re' sol, do, re' sol, |
    do, re' sol, do, re' sol, |
    R2. R1 |

    %%% Piu vivo %%%
    sol,,16\fp sol sol' sol sol, sol sol' sol sol, sol sol' sol |
    sol, sol sol' sol sol, sol sol' sol sol, sol sol' sol sol, sol sol' sol |
    sol,-- sol fad' fad sol, sol fad' fad sol, sol mi' mi |
    sol,\< sol mi' mi sol, sol dod dod sol sol dod dod |
    <sol sol'>4\ff \st {<sol sol'>8\p <sol sol'> <sol sol'> <sol sol'> <sol sol'> <sol sol'>} |
    dod2-> r4 |
    \st {<sol sol'>8 <sol sol'> <sol sol'> <sol sol'> <sol sol'> <sol sol'> <sol sol'>4} |
    dod2-> r4 |
    sol4->\downbow sol->\downbow \t {mi'--( re-- fa--)} |
    dod2-> \tt {sib16( la lab sib si)} |
    sol4-> r2 |
    \pizz <sol re'>4\f <sol re'> <sol re'> <sol re'> r2 |
    si4 si si | sib-> r2 |
    \arco re4-.-> r8 re-. r16 re re8-. |
    re4-> \tt {sib16( dod red mi fad } \tt { mi fad la si do } |
    re4->) \tt {sib,16( do reb mib fad} \tt {mib fad sold la si}|
    re4->) \tt {sib,16( si dod mi fad } \tt { mi fad sol la do} |
    re4->) \tt {sib,16( do mib fa solb} \tt {fa solb lab si dod}|
    re4->) \tt {do,16( mib fa fad sold} \tt {fad sold si re dod}|
    mi4->) \tt {mib,16( fa fad sold si} \tt {sold si re dod mi} |
    sol4->) \ttt {si,16\< si re re dod dod} \ttt {sol' sol mi mi la la} |

    %%% Poco allargando %%%
    sib2.\ff la4~|la4. sol8~sol2\> | mi\!( re4) r |
    %%% Tempo giusto %%%
    \st {sib16->\fp re, re re sib-> re re re sib'-> re, re re sib-> re re re |
    sib'-> re, re re sib-> re sib'-> re, sib'-> re, re re sib-> re sib'-> re, |
    do'-> mi, mi mi mi mi do'-> mi, do'-> mi, mi mi mi mi do'-> mi, |
    re'-> fad, fad fad re-> fad fad fad re'-> fad, fad fad re-> sib' sol'-> sib, |
    sold'-> do, do do mi,-> do' do do mib-> sol sol\< sol reb-> reb mi-> mi} |
    <dod dod'>2\f r4
    \ten <mi si'\harmonic si'>1~\mf <mi si'\harmonic si'>~ <mi si'\harmonic si'>4 r2
    R2
    <mi si'\harmonic si'>2~ <mi si'\harmonic si'>~ <mi si'\harmonic si'>2.~
    <mi si'\harmonic si'>8 r \tt {dod,16\mf\<( mi fad la si)} \tt {la( si re mi sol)}|
    <sol, la mi'>4--->\f <sol la mi'>---> <re' mi>---> <re mi>---> |
    <sol, la mi'>---> <sol la mi'>---> <re' mi>---> <re mi>---> |
    re16->\< \ind #"détaché" re, sol la re mi sol la |
    <re,, la' re'>4--->\ff <re la' re'>---> <re sol' la>---> <re sol' la>---> <re la' re'>--->
    \pizz <fa' mi'>8 r r2 |

    %%% Largo assai %%%
    R1 R2.*3 R2
    %%%FIX ME!%%%
    \arco \ten sib,,2.~\pp sib2. r4 |
    r2 \pizz la'4 sold | sol r dod, r | re r r2 |
  }
}

InterludeDeuxViolonDeux = { \ViolonDeux
  \relative {
    R1 R2. R2 R2. R2 R2. R2
    \pizz sol4--\mf \t {re'8 mib sib'} |
    si,4-- \t {re8 fad si} |
    sol,4-- \t {re'8 mib sib'} |
    re,4-- \t {mi8\< la dod} |
    re4--\psubito \t {sol,,8 re' la'} |
    mi'4 \t {sol,,8\< re' la'} |
    mi'4 \t {la,8 re sol} | do4--->\fp lab, |
    \t {do8 sol mi} mib4 |
    \t {sib'8 fa re} reb4 |
    \t {lab'8 mib do} si4 |
    \t {solb'8 reb sib} la4 |
    \t {mi'8\< lab do} mi4 | mi'->\! r |
    \arco \ten re,,1~\p re~ re~ re2 r | R2.
    \ten si1~ si2 r4 | R2. re2.--\pp r4 R2. do4-- r |
  }
}

ActeUnSceneTroisViolonDeux = { \ViolonDeux
  \relative {
    R2.*5 <sib la'>2.:32~\mp <sib la'>:\< <sib la'>4->\! r2 |
    r4 \pizz red\mf r | r do r r8 sib-> r dob sib4 |
    \arco dod2.\fp R2.*2 dod2.\p re2.:32\< |
    <mi red'>8-.\f <mi red'>4---> <mi red'>8-. <mi red'>4~--->
    <mi red'>8 <mi red'>4-- <mi red'>8-. \ten <mi red'>4~--->
    <mi red'> r \pizz si\mf sib r2 |
    R2.*4

    %%% Lamento %%%
    R1.*6 R1*5/4*5 R1*4
    \arco <sol'mib' sib'>4--->\f <mib' sib'>8-> <mib sib'> \t {<mib sib'>-> <mib sib'> <mib sib'>}
    <sol, mib' sib'>4---> <mib' sib'>8-> <mib sib'> \t {<mib sib'>-> <mib sib'> <mib sib'>}|
    <mib re'>16->\< <mib re'> <mib re'> <mib re'> \t {<mib re'>->\! <mib re'>-> <mib re'>->} <mib re'>8->\sffz r4 |
    R2*2

    %%% Tempo I %%%
    \pizz re,4\mp si r do la r |
    R2.*7
    \repeat tremolo 12 {\arco fa'32\< sol} fa4-.->\sfz r2 |
    R2. \pizz mi4\mp r dod r2 re4 |

    %%% Tempo II %%%
    R1.*3 r2 sol,4\p lab2.~\upbow\< lab2.\! r4 r2 |
    r2 r4 re'2.:32\ppp <re dod'>2.:\mp <re dod'>4->\sffz r | R1 R2. R2
  }
}

ActeUnSceneTroisBisViolonDeux = { \ViolonDeux
  \relative {
    R1*8 r2 la'8\mp( sol) sib4-- fad4-- r r2 |
    R1*20
    sib,1\pp sib2-- sib-- sib-- sib-- sib-- sib-- |
    fa''4\mf(\glissando re8) r re4(\glissando si8) r |
    la\>(\glissando fad16) r fad8(\glissando mib16) r mib8( do16\!) r |
    R1*16
    r2 r4 r8 \pizz do\p |
    r do r4 r r8 do |
    R1*3
    r2 \arco sol'\mp( fad mid | fad4) r r2 |
    R1*4
    red1\p\> \ten dod~\pp dod~ dod~ dod~ dod~ dod\fermata
  }
}

ActeUnSceneTroisTerViolonDeux = { \ViolonDeux
  \relative {
    R2*3 R2. R2*2 R2.
    \pizz <re re'>4\f r2
    r2 \arco fad4~\p fad2.~ fad4 r2 |
    \pizz <sib, sib'>4 r2 R2.
    <si si'>4 r r2 <do do'>4 r <dod dod'> r |
    <re re'>-> r r2 R1*3 R2. |

    %%% Poco meno %%%
    \arco
    <re sol\harmonic re''>2.:32 ~\pp
    <re sol\harmonic re''>: ~
    <re sol\harmonic re''>: ~
    <re sol\harmonic re''>: ~
    <re sol\harmonic re''>: ~
    <re sol\harmonic re''>: ~
    <re sol\harmonic re''>: ~
    <re sol\harmonic re''>: ~
    <re sol\harmonic re''>: ~
    <re sol\harmonic re''>: ~
    <re sol\harmonic re''>4
    \ordin re''2:32~\p re2.: ~ re:~ re: ~ re4: ~ si: sib:
    re2.:32~ re8 r r2 | R2.*13

    r4 <si,,? re>2--\mp <si re>--\< <si re>4~--\! <si re>2 r4 |
    r  <si re>2--\mp\< <si! sib'>-- <mib re'>4~--\! <mib re'>2 r4 |
    R2.*3 R1 R2.
    r4 fa2~--\mp\>( fa4 mi2\!) | R2.
    r4 \t {mi8\p( la mi} \t {la mi la)} \t {mi( la mi} \t {la mi la}  mi4) |
    r  \t {sol8\p( sib sol} \t {sib sol sib)} \t {sol( sib sol} \t {sib sol sib)}
    \t {si( fad si} \t {fad\> si fad\!)} r2 |
    r4 \t {sol8( sib sol} \t {sib sol sib)} \t {sol( sib sol} \t {sib sol sib)}
    \t {si( fad si} \t {fad\> si fad\!)} r2 |
    r4 \t {sib8\mp( re sib} \t {re sib re)} \t {sib( re sib} \t {re sib re)}  \t {si( red si}
    \t {red si red} si4) r |
    r  \t {sib8\mf\>\(( sol) sol(} \t {re) re( sib)\!\)} \t {re'\>\(( sib) sib(} \t {sol) sol( re)\!\)}
    \t {red'\>\(( si) si(} \t {fad) fad( red)\!\)} \t {fad'\<( red si)} \t {sib'( sol re)\!} |
    r sol\f( fad) mib re si sib'-- sol( fad) mib( re) si
    sib'-- sol( fad) mib( re) si( sib) sol4--\>( re--) si8~--\mp si2 r4 |
    R2.*4

    la'4\p( sol fa mi) fa8( mi fa sol) la4( mi2~) mi2.~ mi2 r4 |
    R2.*5
  }
}

InterludeTroisViolonDeux = { \ViolonDeux
  \relative {
    R1 R2. R1 R2. R1 R2. R1 R2.
    <dod la'>16-.\pp <dod la'>8--( <dod la'>-- <dod la'>--) <dod la'>--(
    <dod la'>-- <dod la'>--) <do sold'>--( <re sib'>16-.) |
    <dod la'>-. <dod la'>8--( <dod la'>-- <dod la'>--)
    <do sold'>-- <lad fad'>--( <dod la'>16-.) |
    \simile <la'fa'>\p <la fa'>8 <la fa'> <la fa'>
    <do lab'> <sib solb'> <dod la'>16 |
    <la fa'> <la fa'>8 <la fa'> <la fa'> <la fa'>16 |
    <si sol'>\mf <si sol'>8 <si sol'> <si sol'>
    <si sol'> <la fa'> <re sib'>16 |
    <si sol'> <si sol'>8 <si sol'> <si sol'> <si sol'>16 |
    <mi do'>\f <mi do'>8 <mi do'>16 <mi do'> <mi do'>8 <mi do'>16 |
    <sol mib'>\ff <sol mib'>8 <sol mib'>16 <sol mib'> <sol mib'>8 <sol mib'>16 |
    R2*2
    \tt {sol,16\f\< si sib re dod} fa32( mi) lab( sol) si( sib) re( dod) |
    do8\sffz r r4 |
  }
}

ActeUnSceneQuatreViolonDeux = { \ViolonDeux
  \relative {
    \partial 4 r4 R1*5/8 R2*3 R1*5/8 R2*2
    r2 r16 re\< re re sol4--\mf re-- re8---. mi---. r4 R2-\fermataMarkup
    R1 R2. R1*2 R1. R1*2 R1. R1*2

    %%% Agitato %%%
    re2.:32\fpp re8-.-> r mi'--(\mp la--) re--( la--) |
    mi8-. r r2 <mi, la>8-.-> r \t {la\mf mi'( si')} \t {fad' si,( mi,)} |
    la,8 r r2 R2.*2
    sol2.:32\pp\< sol8-.->\mp r sib,16( do mib fa) fad\<( sold si dod) |
    re8--\f sol-- do16-- re,\< re re sol8--\! la,-- | re4---> r2 |
    re8-- sold-- dod16-- red,\< red red sold8--\! la,-- | re4---> r2 |
    r16 la\<\upbow la la re8\! r r4 |
    r16 sib,\mp\< sib sib mib8\! r r16 si!\< si si |
    mi!8\! r r16 \simile do do do fa8 r |
    r16 dod dod dod fad8 r r16 re re re |
    sol8 r r16 la la la re8 r |
    r16 la\< la la mi'8 r r16 sol sol sol |
    dod4--->\f sol8--( la--) dod16->( re dod la) |
    sol8-- re-- sol--( la--) dod16->( re dod la) |
    sol8-- re-- sol--( la--) dod16->( re dod sib) |
    lab8-- mib-- lab--( sib--) re16->( mib re sib) |
    la!8-- mib-- lab--( sib--) red16->( mi red si) |
    la!8-- mi!-- la--( si--) red16->( mi red si) |
    la->\ff( re mi sold) mi->( re la re) mi->( sold) mi( re) |
    la->( re mi sold) mi->( re la re) mi->\<( sold) mi( re) |
    mi8->\! r r4 r2 | \dwnb {<re,, mi>4\mp <re mi> <re mi> <re mi>2. r4 |
    <re mi>4 <re mi> <re mi> <re mi>2 <re mi>4 <re mi> <re mi> |
    <mib fa>2 <mib fa>4 <mib fa> <mib fa> |
    <mi fad>2} <mi fad>\>\upbow <mi fad>4--\! |
    \t {r4 fa--\mp( fa--} fa2~-- \ten fa2.) r4 |
    \t {r4 fa--( fa--} fa2~-- \ten fa2.) r4 |
    \t {fa--\>( fa-- fa--)} \t {mi--( mi-- mi--)} \t {mib--( mib-- mib--)} |
    \t {re--\p( re-- re--} re~-- \ten re2.) r4 |

    %%% Andante a piacere %%%
    \repeat tremolo 16 {la32\pp( dod} la2.) r4 |
    \repeat tremolo 16 {la32( dod} la2.) r4 |
    \repeat tremolo 16 {sold32( si} sold2.) r4 |
    \repeat tremolo 16 {sold32 si} sold2. r4 |
    \t {r <la'dod>--\mf <la dod>--} \t {<la dod>-- <la dod>-- <la dod>--} |
    \t {<sold re'>--\< <sold re'>-- <sold re'>--} <la mib'>8-- <la mib'>-- |
    \t {r4\! <re fad>--\f <re fad>--} \t {<re fad>-- <re fad>-- <re fad>--} |
    \t {<mi sold>\< <mi sold> <mi sold>} <red la'>8 <red la'>\! |
    R1*7 R2*3 R2.*2
    \pizz si,4\mp r re\< fa\! r2 dod4 r2 sol'4 r2 |

    %%% A tempo %%%
    \arco
    <re mi>2--->\f <re mi>4-- <re mi>-- |
    <mi sol>-- <mi sol>2---> <mi sol>4-- |
    <fa sib>-> <fa sib>-> <fa sib>-> r |
    R1 R2. \ten la,1~\mf la4 r2 |
    la1:32\fpp <do mi>2.--\mf <dod re>2-- si4-- dod-- | re2-- r4 |
    <fa' dod'>2--->\f( <fa dod'>4--) <fa dod'>-- <fa dod'>4.---> <fa dod'>8~-- <fa dod'>4 r8 dod16\<( fa) |
    la2\! \t {la,8\<( dod fa)} la2--->\! \t {si,8\<( red sol)} |
    si8.--->\ff si16 si8-. si4-> si8-. | si8.---> si16 si8 si4-> si8~-> si4 |
    <red, si'>~---> \t {<red si'>8 <red si'>4~--->} \t {<red si'> <re si'>8~--->}<re si'>r|
    dod,16\upbow\f( si) si( dod) dod( si) si( dod) dod( si) si( dod) |
    dod( si) si( dod) dod( si) | \ten lab2.~-- lab8 r4 |
    dod16\upbow\f( si) si( dod) dod( si) si( dod) | dod( si) si( dod) dod( si) |
    do2~-- do4. r8 |
    mi16\upbow\f( re) re( mi) mi( re) re( mi) | mi( re) re( mi) mi( re) |
    dod2~--\mf dod4 r |
    re16\mp( mi) mi( re) re( mi) mi( re) | re( mi) mi( re) re( mi) |
    mi\<( re) re( mi) mi( re) re( mi) mi( re) re( mi) sol( fa) fa( sol) |
    R2\! R4. r2 \ind #"détaché" sib16\p\< dod fad la |

    re4->\f r r \simile dod16 do sib do, |
    re,4->\CaV re16\pleggiero re re re re re re re re re re re |
    re re re re re re re re re re re re re re re re |
    re re re re re re re re re re re re re re re re |
    re re re re re re re re re re re re re re re re |
    \cresc mib-> mib mib mib mib mib mib mib mib mib mib mib mib mib mib mib |
    mib mib mib mib mib mib mib mib fad-> fad fad fad fad fad fad fad |
    fad fad fad fad sold-> sold sold sold sold sold sold sold sold sold sold sold |
    re'8->\f re, re re' re\> re, re4\! | R1*3 R2 R2.*2 R2 R1

    %%% Piu lento %%%
    R2.*11
    r4 \flaut do2~ do r4 |
    r4 re2~ re r4 |
    r4 mib2~ mib r4 | R2.
    r4 \ordin mi!2~ mi r4 | R2.
    R1. R1 R1. R1 R1. R1 R1. R1 R1. R1 R1.*5
    R1 R1. R1 R1.
    R1 R1.*5 R1 R1. R1
  }
}

EntracteViolonDeux = { \ViolonDeux
  \relative {
    R2*9
    R1*2 r4 \st {sold'8\mf sold la4} r R1*7
    r4 \jet sold'32\mp sold8.. sold32 sold8.. r4 |
    sold32 sold8.. sold32 sold8.. r4 sold32 sold8.. |
    r4 sold32 sold8.. r4 sold32 sold8.. |
    r4 sold32 sold8.. sold32 sold8.. r4 | R1*2
    re,16->\mf re re re re4 r8 mib16-> mib mib mib re8-. |
    mib16-> mib mib mib re4-- r2 |
    re2:16\pleggiero re: re: re: re: re: re: re: re: re: |
    re4-- r r2 | \pizz la'4\mf r r8 fa'? r la, |
    R1 \arco si,4.--(\mp do8~-- do4) re-- |
    mib-- \t {mi8\<( red mi)} fa( solb) fa( fad) |
    sol4->\f r r <re dod'>-.->\mp r <lab' re>-.-> r <re, dod'>-.-> <re re'>-.-> r r2 |
    sib16->\mf sib sib sib sib4 r8 sib16-> sib sib sib sib8-. |
    sib-> \pizz mib''\mp sol,4-- r8 si mib,4-- |
    r8 fad sib, re fad, mi''-> sold,4-- |
    r8 do mi,4-- r8 sol si, mib |
    sol,4-- r \arco sold8-.\mf sold-. la4-. |
    r8 sold-. sold-. la-. r4 sold8(\upbow la-.) | re4---> r r2 |
    re,16->\f re re re re8-. re16-> re re re re8-. |
    re16-> re re re re8-. re16-> re re re re8-. re16->\< re re re |

    %%% Fugato %%%
    re1~\ff re2. r4 | r re2\mf(\glissando dod'2.~\>) dod2~\p |
    dod1~ dod2.~ dod~ dod1~ dod~ dod2.~ dod4 r2 |
    r <do, fa\harmonic do''>~\pp <do fa\harmonic do''>1~
    <do fa\harmonic do''>2.~ <do fa\harmonic do''>~ |
    <do fa\harmonic do''>1~ <do fa\harmonic do''>~
    <do fa\harmonic do''>2.~ <do fa\harmonic do''>~ |
    <do fa\harmonic do''> r4 | R1 si''2.~\mf si4 mi,2(\glissando |
    dod'2~) dod8 r <re, re'>-.\f <re re'>-.

    %%% Stretto %%%
    <re re'>4-> re,-> r re-> |
    re16-> re re re re4 r8 re16-> re re re re8-. |
    re16-> re re re \ten <dod re>2.~\sffz <dod re> r4 |
    r4 r8 \pizz si''\mp re,4-- r |
    sold,-> r r8 lad-> r4 sold-> r8 lad-> r2 |
    \arco si2:8->\mp si: dod2:8 dod:\< |
    <re, re'>4-.->\! r r2 | R1*3

    %%% Noir %%%
    R2.-\fermataMarkup \pizz fad4\mp r2 R2. fad4 r2 R2. R2
    fad4 r2 r4 fad r2 r4 fad red8-> fad-> R2 |
    fad4\mp r r2 | R1*4 R1.*4 R1 R2.-\fermataMarkup
    R2.*8 R2.-\fermataMarkup
    R2.*4 R2.-\fermataMarkup
    R1 R2 R1 R2 R1 R2 R1 R2.

    %%% Largo non troppo %%%
    \arco <do' la'>2->\mf \accdet {<do la'> <do la'> |
    <re la'> <re la'> <re la'> |
    <do si'> <do si'> <do si'> |
    <fa do'> <fa do'> <fa do'> |
    <mi re'> <mi re'> <mi re'> |
    <re re'> <re re'> <re re'> |
    \cresc <sol re'> <do, do'> <sol' mi'> |
    <fa mi'> <fa re'> <fa re'> |
    <la mi'> <la mi'> <la mi'> |
    <fa fa'>\f( <mi mi'>) <re re'> |
    <re re'>\>( <do do'>\!) <do do'> |
    <mi mi'>\mp <mi mi'> <mi dod'> |
    <dod dod'>( <re re'>) <re re'> |
    <si si'> <do si'> <re si'> |
    <re si'>( <do do'>) <do do'> |
    \cresc <do do'> <si si'> <la la'> |
    <do do'> <si si'> <la la'>} |
    <la la'>4->\ff mi'-> r1 | <la, la'>4-> mi'-> r2 |
    R1 R2. R2
  }
}

ActeDeuxSceneUnViolonDeux = { \ViolonDeux
  \relative {
    \pizz <la' la'>4\mp r2 R2.*3 R2 r2 \arco <re, sol\harmonic re''>4~\p
    \simile re''2.~ re2~ re2.~ re~ re2.~ re4 r |
    R2. do2~\p | do2.~ | do4 dod2~ | dod2\< |
    fad2.~\!| fad2.~| fad2.~| fad4 r | <la,, re\harmonic la''~>2.\p
    \simile la''2~ la2.~ la2.~ la4 r |
    \ttt { mi8\pp[ mi16 mi mi mi] }
    \ttt { mi16[ mi mi mi mi mi] }
    \ttt { mi16[ mi mi mi mi mi] } |
    \ttt { \cresc re16[ re re re re re] }
    \repeat unfold 5 { \ttt { re16[ re re re re re] } }
    \ttt { re16\f[ re re re re re] }
    \ttt { re16[ re re re re re] }|

    %%% Entrée de la Soprano Deux %%%
    R2.*2 r4 \ttt {mi16\f[ mi mi mi mi mi] } \t {mi mi mi} r8 r4 |
    r4 r8 \t {la,16\f la la} \ttt {la la la la la la} | R1 R2. R2 R2. R1

    %%% Andantino %%%
    R1*2 R2.*4 R2
    R2.*5 R1 R2. R2
    r4 \det {sold,\p r sold r sold} r | \simile sold r sold |
    r sold r sold | r sold r | sold r sold r |
    r fad r | r fad r fad | r re r | re r re r |
    r <la re> r | r sib r sib | r sib r |
    r re r re r re r | re r re r | re r re |
    r re r re | r re r | re2. r4 |
    sold2.~\pp sold2. r4 |

    %%% Entrée de la Contralto %%%
    r2 \det {sold4\p | r sold r sold} | r \simile sold r | sold r sold r |
    r sold r | sold r sold r | r sold r | sold r sold r |
    r8 \pizz do,\p r do r do | r re\< r re r sol\! r sol | r fad\> r re r do |
    r la r la r la\! r4 R2. r8 si\< r si r mi r mi\! | r re\> r la r la | r la\! r4 r \arco sol'--\mp |
    r2 \pizz re4\mp | r4 r8 re r2 | r2 re4 | r4 r8 re r4 r8 re |
    r4 re re sol,\< re' lab' re mib\! r |
    r4 r8 fa,\mp r4 | r4 r8 mi r4 |
    r4 r8 fa  r4 | r4 r8 mi r4 |
    r8 \arco mi4--\mf\< fa8 sol4-. \ten sib2.~\! sib2 r4 | R1 R2.
    R1 R2. R1 r4 \det {solb\p r r fa r fa | r solb r r fa\< r fa\!} | R2. R1
    \ind #"trem. sul tasto" re2.~\pp\CaV re1~\CaV re4\CaV r2 R2 | R1 R2. R1 R2. R1 R2. R1
  }
}

ActeDeuxSceneUnBisViolonDeux = { \ViolonDeux
  \relative {
    \pizz mi4\mf r r2 R2. R2

    %%% Presto agitato %%%
    R1*5/4*2
    \repeat tremolo 8 {\arco \ind #"sul tasto"sol16*5/4\pp mi}
    \repeat tremolo 8 {sol mi}
    \repeat tremolo 8 {sol mi} sol2. r2 |
    \repeat tremolo 8 {mi16*5/4 sol}
    \repeat tremolo 8 {mi sol} mi2. r2 |
    \repeat tremolo 8 {sol16*5/4 mi}
    \repeat tremolo 8 {sol mi} sol2. r2 |
    \repeat tremolo 8 {mi16*5/4 sol}
    \repeat tremolo 8 {mi sol} mi2. r2 |
    sol8\mp( la sol mi) re( mi) sol( la) sol4-- |
    sol8( la sol mi) re( mi) sol( la) sol4-- |
    sol8 la sol mi re mi sol la sol4 |
    sol8( la sol mi) re( mi) sol( la sol mi) |
    re( mi sol la) re,( mi sol la) re,( mi |
    sol la) re,( mi sol la) re,( mi sol la) |
    \ordin mib4--->\sfz \st {re8 re re re} mib4--->\sfz \st {re8 re} |
    mib4--->\sfz \st {re8 re} mib4--->\sfz \st {re8 re re re} |
    mib-> \st {re re re re} mib-> \st {re re re re} | re4->\sfz r1 |
    R1*5/4*11
    \ind #"détaché" mi8\mp dod mi fa mi dod mi dod mi dod |
    mi\< dod mi-> fa mi dod mi dod mi dod |
    fa4--->\sfz \st {mi8 mi mi mi} fa4--->\sfz \st {mi8 mi} |
    fa4--->\sfz \st {mi8 mi} fa4--->\sfz \st {mi8 mi mi mi} |
    fa-> \st {mi mi mi mi} fa-> \st {mi mi mi mi} | mi4->\sfz r1 | R1*5/4
    dod4->\sffz r1 | R1*5/4-\fermataMarkup

    %%% Boum %%%
    r2 r4 \flaut sol'2\pp\<\upbow\CaV r2\! sol\<\upbow\CaV r4\! | R1*5/4
    r2 r4 \simile sol2\CaV r sol\CaV r4 |
    r2 r4 sol2\CaV r sol\CaV r4 | R1*5/4
    r2 r4 sol2\CaV r sol\CaV r4 |
    \repeat tremolo 16 {sol32*5/4\ppsempre mi} |
    \repeat tremolo 16 {sol32*5/4 lab}
    \repeat tremolo 16 {sol32\< lab} sol4-- |
    \ind #"à la corde" <sol sib mib>2.--->\f <fab lab reb>2---> <sol sib mib>---> <fab lab reb>2.---> |
    r4 <sol sib mib>2.---> <fab lab reb>4~--->\< <fab lab reb>2 <sol sib mib>2.---> |
    <sib mib lab>2.--->\! <sol mib' lab>2---> <fab sib' mib>---> <sol mib' lab>2.---> |
    r4 \meno <sib mib lab>2.-- r4 |
    <reb fa sib>2.--->\f <mib lab>2---> <reb fa sib>---> <mib lab>2--->\< <fa sib>4---> |
    <mib dob'>2.\! <fa sib>2---> <mib lab>---> <fa sib>2.---> |
    r4 <sol, mib' lab>2--->\< sib'4---> dob---> |
    <fa, sib re>1*5/4~--->\ff <sib re'>2. r2 | R1*5/4*5

    %%% Moderato assai %%%
    r2 r4 sol,1~\pp\CaV sol1*7/4~\CaV sol~\CaV
    sol~\CaV sol~\CaV sol~\CaV sol2. r1 |
    R2. R1 R2. R2
    \t {sol8\mp\>( mi sol} \t {mi sol mi} sol4\!) R2. |
    \t {sol8\>( mi sol} \t {mi sol mi} sol4\!) R2. |
    \t {\simile sol8( mi sol} \t {mi sol mi} sol4) R2. |
    \t {sol8( mi sol} \t {mi sol mi} sol4) R2. |
    sol2.--\upbow
    \ten re1*7/4~\p re4 r2 r1 | R1*7/4
    \t {sol8\mp\>( mi sol} \t {mi sol mi} sol4\!) R2. |
    \t {sol8\>( mi sol} \t {mi sol mi} sol4\!) R2. |
    \t {sol8( mi sol} \t {mi sol mi} sol4) R2. |
    \t {sol8( mi sol} \t {mi sol mi} sol4) |
    la--\p re,16->( mi sol la sol4) re16->( mi sol la sol8-.) re16->( mi sol la sol8) r re16->( mi |
    sol la sol8) r re16->( mi sol la sol8-.) re16->( mi sol la sol4) re16->( mi sol la sol8-.) re16->( mi |
    sol la sol8-.) re16->( mi sol la sol4) re16->( mi sol la sol4) \t {re8( mi sol)} la4-- |
    sol1-- r2 r4 |
    \repeat volta 2 { \det {mi1\mf re2. mi re1 R1*7/4 }
    \meno re1} r2 r4 | R1*7/4

    %%% Presto subito %%%
    \tt {\ind #"détaché" sol8\mf\upbow mi mi mi mi} \tt {sol mi mi mi mi} \tt {sol mi mi mi mi} |
    \tt {sol mi mi mi mi} \tt {sol mi mi mi mi} \tt {sol mi mi sol mi} |
    \tt {sol mi mi sol mi} \tt {sol mi mi sol mi} \tt {sol mi mi sol mi} |
    \tt {sol mi mi sol mi} \tt {sol mi lab sol mi} \tt {sol mi lab sol mi} |
    \tt {sol mi lab sol mi} \tt {sol mi lab sol mi} \tt {sol mi lab sol mi} |

    %%% Tempo giusto %%%
    mi4-- r sol\glissando\downbow\<( mi\!) r sold\glissando\upbow\<( mi\!) r \simile sol\glissando mi r sol\glissando |
    mi r sol\glissando mi r sold\glissando mi r sold\glissando |
    fad r \st {re8 la' re, sol} |
    sold4-- r si\glissando( sold) r do\glissando\<( fa,) r do'\glissando( sib) r re\glissando( |
    do\!) r \jet si32\mp si8.. r8 | mi32 mi8.. r8 \det {mi\< red red mi mi} |
    <sol, mib' sib'>8.--->\ff \st {<mib' sib'>16 <mib sib'>8} <sol, mib' sib'>~---> |
    <sol mib' sib'>16 \st {<mib' sib'>16 <mib sib'>8 <mib sib'>} |
    \accdet {<reb sol>2 r4 |
    <sol, mib' sib'>8.} \st {<mib' sib'>16 <mib sib'>8} <sol, mib' sib'>~---> |
    <sol mib' sib'>16 \st {<mib' sib'>16 <mib sib'>8 <mib sib'>} |
    \accdet {<fad dod'>2 r4 |
    <do sol' sib>8.} \st {<sol' sib>16 <sol sib>8} \accdet {<do, sol' sib>4 |
    <mi mi'>8.} \st {<mi mi'>16 <mi mi'>8} <fad mi'>~---> |
    <fad mi'>16 \st {<fad mi'>\< <fad mi'>8 <fad mi'>} |
    <mi mi'>4\sffz r8 \pizz re'?\mp r8 \arco reb\glissando\upbow( |
    sol,8) r r \pizz si, r4 |
    r r8 \arco fa''\glissando\upbow( fad,) r |
    \pizz re4 r2 | r4 sib'8 \arco fa'!\glissando( fad,) r | R2.
    r4 \pizz fad8 \arco do'\glissando( sib,) r | R2.
    r4 \pizz sib'8 \arco dod\glissando( re,) r | R2.
    \repeat tremolo 8 {re,32\pp\<( fad}
    \repeat tremolo 4 {mib sol\!)} |
    \repeat tremolo 8 {fad( lad}
    \repeat tremolo 4 {sol si)} | sol8:16\< lad: si: re: mib: fad: |
    <fad re'>2.--\mp R2. R2 R4. R2 R1*5/8 R2.

    %%% Tempo I %%%
    r4 r8 sol,16->\mf( la sol mi) re->( mi) sol( la) re( mi) |
    \accdet {<dod la'>4\sfz r2 <dod la'>4\sfz r <dod la'>\sfz r <dod la'>\sfz r2 |
  <dod la'>4\sfz r r8 <dod la'>\sfz} r2 | <si, lad'>4->\sffz r1\fermata |
    R1*5/4
    \flaut sol'1*5/4~\pp\CaV sol~\CaV sol~\CaV sol~\CaV sol~\CaV sol~\CaV |
    sol~\CaV sol2.\CaV r2 | R1*5/4*3
    \ordin mib2.\upbow\mp re2 mib \ten re2.~-- re2. r2 |
    mib2. re2 mib re2.~-- re2. r2 |
    sold8--\pp( la sold mib) re--( mib sold la) re,--( mib |
    sold la) re,--( mib sold la) re,--( mib sold la) |
    sold( mib) re( mib sold) r r2 |
  }
}

ActeDeuxSceneDeuxViolonDeux = { \ViolonDeux
  \relative {
    R1.*6 R1*2 R2.
    r16 lab\f lab8 lab16-> lab8 lab16 lab8-> lab16-. lab-. |
    r16 <sib mi> <sib mi> <sib mi> <sib mi>8-> <sib mi>16-. <sib mi>-. r <sib mi> <sib mi> <sib mi> |
    <la re>8-> <la re>16-. <la re>-. r16 <sib mi> <sib mi> <sib mi> <sib mi>8-> <sib mi>16-. <sib mi>-. |
    r16 <la re> <la re> <la re> la la sib si do8\> do16 do |
    \ten mi1.~--\mf mi1 r2 |
    R1. R1*2 R2.

    r16 lab,\f lab8 lab16-> lab8 lab16 lab8-> lab16-. lab-. r lab lab lab |
    r \st {do do r do do |
    r re\pleggiero re re re re re re re re re re re re re re |
    r re re re re re re re re re re re re re re re |
    r dod dod dod dod dod dod dod dod dod dod dod dod dod dod dod |
    dod dod dod dod dod dod mid mid mid mid sold sold sold sold sold sold |
    \cresc sold sold dod, dod red' red sold, sold red' red sold, sold lad' lad red, red |
    sib'\f sib mib, mib mib' mib sib sib fa fa fa' fa sib, sib sib sib} |

    R2. R1. R1*2
    r4 \t {la,,8\p( do la} \t {do la do)} |
    r4 \t {sib8( do sib} \t {do sib do)} |
    r4 \t {la8( do la} \t {do la do)} |
    r4 \t {sold8\upbow( si sold)} | \t {sold( si sold} \t {si sold si)} \t {la( do la)} |
    \t {la( do la} \t {do la do)} \t {lab( dod lab)} |
    \t {sib\<( re sib} do4\!) r | la''\mf\>( mi\!) | R4. |

    r16 \st {re,\pleggiero re re re re re re re re re re re re re re |
    re re mi mi re re mi mi re re mi mi re re mi mi |
    mi mi fa fa mi mi fa fa mi mi fa fa mi mi fa fa |
    mi mi fa fa mi mi fa fa mi mi fa fa mi mi fa fa |
    mi\< mi mi mi <mi la> <mi la> <mi la> <mi la>
    <mi la> <mi la> <mi la> <mi la> <mi la> <mi la> <mi la> <mi la> |
    lad\fp lad sold sold lad lad sold sold lad lad sold sold lad lad sold sold |
    lad lad sold sold lad lad sold sold lad lad sold sold lad lad sold sold |
    lad lad sold sold lad lad sold sold red'\< red mi mi red red mi mi |
    <si sold'>\mf <si sold'> <si sold'> <si sold'> <si sold'> <si sold'> <si sold'> <si sold'>
    <si sold'> <si sold'> <si sold'> <si sold'> <si sold'> <si sold'> <si sold'> <si sold'> |
    si si si si si si si si si si si si} |

    R1. R1 R1.
    la4\p( sol fa mi fa8 mi fa sol | la4 mi) r | R1
    \pizz la,4\mp r2 r8 \flaut sol'4.--\upbow\pp r2 | fa4--\upbow r2 r8 mi4.--\upbow r2 |
    fa4\upbow( mi fa sol la) r2 | R2.
    \simile fa4( mi fa sol la4) r2 | mi4--\upbow r r2 | R2. R1 R2. R1
    <la, la'\leftpizz>4\mp r2 R1 r4 \arco <sol' la>2~\upbow\p( <sol la> <fa la>4-- <mi la>--) |
    <fa la>4.-- <sol la>-- | <la la>2-- r4 <fa la>8( mi)
    <fa la>( sol) <la la>4-- <fa la>16\<( mi fa sol |

    la4--\!) \ind #"détaché" la16\f sold la si dod8 dod fa16\< mi fa sol |
    \accdet {la4\! r R2. <la, la'>4} r r2 |
    r2 do,8\mf sib mib re | sol16\< mi fa sol sib sold la si re8\! do fa mi |
    \acc {la4-- r r8 | sold sold la r4 | la4--} sold,8\< la re | \acc {sold\! sold la r4 |
    <re,, mib'>4--} la8\< la la | \dwnb {<la sold'>4\! <la sold'> r8 |
    <sold re' la'>4} r r8 | <sold' la la'>4---> r \st {re'8 |
    re mib} r4 r8 | \dwnb {<la,,sold'>4 <la sold'> r8 | <sold re'la'>4} r r8 |
    \acc {sold'8 sold la} r4 | r8 \accdet {sold4 sold | la} r r8 |

    R1*2 dod,4->\sffz r r2 |
    r4 \pizz fad\mp fa r r mi re r |
    r2 \arco dod2\upbow\< |
    mi1:32~\fp mi:~ mi2:32\< sol: |
    fa'4\sfz r2 | r8 \pizz mib,\mp r4 | R1*2 R2.*4
    r4 dod' r r red r R2. |

    la4-- r R2 | R2.*2 R2*2
    \arco red'4\mf( dod si lad) si8( lad) sib16( la sib do) |
    sib8-.-> r r16 re,,\mp\leftpizz \pizz sib re |
    r re\leftpizz sib re r re\leftpizz sib re |
    r re\leftpizz sib re r re\leftpizz sib re |
    r re\leftpizz sib re r8 r16 \arco re( |
    mi) \st {mi\pleggiero do mi r red si red r re sib re r dod la dod |
    r do lab do r8 sol16 si | r8 sib16 sib r8 la16 la |
    R2 r8 sold'16\pp sold la8} r | R2
    re,16\pleggiero\leftpizz \pizz re sib re re\leftpizz re sib re |
    re\leftpizz re sib re mi8 \arco sold16-.\mf sold-. |
    la8-- \st {fad16 fad} sol8-- r | R2*2
    \pizz re4\mp r dod r mib r | R2 R2.*16
  }
}

ActeDeuxSceneTroisViolonDeux = { \ViolonDeux
  \relative {
    %%% Larghetto %%%
    R4.*16
    si4.~\pp si~ si~ si4 r8 | R4.*3
    si4.~ si~ si~ si4 r8 | R4.*3
    \st {sold16\mp sold sold sold sold sold |
    sold sold sold sold sold sold |
    sold sold sold sold sold sold |
    sold sold sold sold sold sold |
    sold sold sold sold sold sold} |
    \ten <la re>4.~-- <la re>4 r8
    \st {sold16 sold sold sold sold sold |
    sold sold sold sold sold sold |
    sold sold sold sold sold sold} |
    re'\pp re re re re re |
    re re re re re re |
    \st {sold,\p sold sold sold sold sold |
    sold sold sold sold sold sold |
    sold sold sold sold sold sold |
    sold sold sold sold sold sold} |
    sold'\< sold sold sold lad lad |
    si\mp( dod,) dod dod dod dod |
    dod8 r16 do-> si-> la-> |
    \st {sold sold sold sold sold sold |
    sold sold sold sold sold sold} |
    re'\p\leftpizz \pizz <sib re> r <sib re> |
    re\leftpizz <sib re> r <sib re> |
    re\leftpizz <sib re> r <sib re> |
    re\leftpizz <sib re> r <sib re> |
    re\leftpizz <sib re> r <sib re> |
    re\leftpizz <sib re> r <sib re> |
    re\leftpizz  <sib re> r \arco re\upbow( |
    mi8) r16 \pizz mi |
    do mi r mi do mi r do |
    mi r \arco do-. \st {do do do do do |
    do8} r16 \pizz mi do mi r \arco do( |
    \st {dod) dod dod dod dod mid dod dod |
    mid dod r dod dod dod dod dod |
    mid dod r dod dod dod dod dod |
    mid dod} r dod( \st {mi) mi mi mi |
    sol, sol sol sol mi' mi mi mi |
    R4
    re16 re lab lab sol' sol re re |
    lab lab re re r8 |
    reb16 lab sol' reb lab sol' reb lab |
    sol' reb lab reb} R4
    do16\ppleggiero sol' do, sol' |
    do, sol' do, sol' |
    do, sol' do, do |
    \st {<sold mi'>\p <sold mi'> <sold mi'> <sold mi'> <sold mi'> <sold mi'> |
    <sold mi'> <sold mi'> <sold mi'> <sold mi'> <sold mi'> <sold mi'> |
    la la la la la la |
    <sold mi'> <sold mi'> <sold mi'> <sold mi'> <sold mi'> <sold mi'> |
    la la la la la la |
    la la la la la la |
    mi' mi mi mi mi mi} |
    <la, fa'>-> la la la la la |
    mib' mib mib mib mib mi |
    <la, fa'>-> la la la la la |
    mib' mib mib mib mib mib |
    sol sol sol sol sol sol |
    mib mib mib mib mib mib |
    <do fa>\< <do fa> <do fa> <do fa> sold' sold |
    \st {sol\fp do, re' sol, do, re' sol, do, |
    re' sol, do, re' sol, re' sol, re'} |
    sol,\mp sol la( do,) sib' sib si( fa) |
    do'\< do dod( mib,) |
    sib'8-.->\! \pizz <re, sib'> r \arco sib'16\f sib |
    do8-> r R4 re,8\leftpizz sib'16\< sib |
    do8->\! r R4 re,8\leftpizz sib'16\< sib |
    do->\fp mi, mi mi mi mi mi mi |
    mi mi mi mi sold sold la la |
    la\mf re, mi' la, re, mi' la, re, |
    la' mi\ppleggiero mi mi mi mi mi mi |
    mi mi red red red red red red |
    red red red red red re do sol'|
    re do sol' re | R2.-\fermataMarkup R2.*6

    %%% Interlude %%%
    R2*2 sold16\pdolce sold la( la,) sold' sold la( la,) si' si do( do,) si' si do( do,) |
    \simile sold' sold la la, sold' sold la la, si' si do do, sold' sold la la, |
    si' si do do, re' re mib mib, |
    sold sold la la, sold' sold la la, si' si do do, si' si do do, |
    sold'\< sold la la, si' si do do, re' re mib\! mib, |
    r \st {red\pleggiero mi red r red mi red r fad sol fad r fad sol fad |
    r red mi red r mi} red8-- sol16-. fad8-- sib16-. la8-- mi16-. red-. |
    r red mi red r red mi red r fad sol fad r fad sol fad |
    r8 mib16\< mib re re si' sib mib re |
    lad'\mf lad si si, lad' lad si si, |
    dod' dod re re, dod' dod re re, |
    lad' lad si si, lad' lad si si, |
    dod' dod re re, dod' dod re re, |
    lad' lad si si, lad' lad si si, |
    dod' dod re re, dod' dod re re, |
    lad' lad si si, dod' dod re re, |
    mi'\mp mi fa fa, mi' mi fa fa, |
    dod' dod re re, dod' dod re re, |
    mi' mi fa fa, mi' fa fa, dod' |
    re\< re, mi' fa fa, sol' lab lab, |
    sol'\mf sol lab lab, sol' sol lab lab, |
    mi' mi fa fa, lad lad si si, |
    dod'\< dod re re, mi' mi fa fa, |
    sol'\! lab lab, sol' sol lab lab, mi' |
    mi fa fa, mi' fa fa, dod' re |
    fa,\< sol' sol lab lab, sol' lab lab, sold'->\! sold-> |

    %%% Quatuor %%%
    la8-> \pizz sold,,\mp la fad | sib4-- r8 |
    r sold la fa si4-- r8 |
    r sold la re,\leftpizz |
    \arco \ind #"jeté" <re dod'>32\mf <re dod'>16. r16 <re dod'>32 <re dod'> r8 |
    <re dod'>32 <re dod'>16. <re dod'>32 <re dod'>16. r8 |
    mi'?2--\f r4\fermata
    r8 \pizz sold,\p la4 r | R2.*5 R2*2 R2.

    %%% Air baryton 1 %%%
    \t {\arco sib,8\pp( lab sib} \t {lab sib lab} |
    \t {sib lab sib} \t {lab sib lab)} |
    \t {sib( lab sib} \t {lab sib lab} sib16-- lab sib lab) |
    \t {sib8( lab sib} \t {lab sib lab} |
    \t {sib lab sib} \t {lab sib lab)} |
    \t {sib( lab sib} \t {lab sib lab} sib16-- lab sib lab) |
    \flaut la'2~ la4 r |
    \t {sib,8( lab sib} \t {lab sib lab} \t {sib lab sib~} |
    sib2~) sib4 r | lab( sib) r8 sold'16-.\pp sold-. |
    la( la,) sold' sold la( la,) sold' sold |
    la( la,) sold'8 <fa la>16-. <fa la>-. |
    <solb sib>8--\< <fa la>16-. <fa la>-. <solb sib>8-- <fa la>16-. <fa la>-. |
    <solb sib>8-- <fa la>16-. <fa la>-. <solb sib>8-. |
    sol16\pp\!( sol,) fad' fad sol( sol,) fad' fad |
    sol( sol,) red' red mi( sol,) fad' fad |
    sol8--\< <sold si>16 <sold si> <la do>8-- re16 re red red, dod' dod |
    \st {re\mf re mi mi re re mi mi re re mi mi re re mi mi |
    re re mi mi re re mi mi re re mi mi |
    re re mi mi re re mi mi reb reb mib mib do do mib mib |
    \cresc do do reb reb do do reb reb mi, mi fa fa |
    sib, sib sib sib sold sold la la} |

    %%% Doppio tempo %%%
    re8 r r4 R2*3
    r8 re16 re mib8 r |
    r re r4 | r re16 re r8 |
    R2.*3
    mi8 r r re16 re mi8 r |
    r mi r la r la | la mi r4 r8 re |
    si' re la'4 r |
    r8 mi re r r re r2 |
    re,8 re mi mi re re mi mi re mi |
    re re mi mi re re mi mi re mi |
    re re mi mi re re mi mi re mi |
    re re mi mi re re sol sol sib sib |
    fad fad sold sold la la si si re re |
    sib16 sib sib sib do do do do |
    reb reb reb reb mib mib mib mib mib mib mib mib |

    %%% Climax %%%
    re4 r R4. |
    re'8 la re, la fad16 fa mib do sol4 |
    re'8 r r4 | R4.
    sold''16 fad re si la8 re, |
    re,16 si la sold sol4 | re'8 r r4 | R2
    \ottava #1 si'''4:16 si,8:16 ~ si: fa4 \ottava #0 |
    \loco re,8 mib fad16 sol la si do8 mib |
    sold16 fad mi mib re4 mi,16 mib re la sold4 |

    %%% Soprano 2 %%%
    re'\leftpizz r r8 sib16 sib |
    sib4 r8 sib r r16 sib sib4 |
    r8 re r4 re8 re |
    red red r red red r dod dod |
    re4 r8 re r re |
    r re r re re r re re |
    do do r do r do |
    r do r do do r do do |
    dod dod r dod r dod |
    r dod r dod r dod r dod |
    r mi r mi mi4 mi8 mi mi4 mi8 mi r mi |
    r mi r mi mi4 mi8 mi mi4 mi8 mi r mi |
    r mi r mi r mi r mi r mi mi4 mi8 mi |
    <sold, sold'>4 <sold sold'>8 <sold sold'> r4 |
    sold8 sold sold sold sold sold sold sold |
    r la la la la la |
    mi' mi r mi r4 mi8 mi |
    fa fa r fa mi mi |
    mi mi r mi r4 fad8 fad |
    sol sol r sol sib sib |
    sib4 r r2 R2.
    mib4 sib' lab8 fa mib4 |
    R2.
    mi,8 mi r mi mi4 mi8 mi mi4 mi8 mi r mi |
    r mi r mi mi4 mi8 mi mi4 mi8 mi r mi |

    %%% Soprano 1 %%%
    <re sib'>4 r r2 | R2. R1 R2. R1
    mid8 mid r2 mid8 mid r4 r2 |
    mi8 mi r mi mi4 mi8 mi mi4 mi8 mi r mi |
    r mi r mi mi4 mi8 mi mi4 mi8 mi r mi |
    r mi r mi mi4 mi8 mi mi4 mi8 sol r sol |
    r mi r mi mi4 |
    sold,8 sold sold sold sold sold sold sold |
    r la la la la la |
    mi' mi r4 r2 | R2.
    mi8 mi mi r r2 |
    r4 r8 mi r4 | R1
    mi8 mi mi sold, mi' mi mi4 r r2 | R2. R1 R2.

    %%% Duo %%%
    sold'8 sold la la, sold' sold la la, |
    sold' sold la la, sold' sold la la, |
    sold' sold la la, sold' sold la la, |
    sold' sold la la, sold' sold la la, |
    sold' sold la la, sol' sol sold sold, |
    re' re mi mi, re' re mi mi, |
    sold sold si dod, sold' sold la dod, |
    mid mid sold sold, |

    %%% Baryton 2 %%%
    <re' re>4 <re re> <re re> <re re> r2 |
    mib4 mib mib mib r2 |
    re''4 re8 \t {sold,16 si dod} re4 |
    <re, re'> <re re'> <re re'> |
    <re re'> re'8 \t {si16 do dod} re4 |
    lab lab,8 \t {re,16 mi sol} lab4 |
    re,2.~ re2 r4 |
    si16 si si si do do la la la la la la |
    do do do dod dod dod |
    <re re'>4 re'8 \t {si16 do dod} re4 |
    re,16 re re re dod dod dod dod do do do do |
    si si si si lad lad si si sold sold la la |
    lad lad lad lad si si si do do do dod dod |
    re2:16 re4:16 re2:16 re4:16 |
    <sold, re'>2 r16 sold'' la si |
    re4 re8 \t {sold,16 si dod} re4 |
    <re, re'>4 r2 |
    re'4 re8 \t {sold,16 si dod} re4 |
    <re, re'>4 r2 |

    %%% Boum %%%
    <sol,,! sold'>4 r2 R2.*2
    R2.
    \ottava #1 <sol'\harmonic dod fad\harmonic re' dod'>2.~
    <re'' dod'>2.~ <re dod'>2. \ottava #0
    r8 fad,, fad fad fad fad |
    fa fa la la sib sib |
    r lab lab lab lab lab la la do do dod dod |
    r <do, si'> <do si'> <do si'> <do si'> <do si'> |
    <red si'> <red si'> red' red <sol, mi'> <sol mi'> |
    r8 si,8:32 sib: re: mib4:
    re8: fad: sol: si: do4: |

    %%% Contralto %%%
    re4 r8 \pizz re, r re r re |
    re4\thumbpizz \arco sold'\glissando |
    re' r8 \pizz re,, |
    r re r re | r re r re |
    r re r re | r re r re |
    r <lab mib'>\arpeggUp r <lab mib'>\arpeggUp |
    r \simile <lab mib'> r <lab mib'> |
    r4 \arco fa'8 fa fad4 r | R2.
    R2*5 \pizz do8 do dod4 |
    \arco sold8 sold sold sold sold sold |
    sold sold sold sold sold sold |
    sold sold sold sold sold sold |
    sold sold sold sold r4 |

    %%% Grand ensemble %%%
  }
}
