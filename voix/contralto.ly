%------------------------------------------------------------------%
% Opéra Libre -- contralto.ly                                      %
%                                                                  %
% (c) Valentin Villenave, 2008                                     %
%                                                                  %
%------------------------------------------------------------------%

\include "italiano.ly"

Contralto= {
  #(make-char-name 'contralto 27.5)
}

InterludeUnContralto = { \Contralto
  \relative {
    R1. R1 fad8--(\mp fad-- do2--) r4 |
    R1 r2 mib8--(\p mib-- la,2--) r4 |
    r2 r4 r8 mi'16(\< do |
    sold'8--)\mf mi16-.( sold-. do,4--) r r \parlato si r16 sib( si re |
    mi4--) r16 si( sib re mi4--) r r \t {re8--(\< mi-- sol--} |
    sold4--)\! r r2 |
    r4 re'16-.\mf re-. sold,8-. r2 |
    \t {r4 mi(\< fa} la2)\! r4 \t {r8 mi( fa} |
    la2) fa16(\< mi fa la \ten si4~\! si2) |
    r4 r8 sib16-.(\> la-. fa8-.) la16-.( fa-. mi8-.)\! fa16-. dod-. |
    \t {r8 sib'--(\ffsubito fa--} mi'4->) \parlato { mi,8 mi} | R2 R2.

    r8 sold(\fmolto la) do \ten re2--~ | re8 r sold,(\> do re2)\! |
    r8 fa,16-.\mp fa-. fad8-- red16-. red-. mi8-- sol16-.\< sol-.
    sold8-- mi16-. mi-. fa8-- la16-. la-. \t {sib8--\f mi,(\> fa} |
    \ten mi'2.--) \mp \t {r8 mi,(\mf \> fa} | \ten mi'2.--)\p r4 |
    \ttt {r16 mi,\( ( \< fa si) fa( fad} \ttt {dod')\mf \> fad,( sib) la( dod) do-.}
    mi2--\p \) r16 \ind #"scherzando" do-.\mf sold16.->-- la32-. fad8-- \t {do16(\> mi mib} |
    fad4)\! r \ttt {r16 mi(\mf \< fa mi' fa, si} \t {mi8-- sold,-- dod--) \!} |
    r8 \ten mi->--~ \f mi2~ | mi4 r2 |
    fad,16-.\mp sib-. re,8-- r4 r8 mib16-. fad-. | do4-- r2 | R2. do8--\> mib-- la,2--\! |
    r4 \t {r mi'(\pdolce \< la} sol2\> ) r4\! | R2.*5
    r8 do,16-.\p do-. fad8-- do16-. do-. la4-- | \t {r8 sol( sib} fad'4--) r R2.*2
  }
}

InterludeDeuxContralto = { \Contralto
  \relative {
    R1 R2. R2
    fad16--(\mp fad-- do4.--) r8 mib16-.(\f mib-. |
    la8-- fad16-. fad-. do4--) | r2 r8 mib16\p mib |
    r8 sol16-.\fsubito mib-. si'8-> mib,16-. sol-. |
    si,4-- r | r8 mi(\mf mib\> do' | si4) \!r |
    r8 \ind #"meno" mib,( re \> sib' | la4)\! r
    r \ind #"scherzando" la8-.\p la,-. | la'4-- r |
    r lab8-. lab,-. | sol'4-. \ind #"borbottando" mi8\pp mi mib4-. lab8 lab |
    sol4-. mib8-.( mib-. mi-. mi-. sol-. sol-. lab-.\< lab-. si-. do-. mib4-.)\pocof r |
    r2 \t {r4 si,(\mf re} mi!2.) r4 |
    r sib2--( re4 mi2.) r4 |
    r4 mi8(\< sol la4 \fmolto ~ |
    la la8 do \ten re2~ re4) r8 re,-> r dod'->\sfz~ |
    dod4 r8 re,-. mi-. sol-. |
    lab2-> r do,4--\mp sib-- dod-- | la!->-- r |
  }
}

ActeUnSceneTroisBisContralto = { \Contralto
  \relative {
    R1*15 r4 <\parenthesize fad, lad>8\mp( lad lad4 lad8 lad lad4--) r r2 |
    R1*7  r4 do8\mf-- do-- do4-- do8-- do-- fad2-- r | R1
    r2 r16 do( do do si8.) si16( |
    si si mi8--) re--( mi) do--( do) \t {re--( do-- re--)} |
    si2-- r4 r8 \meno si16( si | lad4.) r8 sib4--( sol8) r |
    sib4--( sol8) r sib--( sol) do16( sib mib8~--)  |
    mib mib16\<( mib do do mib8) fad--(\mf red16) r fad8--(\< red16) r |
    fad8--( red16) r  fad8--( red16)\! r  \parlato fad8 r r4 |
    r8 \t {fad16( fad fad} la8) \t { red,16( red red} fad8) r
    \tt {do16\mp( do do do do} | mi4--) \t {r8 dod--( mi--} \t {do-- sib-- dod--} |
    la2--) r | R1*4 r2 r4 r8 sol'->\mf |
    sib-- mib,16--( mib~-- mib mib32 mib fa16.--\< mib32 lab8--\!)
    r32 lab( lab lab lab8--\< mib16-- lab-- | si4->--\f) r r2 |
    r2 r4 r8 r16 sol,\mf( | fad'8.) mi16( dod'8) r16 sol,( fad'4. mi8\> | dod'2.)\p r4 |
    dod,8( dod dod mi dod4.) r8 |
    r2 r4 r8 dod( | do do do mib do4) r |
    fa4.--( do8~ do mib\>
    \t {<\parenthesize sol, sib> <\parenthesize sol sib> <\parenthesize la do>} |
    <\parenthesize fad la>4--)\! r r2 | R1*3 r2 r4 do'8--\mp do-- | do4-- \t {do8-- do-- do--} do4-- do8-- do-- |
    do4-- do-- r do8-- do-- | do4.-- do8(\> do do do do | fad2.--)\pp r4 | R1*11
  }
}

ActeUnSceneQuatreContralto = { \Contralto
  \relative {
    \partial 4 r4 R2*5/4 R2*3 R2*5/4 R2*2 R2. R2*3
    R1 R2. R1*2 R1. R1*2 R1. R1*2
    R2.*27
    R1 R2. R1 R2. R2 R2. R2 R2. R2 R2. R1*5 R2 R2. R1
    R1*9 R2. R1 R2. R1*7 R2*3 R2.*2 R2.*4
    R1*2 r2 r4 r8 fad-- \mf | R1 R2. r16 do( \mf fa8) r r16 fa ( ~ fa mib lab8 ) r fad-.( |
    si4-- mib,8-. lab4-- re,8-. |
    sol4--) r8 \parlato do,4 r8 fad--( fad-- |
    fad4--) \t {fad8( fad fad} \t {la fad fad} |
    fad) fad-- fad-- fad-- red-- red-. mid16-.( mid-. red-. mid-. |
    fad4--) r2 | R1*2 R2.*3 R1*2 R2. R4. R2. R4. R2 R4. R2*3 R4.
    R2*3 R4. R2*3 R4. R2. R1*3
    sib,8.--( \f la16--~ la8 do--~ do) sib-.( mib-. reb-. |
    fad4->--) r r8 do-.( fa!-. mib-. |
    fad4->--) r r8 do-.( fa!-. mib-. |
    fad4->--) r r fa-- | fad->-- r r fa-- | fad->-- r sol->-- r | la->-- r r2 R1*2 R2 R2.*2 R2 R1 |
    R2.*21
    R1. R1 R1. R1 R1. R1 R1. R1 R1. R1 R1.*5 R1 R1. R1 R1. R1 R1.*5 R1 R1. R1
  }
}

EntracteContralto = { \Contralto
  \relative {
    R2*9 R1*38 R2. R1
    R1*2 R2.*2 R2 R1 R2.*2 R1*2 R2.*2 R1*2 R2.*2 R1*2 R2.*2 R1*2 R2.*2
    R1*14
    R2.-\fermataMarkup

    fad4(\mp red8) r r4 R2.
    fad4( red8) r r4 R2. |
    R2 fad4(\p red8) r r4 |
    r fad(\mf red8) r r4 | r2 fad8->\f red-> r2 |
    r2 r4 r8 fad-> | R1 fad4\mp( red8) r r2 |
    R1*2 r2 fad4( red8) r r2 |
    r2 r4 fad( red8) r r4 |
    si8-.\pp si4-- si-- si-- si8-. r si-- si-- si-- |
    si8-. si4-- si-- si-- si8-. r si-- si-- si-- |
    si8-.\> si4-- si8-. si-. si4-- si8-.\! | R2.-\fermataMarkup

    %%% A tempo %%%
    \ten la2.~\mf la~ la~ la2 r4 | R2.*4 R2.-\fermataMarkup |

    %%% Poco più %%%
    \ten la2.~\mf la~ la~ la2 r4 | R2.-\fermataMarkup |

    %%% Andantino %%%
    la'1--\p la4( mi8) r |
    la1-- sold4( mi8) r sold2( la~) la la2.-- r4 R2. |

    %%% Largo non troppo %%%
    R1.*3 r1 mi4\fmolto( sol |
    \ten la1~) la4 r | red,4( sol la2.) r4 |
    r2 r4 la2--->\<( do4 \ten re1~)\! re4 r |
    la1~ la4 r |
    la2( sol fa) mi( fa4\< mi fa sol la2--->\! mi) r |
    dod4\<( re re mi mi\> re)\! | R1.
    sol4\f( si do2.) r4 | \ten la1~\mp la4 r |
    do,4\mf\<( si do red mi fa | mi1~--\fmolto) mi4 r |
    la2.-- r4 R1 R2. R2
  }
}

ActeDeuxSceneUnContralto= { \Contralto
  \relative {
    R2.*4 R2 R2.*2 R2 R2.*3 R2 |
    R2. R2 R2.*2 R2 R2.*3 R2 R2. R2 R2.*2 R2 R2.*3 R2 R2.*2
    R1 R2. R1 R2. R2 R2. R1*3 R2.*4 R2 R2.*5 R1 R2. R2 R2.
    \repeat unfold 12 {R1 R2.}
    r2 fa8( \mf mi fa la | \ten si2.)~ si4 r r2 |
    R2. r4 r8 la( si la si do \ten re2.)~ re4 r r2 |
    r4 red,8(\< sold4) fad8( |
    si4.) la8-- dod--( \f re!-- sol,!-- la-- |
    dod2) r4 | r r8 la--( la-- la-- la-- la-- |
    la-- do!-- sol4--) la8-. mi--( \mf \<~ |
    mi fad dod mi sol la do!4)\! |
    la8(\f do re2)~ | re4 r r2 |
    la8(   do re2)~ | re4 r r2 |
    la8(   do re2)  | fa,8( lab \ten sib2)~ sib4 r2 |
    la8(   do re2)~ | re4 r2 |
    la8(   do re2)~ | re4 r2 | sol,8( la do2) |
    la8(   do \ten re2)~ | re2.~ | re4 r r2 | R2. R1 R2. R1 |
    r2 r8 la( \mf | lab do re2.) |
    r2 r8 la( \mp | lab do re2.) |
    R2. R1 R2. R1 R2. R2 R1 R2. R1 R2. R1 R2. R1 |
  }
}

ActeDeuxSceneDeuxContralto= { \Contralto
  \relative {
    R1.*6 R1*2 R2.*5 |
    r2 r4 \ind #"sotto voce" lab8(\mf do re2)~|
    re4 r r1 | R1. R1*2 R2. |
    R1 R4. | R1*5 | r4 mib'16(\f mib fa8) r4 fad,8(\mp la|
    si2) r4 | R1. R1*2 R2.*3 R2 R2.*3
    R2 si,16-.(\f re-. mi8-> sib16-. re-. |
    mi4->) r r2 | R1*4 R2*6
    r8 sold16-.\ff sold-. la8->-- sol16-. sol-. sold4->-- r |
    r8 \ind #"meno" sold16-. sold-. la8-- r fad--(\> fad-- |
    sol2--)\p r1 | R1 R1.*2 R2. R1
    R2. R1 r2 si,8(\mf re mi2) r4 sib8( do | fa2) r4 |
    R1 si,8( re mi2)|
    sib8( do fa2.) | R2. R1 r2 si,8( re | mi2) r4 sib8( re mi2) r4  |
    re8(\< mi sol2.)\! | R2. R1 R2.
    r2 r4 la,8-.(\pp la-. sib4-.) r lad8-. lad-. \ten si!2. r4 R2. |
    R2*3 R2. R1*3 R1*5/8*14 R1*9 R2. R2 R1*2 R2.*7 R2*2 R2.*2 R2*25

    %%% Choeur %%%

    r4 sold'16-.(\pp sold-. la8-.) r4 |
    r  sold16-.(  sold-. la8-.) r4 |
    r  sold16-.(  sold-. la8-.) r4 |
    r  red,16-.(  red-.  mi8-.) r4 |
    r8 red16-.(\mp red-. mi8-.)
    r  red16-.(   red-.  mi8-.) |
    r  red16-.(   red-.  mi8-.)
    r  red16-.(   red-.  mi8-.) |
    r4 sol16-.(\< sol-. sold8-.)\! r4 | R2.*2
    r2 red8-.(\pp red-.  mi4--) r2 | R2.*3
    r2 red8-.(    red-.  mi4--) r4 red16-.\mf red-. mi8-. |
  }
}


ActeDeuxSceneTroisContralto= { \Contralto
  \relative {
    R4.*51 R4*27 R4. R4*5
    la16(\mp do re8~ re lab16 do | re8) r4 | R4.*13 R4*7
    la16(\mf do re8)  re16(\< mi sol8)\!|
    r8 sold16-.\f sold-. la8-- sol16-. sol-. sold4--
    r8 sold16-.   sold-. la8-- sol16-. sol-. sold4-- R4*4
    r8 sold16-.   sold-. la8-- fad16-. fad-. sol!4-- R4*6
    R2.-\fermataMarkup R2.
    r2 la,8(\mp do re2) r4 | r2 mib8(\mf fa lab2) r4 |
    r4 r8 lab(\f \< la do | \ten re2)\!~re4 r |
    R2*7 R2. R2*6 R1*5/8 R2*16 R1*5/8 R2
    R4. R2 R4. R2 R4.*2
    R2.*7 R2*2 R2. R2*2 R2. R2*2 R2. R2*2 R2. R2*2 R2.
    R2 R4. R2 R4. R2*2 R2. R2*2 R2. R1 R2. R2
    R2*7 R2.*7 R2 R2. R2 R2. R2 R2. R2 R2. R2
    R2. R2 R2. R2 R2. R2 R4. R2*3 R4. R2*4 R4.*2 R2.
    R1 R2. R1 R2. R1 R2. R1 R2. R1 R2. R1 R2. R1 R2. R1 R2.
    R1 R2. R1 R2. R1 R2. R1 R2. R1 R2. R1 R2. R1 R2. R1 R2.
    R1 R2. R1 R2. R1 R2. R1 R2. R1 R2. R1 R2. R1 R2. R1 R2.
    R1 R2. R1 R2. R1 R2. R1 R2. R1 R2. R1*6 R2*3

    R2.*11 R4. R2.*26 la8(\f do re4) |
    r8 la->( sold-> do-> | re4->--) r|
    r r8 fad,-.\mf | do--( re fad) re-. |
    \t { do( re sol } fad4--) | r8 fad-.( fa-. mi-. |
    re-.\< si-. la-. do-. | lab4--)\!
    r8 solb(\< | fa' mib do' sib | fa'4->--)\f r |
    R2 R2. R2*6 R2.
    r2 la,8(\mf do | re2) r4 | r
    r8 sold,(\< fad la | \ten fa'2.)\f r4 | R1*5
    r4 mi,8-.(\mp mi-. fa4-- red8-. red-. |
    mi4--) mi8-.( mi-. fa4-- red8-. red-. | mi4--) r r2 | R1*3
    r4 mi8-.( mi-. fa4-- red8-. red-- |
    mi4--) mi8-.( mi-. fa4-- red8-. red-. |
    mi4--) r r re8-.( re-. | mi4--) r r2 R1
    r4 mi8-.( mi-. re4-- re8-. re-. |
    mi4--) mi8-.( mi-. re4-- re8-. re-. | mi4--) r r2 |
    r2 r8 sold(\< la do | re2)\ff r4 sol,8-.\mf sol-. |
    sol4--\< sold8-. sold-. la4-- sol8-. sol-. |
    sold4-- la8-. la-. sib4--\! la8-. la-. | r sold-. r2 |
    fad2.(\ff~ fad2\> mi4 dod'2 <\parenthesize sol, dod>4 |
    fad'2. re2.)\!~ re4 r R2*2 R2.*40
  }
}
