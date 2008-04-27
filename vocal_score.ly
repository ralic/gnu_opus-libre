%------------------------------------------------------------------%
% Opéra Libre -- vocal_score.ly                                    %
%                                                                  %
% (c) Valentin Villenave, 2008                                     %
%                                                                  %
%------------------------------------------------------------------%

\include "italiano.ly"

\include "./definitions/functions.ly"
\include "./texte/decoupage.ly"
\include "./texte/personnages.ly"
\include "./definitions/structure.ly"
\include "./texte/didascalies.ly"
\include "./definitions/layout.ly"
\include "./definitions/mesures.ly"

\include "./texte/texte.ly"

\include "./voix/soprano1.ly"
\include "./voix/soprano2.ly"
\include "./voix/contralto.ly"
\include "./voix/tenor.ly"
\include "./voix/baryton1.ly"
\include "./voix/baryton2.ly"

\include "./instruments/reduction.ly" 

\layout {
  \context {
    \type "Engraver_group"
    \name "TopLine"
    \consists "Output_property_engraver"
    \consists "Axis_group_engraver"
    \consists "Script_engraver"
    \consists "Dynamic_engraver"
    \consists "Mark_engraver"
    \consists "Text_engraver"
    \consists "Metronome_mark_engraver"
    %\consists "Skip_event_swallow_translator"
    %\consists "Time_signature_engraver"
  }
  \context {
    \type "Engraver_group"
    \name "Dynamics"
    \alias Voice
    \consists "Output_property_engraver"
    \consists "Axis_group_engraver"
    \consists "Dynamic_engraver"
    \consists "Skip_event_swallow_translator"
    \consists "Piano_pedal_engraver"
    %\consists "Bar_engraver"
    %\override BarLine #'transparent = ##t
    \override VerticalAxisGroup #'minimum-Y-extent = #'(-1 . 1)
    \override TextScript #'font-size = #2
    \override TextScript #'font-shape = #'italic
    \override DynamicText #'extra-offset = #'(0 . 2.5)
    \override Hairpin #'extra-offset = #'(0 . 2.5)
    pedalSustainStrings = #'("Ped." "*Ped." "*")
    pedalUnaCordaStrings = #'("una corda" "" "tre corde")

  }
  \context {
    \Staff
    \type "Engraver_group"
    \name "StaffUp"
    \alias Staff
    \override VerticalAxisGroup #'minimum-Y-extent = #'(-3 . 5)
    \override StaffSymbol #'staff-space = #(magstep -1)
    fontSize = #-1
  }
  \context {
    \StaffUp
    \type "Engraver_group"
    \name "StaffDown"
    \alias Staff
    \override VerticalAxisGroup #'minimum-Y-extent = #'(-4 . 3)
  }
  \context {
    \Staff
    \remove "Axis_group_engraver"
    \consists "Hara_kiri_engraver"
    \accepts "Lyrics"
    \override Beam #'auto-knee-gap = #'()
    \override VerticalAxisGroup #'remove-empty = ##t
  }
  \context { \PianoStaff 
    \accepts "StaffUp"
    \accepts "Dynamics"
    \accepts "StaffDown"
    connectArpeggios = ##t % to avoid collisions with pianoDynamicss
  }
  \context { \Score
    \remove "Mark_engraver"
    \remove "Metronome_mark_engraver"
    \accepts "TopLine"
  }
}

\paper {
  %line-width = \paper-width - 20
  %horizontal-shift = 5
  line-width = #180
  bottom-margin = #20
  ragged-bottom = ##f
  ragged-last-bottom = ##t
  left-margin = #20
  % systemSeparatorMarkup = \slashSeparator
  % between-system-space = 1.5\cm
  % between-system-padding = #1
  % annotate-spacing = ##t
}

Prologue = { \ReductionLayout
  <<
    \new TopLine \PrologueMesures
    \new ChoirStaff
      <<
        \new Staff \new Voice = "tenor" \PrologueTenor
        \new Lyrics \lyricsto "tenor" { \PrologueTenorTexte }
        \new Staff \new Voice = "baryton" \PrologueBarytonDeux
        \new Lyrics \lyricsto "baryton" { \PrologueBarytonDeuxTexte }
      >>
    \new PianoStaff { \Accompagnement
      <<
        \new StaffUp = "droite"		\PrologueMainDroite
        \new Dynamics << \PianoDynamics \PrologueNuances >>
        \new StaffDown = "gauche"		\PrologueMainGauche
      >> }
  >>
}

ActeUnSceneUn = { \ReductionLayout
<<
\new ChoirStaff
	<<
		\new Staff \new Voice = "soprano" \ActeUnSceneUnSopranoUn
		\new Lyrics \lyricsto "soprano" { \ActeUnSceneUnSopranoUnTexte }
		\new Staff \new Voice = "barytonUn" \ActeUnSceneUnBarytonUn
		\new Lyrics \lyricsto "barytonUn" { \ActeUnSceneUnBarytonUnTexte }
		\new Staff \new Voice = "barytonDeux" \ActeUnSceneUnBarytonDeux
		\new Lyrics \lyricsto "barytonDeux" { \ActeUnSceneUnBarytonDeuxTexte }
	>>
\new PianoStaff { \Accompagnement <<
	\new StaffUp = "droite"		\ActeUnSceneUnMainDroite
	\new Dynamics <<\PianoDynamics \ActeUnSceneUnMesures >>
	\new StaffDown = "gauche"		\ActeUnSceneUnMainGauche
		>> }
>>
}

ActeUnSceneUnBis = { \ReductionLayout
<<
\new ChoirStaff
	<<
		\new Staff \new Voice = "barytonUn" \ActeUnSceneUnBisBarytonUn
		\new Lyrics \lyricsto "barytonUn" { \ActeUnSceneUnBisBarytonUnTexte }
		\new Staff \new Voice = "barytonDeux" \ActeUnSceneUnBisBarytonDeux
		\new Lyrics \lyricsto "barytonDeux" { \ActeUnSceneUnBisBarytonDeuxTexte }
	>>
\new PianoStaff { \Accompagnement <<
	\new StaffUp = "droite"		\ActeUnSceneUnBisMainDroite
	\new Dynamics <<\PianoDynamics \ActeUnSceneUnBisMesures >>
	\new StaffDown = "gauche"		\ActeUnSceneUnBisMainGauche
		>> }
>>
}


ActeUnSceneDeux = { \ReductionLayout
<<
\new ChoirStaff
	<<
		\new Staff \new Voice = "soprano" \ActeUnSceneDeuxSopranoDeux
		\new Lyrics \lyricsto "soprano" { \ActeUnSceneDeuxSopranoDeuxTexte }
		\new Staff \new Voice = "baryton" \ActeUnSceneDeuxBarytonDeux
		\new Lyrics \lyricsto "baryton" { \ActeUnSceneDeuxBarytonDeuxTexte }
	>>
\new PianoStaff { \Accompagnement <<
	\new StaffUp = "droite"		\ActeUnSceneDeuxMainDroite
	\new Dynamics <<\PianoDynamics \ActeUnSceneDeuxMesures >>
	\new StaffDown = "gauche"		\ActeUnSceneDeuxMainGauche
		>> }
>>
}

ActeUnSceneTrois = { \ReductionLayout
<<
\new ChoirStaff
	<<
		\new Staff \new Voice = "tenor" \ActeUnSceneTroisTenor
		\new Lyrics \lyricsto "tenor" { \ActeUnSceneTroisTenorTexte }
		\new Staff \new Voice = "baryton" \ActeUnSceneTroisBarytonUn
		\new Lyrics \lyricsto "baryton" { \ActeUnSceneTroisBarytonUnTexte }
	>>
\new PianoStaff { \Accompagnement <<
	\new StaffUp = "droite"		\ActeUnSceneTroisMainDroite
	\new Dynamics <<\PianoDynamics \ActeUnSceneTroisMesures >>
	\new StaffDown = "gauche"		\ActeUnSceneTroisMainGauche
		>> }
>>
}

ActeUnSceneTroisBis = { \ReductionLayout
<<
\new ChoirStaff
	<<
		\new Staff \new Voice = "alto" \ActeUnSceneTroisBisContralto
		\new Lyrics \lyricsto "alto" { \ActeUnSceneTroisBisContraltoTexte }
		\new Staff \new Voice = "barytonDeux" \ActeUnSceneTroisBisBarytonDeux
		\new Lyrics \lyricsto "barytonDeux" { \ActeUnSceneTroisBisBarytonDeuxTexte }
	>>
\new PianoStaff { \Accompagnement <<
	\new StaffUp = "droite"		\ActeUnSceneTroisBisMainDroite
	\new Dynamics <<\PianoDynamics \ActeUnSceneTroisBisMesures >>
	\new StaffDown = "gauche"		\ActeUnSceneTroisBisMainGauche
		>> }
>>
}

ActeUnSceneTroisTer = { \ReductionLayout
<<
\new ChoirStaff
	<<
		\new Staff \new Voice = "soprano" \ActeUnSceneTroisTerSopranoUn
		\new Lyrics \lyricsto "soprano" { \ActeUnSceneTroisTerSopranoUnTexte }
		\new Staff \new Voice = "barytonUn" \ActeUnSceneTroisTerBarytonUn
		\new Lyrics \lyricsto "barytonUn" { \ActeUnSceneTroisTerBarytonUnTexte }
	>>
\new PianoStaff { \Accompagnement <<
	\new StaffUp = "droite"		\ActeUnSceneTroisTerMainDroite
	\new Dynamics <<\PianoDynamics \ActeUnSceneTroisTerMesures >>
	\new StaffDown = "gauche"		\ActeUnSceneTroisTerMainGauche
		>> }
>>
}

ActeUnSceneQuatre = { \ReductionLayout
<<
\new ChoirStaff
	 <<
		 \new Staff \new Voice = "soprano" \ActeUnSceneQuatreSopranoDeux
		 \new Lyrics \lyricsto "soprano" { \ActeUnSceneQuatreSopranoDeuxTexte }
     \new Staff \new Voice = "alto" \ActeUnSceneQuatreContralto
     \new Lyrics \lyricsto "alto" { \ActeUnSceneQuatreContraltoTexte }
     \new Staff \new Voice = "tenor" \ActeUnSceneQuatreTenor
     \new Lyrics \lyricsto "tenor" { \ActeUnSceneQuatreTenorTexte }
		 \new Staff \new Voice = "barytonUn" \ActeUnSceneQuatreBarytonUn
		 \new Lyrics \lyricsto "barytonUn" { \ActeUnSceneQuatreBarytonUnTexte }
     \new Staff \new Voice = "barytonDeux" \ActeUnSceneQuatreBarytonDeux
     \new Lyrics \lyricsto "barytonDeux" { \ActeUnSceneQuatreBarytonDeuxTexte }
	 >>
\new PianoStaff { \Accompagnement <<
	\new StaffUp = "droite"		\ActeUnSceneQuatreMainDroite
	\new Dynamics <<\PianoDynamics \ActeUnSceneQuatreMesures >>
	\new StaffDown = "gauche"		\ActeUnSceneQuatreMainGauche
		>> }
>>
}

%{ Entracte={ \ReductionLayout
<<
\new ChoirStaff
 <<
    \new Staff \new Voice = "sopranoUn" \EntracteSopranoUn
		\new Lyrics \lyricsto "sopranoUn" { \EntracteSopranoUnTexte }
    \new Staff \new Voice = "sopranoDeux" \EntracteSopranoDeux
		\new Lyrics \lyricsto "sopranoDeux" { \EntracteSopranoDeuxTexte }
    \new Staff \new Voice = "alto" \EntracteAlto
    \new Lyrics \lyricsto "alto" { \EntracteAltoTexte }
    \new Staff \new Voice = "tenor" \EntracteTenor
    \new Lyrics \lyricsto "tenor" { \EntracteTenorTexte }
		\new Staff \new Voice = "barytonUn" \EntracteBarytonUn
		\new Lyrics \lyricsto "barytonUn" { \EntracteBarytonUnTexte }
    \new Staff \new Voice = "barytonDeux" \EntracteBarytonDeux
    \new Lyrics \lyricsto "barytonDeux" { \EntracteBarytonDeuxTexte }
    >> 
\new PianoStaff { \Accompagnement <<
	\new StaffUp = "droite"		\EntracteMainDroite
	\new Dynamics <<\PianoDynamics \EntracteMesures >>
	\new StaffDown = "gauche"		\EntracteMainGauche
		>> }
>>
} %}

ActeDeuxSceneUn = { \ReductionLayout
<<
\new ChoirStaff
	<<
		\new Staff \new Voice = "sopranoUn" \ActeDeuxSceneUnSopranoUn
    \new Lyrics \lyricsto "sopranoUn" { \ActeDeuxSceneUnSopranoUnTexte }
		\new Staff \new Voice = "sopranoDeux" \ActeDeuxSceneUnSopranoDeux
    \new Lyrics \lyricsto "sopranoDeux" { \ActeDeuxSceneUnSopranoDeuxTexte }
		\new Staff \new Voice = "contralto" \ActeDeuxSceneUnContralto
    \new Lyrics \lyricsto "contralto" { \ActeDeuxSceneUnContraltoTexte }
	>>
	\new PianoStaff { \Accompagnement <<
	\new StaffUp = "droite"		\ActeDeuxSceneUnMainDroite
	\new Dynamics <<\PianoDynamics \ActeDeuxSceneUnMesures >>
	\new StaffDown = "gauche"		\ActeDeuxSceneUnMainGauche
		>> }
>>
}

ActeDeuxSceneUnBis = { \ReductionLayout
<<
\new ChoirStaff
	<<
		\new Staff \new Voice = "tenor" \ActeDeuxSceneUnBisTenor
    \new Lyrics \lyricsto "tenor" { \ActeDeuxSceneUnBisTenorTexte }
		\new Staff \new Voice = "barytonUn" \ActeDeuxSceneUnBisBarytonUn
    \new Lyrics \lyricsto "barytonUn" { \ActeDeuxSceneUnBisBarytonUnTexte }
		\new Staff \new Voice = "barytonDeux" \ActeDeuxSceneUnBisBarytonDeux
    \new Lyrics \lyricsto "barytonDeux" { \ActeDeuxSceneUnBisBarytonDeuxTexte }
	>>
	\new PianoStaff { \Accompagnement <<
	\new StaffUp = "droite"		\ActeDeuxSceneUnBisMainDroite
	\new Dynamics <<\PianoDynamics \ActeDeuxSceneUnBisMesures >>
	\new StaffDown = "gauche"		\ActeDeuxSceneUnBisMainGauche
		>> }
>>
}

ActeDeuxSceneDeux = { \ReductionLayout
<<
\new ChoirStaff
	<<
		\new Staff \new Voice = "sopranoUn" \ActeDeuxSceneDeuxSopranoUn
    \new Lyrics \lyricsto "sopranoUn" { \ActeDeuxSceneDeuxSopranoUnTexte }
		\new Staff \new Voice = "sopranoDeux" \ActeDeuxSceneDeuxSopranoDeux
    \new Lyrics \lyricsto "sopranoDeux" { \ActeDeuxSceneDeuxSopranoDeuxTexte }
		\new Staff \new Voice = "contralto" \ActeDeuxSceneDeuxContralto
    \new Lyrics \lyricsto "contralto" { \ActeDeuxSceneDeuxContraltoTexte }
    \new Staff \new Voice = "tenor" \ActeDeuxSceneDeuxTenor
    \new Lyrics \lyricsto "tenor" { \ActeDeuxSceneDeuxTenorTexte }
    \new Staff \new Voice = "barytonUn" \ActeDeuxSceneDeuxBarytonUn
    \new Lyrics \lyricsto "barytonUn" { \ActeDeuxSceneDeuxBarytonUnTexte }
    \new Staff \new Voice = "barytonDeux" \ActeDeuxSceneDeuxBarytonDeux
    \new Lyrics \lyricsto "barytonDeux" { \ActeDeuxSceneDeuxBarytonDeuxTexte }
    >> 
	\new PianoStaff { \Accompagnement <<
	\new StaffUp = "droite"		\ActeDeuxSceneDeuxMainDroite
	\new Dynamics <<\PianoDynamics \ActeDeuxSceneDeuxMesures >>
	\new StaffDown = "gauche"		\ActeDeuxSceneDeuxMainGauche
		>> }
>>
}

ActeDeuxSceneTrois = { \ReductionLayout
<<
\new ChoirStaff
	<<
		\new Staff \new Voice = "sopranoUn" \ActeDeuxSceneTroisSopranoUn
    \new Lyrics \lyricsto "sopranoUn" { \ActeDeuxSceneTroisSopranoUnTexte }
		\new Staff \new Voice = "sopranoDeux" \ActeDeuxSceneTroisSopranoDeux
    \new Lyrics \lyricsto "sopranoDeux" { \ActeDeuxSceneTroisSopranoDeuxTexte }
		\new Staff \new Voice = "contralto" \ActeDeuxSceneTroisContralto
    \new Lyrics \lyricsto "contralto" { \ActeDeuxSceneTroisContraltoTexte }
    \new Staff \new Voice = "tenor" \ActeDeuxSceneTroisTenor
    \new Lyrics \lyricsto "tenor" { \ActeDeuxSceneTroisTenorTexte }
    \new Staff \new Voice = "barytonUn" \ActeDeuxSceneTroisBarytonUn
    \new Lyrics \lyricsto "barytonUn" { \ActeDeuxSceneTroisBarytonUnTexte }
    \new Staff \new Voice = "barytonDeux" \ActeDeuxSceneTroisBarytonDeux
    \new Lyrics \lyricsto "barytonDeux" { \ActeDeuxSceneTroisBarytonDeuxTexte }
    >> 
	\new PianoStaff { \Accompagnement <<
	\new StaffUp = "droite"		\ActeDeuxSceneTroisMainDroite
	\new Dynamics <<\PianoDynamics \ActeDeuxSceneTroisMesures >>
	\new StaffDown = "gauche"		\ActeDeuxSceneTroisMainGauche
		>> }
>>
}

\book {
  \header {
	  title = \OperaTitre
	  subtitle = \Reduction
	  poet = \OperaLivret
	  composer =  \OperaPartition
    tagline = \OperaNotice }

\score {
	   \Prologue
    \header {
      tableau = \PrologueTitre
      indication = \PrologueAAA
	    piece = \markup { \column {
       \fill-line {  \fromproperty #'header:tableau }
       \vspace #4
       \fill-line { \fromproperty #'header:indication }
        }
	    }
    }
}%}
%{\score {
    \ActeUnSceneUn
    \header {
      piece = \ActeUnSceneUnTitre
    }
}%}
%{\score {
    \ActeUnSceneUnBis
    \header {
      piece = \Separateur
    }
}%}
%{\score {
	  \ActeUnSceneDeux
    \header {
	    piece = \ActeUnSceneDeuxTitre
	    }
}%}
%{\score {
    \ActeUnSceneTrois
    \header {
	    piece = \ActeUnSceneTroisTitre
	    }
}%}
%{\score {
    \ActeUnSceneTroisBis
    \header {
	    piece = \Separateur
	    }
}%}
%{\score {
	  \ActeUnSceneTroisTer
    \header {
	    piece = \Separateur
	    }
}%}
%{\score {
	  \ActeUnSceneQuatre
    \header {
	    piece = \ActeUnSceneQuatreTitre
	    }
}%}
%{\score {
    \Entracte
    \header {
      piece = \EntracteTitre
      }
}%}
%{\score {
	   \ActeDeuxSceneUn
    \header {
	    piece = \ActeDeuxSceneUnTitre
	    }
}%}
%{\score {
      \ActeDeuxSceneUnBis
      \header {
        piece = \Separateur
      }
}%}
%{\score {
    \ActeDeuxSceneDeux
    \header {
      piece = \ActeDeuxSceneDeuxTitre
    }
}%}
%{\score {
    \ActeDeuxSceneTrois
    \header {
      piece = \ActeDeuxSceneTroisTitre
    }
}%}
}
