%------------------------------------------------------------------%
% Opéra Libre -- vocal_score.ly                                    %
%                                                                  %
% (c) Valentin Villenave, 2008                                     %
%                                                                  %
%------------------------------------------------------------------%

%%% This is the main file for the so-called vocal version, i.e. with
%%% piano accompaniment.

\version "2.12"

%%%%%%%%%%%%%%%%%%%%%%%%%%%% Inclusions %%%%%%%%%%%%%%%%%%%%%%%%%%%%

\include "italiano.ly"

\include "./definitions/functions.ly"
\include "./definitions/text-functions.ly"
\include "./definitions/graphics.ly"
\include "./texte/decoupage.ly"

\include "./definitions/paper.ly"
\include "./definitions/layout.ly"

\include "./texte/didascalies.ly"
\include "./definitions/mesures.ly"

\include "./texte/texte.ly"

\include "./voix/soprano1.ly"
\include "./voix/soprano2.ly"
\include "./voix/contralto.ly"
\include "./voix/tenor.ly"
\include "./voix/baryton1.ly"
\include "./voix/baryton2.ly"

\include "./instruments/reduction.ly"

%%%%%%%%%%%%%%%%%%%%%%%% Layout declarations %%%%%%%%%%%%%%%%%%%%%%%

\layout {
  \includeLayout
}

%%%%%%%%%%%%%%%%%% Scene-by-scene music inclusion %%%%%%%%%%%%%%%%%%

Prologue = {
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
        \new StaffPiano = "md"    \PrologueMainDroite
        \new StaffPiano = "mg"    \PrologueMainGauche
      >>
     }
  >>
}

ActeUnSceneUn = {
  <<
    \new TopLine \ActeUnSceneUnMesures
    \new ChoirStaff
      <<
        \new Staff \new Voice = "soprano" \ActeUnSceneUnSopranoUn
        \new Lyrics \lyricsto "soprano" { \ActeUnSceneUnSopranoUnTexte }
        \new Staff \new Voice = "barytonUn" \ActeUnSceneUnBarytonUn
        \new Lyrics \lyricsto "barytonUn" { \ActeUnSceneUnBarytonUnTexte }
        \new Staff \new Voice = "barytonDeux" \ActeUnSceneUnBarytonDeux
        \new Lyrics \lyricsto "barytonDeux" { \ActeUnSceneUnBarytonDeuxTexte }
      >>
    \new PianoStaff { \Accompagnement
      <<
        \new StaffPiano = "md" \ActeUnSceneUnMainDroite
        \new StaffPiano = "mg" \ActeUnSceneUnMainGauche
      >>
    }
  >>
}

ActeUnSceneUnBis = {
  <<
    \new TopLine \ActeUnSceneUnBisMesures
    \new ChoirStaff
      <<
        \new Staff \new Voice = "barytonUn" \ActeUnSceneUnBisBarytonUn
        \new Lyrics \lyricsto "barytonUn" { \ActeUnSceneUnBisBarytonUnTexte }
        \new Staff \new Voice = "barytonDeux" \ActeUnSceneUnBisBarytonDeux
        \new Lyrics \lyricsto "barytonDeux" { \ActeUnSceneUnBisBarytonDeuxTexte }
      >>
    \new PianoStaff { \Accompagnement <<
        \new StaffPiano = "md" \ActeUnSceneUnBisMainDroite
        \new StaffPiano = "mg" \ActeUnSceneUnBisMainGauche
      >>
    }
  >>
}

InterludeUn = {
  <<
    \new TopLine \InterludeUnMesures
    \new ChoirStaff
      <<
        \new Staff \new Voice = "contralto" \InterludeUnContralto
        \new Lyrics \lyricsto "contralto" { \InterludeUnContraltoTexte }
      >>
    \new PianoStaff { \Accompagnement <<
        \new StaffPiano = "md" \InterludeUnMainDroite
        \new StaffPiano = "mg" \InterludeUnMainGauche
      >>
    }
  >>
}

ActeUnSceneDeux = {
  <<
    \new TopLine \ActeUnSceneDeuxMesures
    \new ChoirStaff
      <<
        \new Staff \new Voice = "soprano" \ActeUnSceneDeuxSopranoDeux
        \new Lyrics \lyricsto "soprano" { \ActeUnSceneDeuxSopranoDeuxTexte }
        \new Staff \new Voice = "baryton" \ActeUnSceneDeuxBarytonDeux
        \new Lyrics \lyricsto "baryton" { \ActeUnSceneDeuxBarytonDeuxTexte }
      >>
    \new PianoStaff { \Accompagnement
      <<
        \new StaffPiano = "md" \ActeUnSceneDeuxMainDroite
        \new StaffPiano = "mg" \ActeUnSceneDeuxMainGauche
      >>
    }
  >>
}

InterludeDeux = {
  <<
    \new TopLine \InterludeDeuxMesures
    \new ChoirStaff
      <<
        \new Staff \new Voice = "contralto" \InterludeDeuxContralto
        \new Lyrics \lyricsto "contralto" { \InterludeDeuxContraltoTexte }
      >>
    \new PianoStaff { \Accompagnement <<
        \new StaffPiano = "md" \InterludeDeuxMainDroite
        \new StaffPiano = "mg" \InterludeDeuxMainGauche
      >>
    }
  >>
}

ActeUnSceneTrois = {
  <<
    \new TopLine \ActeUnSceneTroisMesures
    \new ChoirStaff
      <<
        \new Staff \new Voice = "tenor" \ActeUnSceneTroisTenor
        \new Lyrics \lyricsto "tenor" { \ActeUnSceneTroisTenorTexte }
        \new Staff \new Voice = "baryton" \ActeUnSceneTroisBarytonUn
        \new Lyrics \lyricsto "baryton" { \ActeUnSceneTroisBarytonUnTexte }
      >>
    \new PianoStaff { \Accompagnement
      <<
        \new StaffPiano = "md" \ActeUnSceneTroisMainDroite
        \new StaffPiano = "mg" \ActeUnSceneTroisMainGauche
      >>
    }
  >>
}

ActeUnSceneTroisBis = {
  <<
    \new TopLine \ActeUnSceneTroisBisMesures
    \new ChoirStaff
      <<
        \new Staff \new Voice = "alto" \ActeUnSceneTroisBisContralto
        \new Lyrics \lyricsto "alto" { \ActeUnSceneTroisBisContraltoTexte }
        \new Staff \new Voice = "barytonDeux" \ActeUnSceneTroisBisBarytonDeux
        \new Lyrics \lyricsto "barytonDeux" { \ActeUnSceneTroisBisBarytonDeuxTexte }
      >>
    \new PianoStaff { \Accompagnement
      <<
        \new StaffPiano = "md" \ActeUnSceneTroisBisMainDroite
        \new StaffPiano = "mg" \ActeUnSceneTroisBisMainGauche
      >>
    }
  >>
}

ActeUnSceneTroisTer = {
  <<
    \new TopLine \ActeUnSceneTroisTerMesures
    \new ChoirStaff
      <<
        \new Staff \new Voice = "soprano" \ActeUnSceneTroisTerSopranoUn
        \new Lyrics \lyricsto "soprano" { \ActeUnSceneTroisTerSopranoUnTexte }
        \new Staff \new Voice = "barytonUn" \ActeUnSceneTroisTerBarytonUn
        \new Lyrics \lyricsto "barytonUn" { \ActeUnSceneTroisTerBarytonUnTexte }
      >>
    \new PianoStaff { \Accompagnement
      <<
        \new StaffPiano = "md" \ActeUnSceneTroisTerMainDroite
        \new StaffPiano = "mg" \ActeUnSceneTroisTerMainGauche
      >>
    }
  >>
}

InterludeTrois = {
  <<
    \new TopLine \InterludeTroisMesures
    \new PianoStaff { \Accompagnement <<
        \new StaffPiano = "md" \InterludeTroisMainDroite
        \new StaffPiano = "mg" \InterludeTroisMainGauche
      >>
    }
  >>
}

ActeUnSceneQuatre = {
  <<
    \new TopLine \ActeUnSceneQuatreMesures
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
    \new PianoStaff { \Accompagnement
      <<
        \new StaffPiano = "md" \ActeUnSceneQuatreMainDroite
        \new StaffPiano = "mg" \ActeUnSceneQuatreMainGauche
      >>
    }
  >>
}

Entracte = {
  <<
    \new TopLine \EntracteMesures
    \new ChoirStaff
      <<
        \new Staff \new Voice = "sopranoUn" \EntracteSopranoUn
        \new Lyrics \lyricsto "sopranoUn" { \EntracteSopranoUnTexte }
        \new Staff \new Voice = "sopranoDeux" \EntracteSopranoDeux
        \new Lyrics \lyricsto "sopranoDeux" { \EntracteSopranoDeuxTexte }
        \new Staff \new Voice = "alto" \EntracteContralto
        \new Lyrics \lyricsto "alto" { \EntracteContraltoTexte }
        \new Staff \new Voice = "tenor" \EntracteTenor
        \new Lyrics \lyricsto "tenor" { \EntracteTenorTexte }
        \new Staff \new Voice = "barytonUn" \EntracteBarytonUn
        \new Lyrics \lyricsto "barytonUn" { \EntracteBarytonUnTexte }
        \new Staff \new Voice = "barytonDeux" \EntracteBarytonDeux
        \new Lyrics \lyricsto "barytonDeux" { \EntracteBarytonDeuxTexte }
      >>
    \new PianoStaff { \Accompagnement
      <<
        \new StaffPiano = "md"    \EntracteMainDroite
        \new StaffPiano = "mg"    \EntracteMainGauche
      >>
    }
  >>
}

ActeDeuxSceneUn = {
  <<
    \new TopLine \ActeDeuxSceneUnMesures
    \new ChoirStaff
      <<
        \new Staff \new Voice = "sopranoUn" \ActeDeuxSceneUnSopranoUn
        \new Lyrics \lyricsto "sopranoUn" { \ActeDeuxSceneUnSopranoUnTexte }
        \new Staff \new Voice = "sopranoDeux" \ActeDeuxSceneUnSopranoDeux
        \new Lyrics \lyricsto "sopranoDeux" { \ActeDeuxSceneUnSopranoDeuxTexte }
        \new Staff \new Voice = "contralto" \ActeDeuxSceneUnContralto
        \new Lyrics \lyricsto "contralto" { \ActeDeuxSceneUnContraltoTexte }
      >>
    \new PianoStaff { \Accompagnement
      <<
        \new StaffPiano = "md" \ActeDeuxSceneUnMainDroite
        \new StaffPiano = "mg" \ActeDeuxSceneUnMainGauche
      >>
    }
  >>
}

ActeDeuxSceneUnBis = {
  <<
    \new TopLine \ActeDeuxSceneUnBisMesures
    \new ChoirStaff
      <<
        \new Staff \new Voice = "tenor" \ActeDeuxSceneUnBisTenor
        \new Lyrics \lyricsto "tenor" { \ActeDeuxSceneUnBisTenorTexte }
        \new Staff \new Voice = "barytonUn" \ActeDeuxSceneUnBisBarytonUn
        \new Lyrics \lyricsto "barytonUn" { \ActeDeuxSceneUnBisBarytonUnTexte }
        \new Staff \new Voice = "barytonDeux" \ActeDeuxSceneUnBisBarytonDeux
        \new Lyrics \lyricsto "barytonDeux" { \ActeDeuxSceneUnBisBarytonDeuxTexte }
      >>
    \new PianoStaff { \Accompagnement
      <<
        \new StaffPiano = "md" \ActeDeuxSceneUnBisMainDroite
        \new StaffPiano = "mg" \ActeDeuxSceneUnBisMainGauche
      >>
    }
  >>
}

ActeDeuxSceneDeux = {
  <<
    \new TopLine \ActeDeuxSceneDeuxMesures
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
    \new PianoStaff { \Accompagnement
      <<
        \new StaffPiano = "md" \ActeDeuxSceneDeuxMainDroite
        \new StaffPiano = "mg" \ActeDeuxSceneDeuxMainGauche
      >>
    }
  >>
}

ActeDeuxSceneTrois = {
  <<
    \new TopLine \ActeDeuxSceneTroisMesures
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
    \new PianoStaff { \Accompagnement
      <<
        \new StaffPiano = "md" \ActeDeuxSceneTroisMainDroite
        \new StaffPiano = "mg" \ActeDeuxSceneTroisMainGauche
      >>
    }
  >>
}

%%%%%%%%%%%%%%%%%%%%%%%%% The actual score %%%%%%%%%%%%%%%%%%%%%%%%%
%showFirstLength = s1*40
\book {
  \header {
    title = \OperaTitre
    subtitle = \OperaSousTitre
    libretto = \OperaLivret
    composer = \OperaPartition
    tagline = \OperaNotice
    illustration = \Couronne
    scoretype = \VocalScore
    copyright = \Copyright
  }
  \pageBreak
  %
  \markup \null
  \pageBreak
  \markuplines \table-of-contents
  \markup \fill-line { \Bilboquet }
  \pageBreak
  \markup \BigNotice
  \pageBreak
  %
  \score {
    \Prologue
    \header {
      piece = \PrologueTitre
    }
  } %
  \score {
    \ActeUnSceneUn
    \header {
      acte = \ActeUnTitre
      piece = \SceneUnTitre
    }
  } %
  \score {
    \ActeUnSceneUnBis
    \header {
      piece = \Separateur
    }
  } %
  \score {
    \InterludeUn
    \header {
      piece = \InterludeTitre
      dessin = \Arrosoir
    }
  } %
  \score {
    \ActeUnSceneDeux
    \header {
      piece = \SceneDeuxTitre
    }
  } %
  \score {
    \InterludeDeux
    \header {
      piece = \InterludeTitre
      dessin = \Arrosoir
    }
  } %
  \score {
    \ActeUnSceneTrois
    \header {
      piece = \SceneTroisTitre
    }
  } %
  \score {
    \ActeUnSceneTroisBis
    \header {
      piece = \Separateur
    }
  } %
  \score {
    \ActeUnSceneTroisTer
    \header {
      piece = \Separateur
    }
  } %
  \score {
    \InterludeTrois
    \header {
      piece = \InterludeTitre
      illustration = \Arrosoir
    }
  } %
  \score {
    \ActeUnSceneQuatre
    \header {
      piece = \FinaleTitre
    }
  } %
  \score {
    \Entracte
    \header {
      piece = \EntracteTitre
    }
  } %
  \pageBreak
  \score {
    \ActeDeuxSceneUn
    \header {
      acte = \ActeDeuxTitre
      piece = \SceneUnTitre
    }
  } %
  \score {
    \ActeDeuxSceneUnBis
    \header {
      piece = \Separateur
    }
  } %
  \score {
    \ActeDeuxSceneDeux
    \header {
      piece = \SceneDeuxTitre
    }
  } %
  \score {
    \ActeDeuxSceneTrois
    \header {
      piece = \FinaleTitre
    }
  } %
}
