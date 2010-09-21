%------------------------------------------------------------------%
% opus_libre -- main.ly                                            %
%                                                                  %
% (c) 2008-2010 Valentin Villenave <valentin@villenave.net>        %
%                                                                  %
%     opus_libre is a free framework for GNU LilyPond: you may     %
% redistribute it and/or modify it under the terms of the GNU      %
% General Public License, version 3 or later: gnu.org/licenses     %
%                                                                  %
%------------------------------------------------------------------%

dash = {
  \once \override LyricHyphen #'minimum-distance = #4
  \once \override LyricHyphen #'length = #2
  \once \override LyricHyphen #'thickness = #1.2
}

leftSyl = {
  \once \override LyricText #'self-alignment-X = #0.9
}

ten =
#(define-music-function (parser location music) (ly:music?)
   (if
     (equal? (ly:music-property music 'name) 'EventChord)
     (set! (ly:music-property music 'elements)
           (append (ly:music-property music 'elements)
                  (list (make-music 'TextScriptEvent 'text
                    (markup #:translate (cons 4 0)
                    #:italic "(ten.)"))))))
                 music)


pl =
#(define-music-function (parser location one two) (ly:music? ly:music?)
#{ << { \voiceTwo $one } \\ { \voiceOne $two } >> #})


% Entry point for scores compilation.
\version "2.13.32"

%%%%%%%%%%%%%%%%%%%%%%%% Language selection %%%%%%%%%%%%%%%%%%%%%%%%

%% Source code language (see locale/ ) ----------------------------%
input = "en"

%% Edition localisation (if different) ----------------------------%
%edition = "fr"

%%%%%%%%%%%%%%%%%%%%%%%%%% Score selection %%%%%%%%%%%%%%%%%%%%%%%%%

%% Source code directory (see scores/ ) ---------------------------%
scores = "poemes"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Optional %%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Skeleton (see etc/skel/ ) --------------------------------------%
skel = "melodie"

%% Graphic theme (see share/themes/ ) -----------------------------%
theme = "default"

structure = #'("Un" "Deux" "Trois")

lyricsSuffix = "Texte"

%%%%%%%%%%%%%%%%%%%%%%%%%%% Main include %%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Automatic functions inclusion, do not edit ---------------------%
\include "lib/include.ly"

%% Select edition or instrument -----------------------------------%

% (e.g. "fullscore", "pianoscore" or any instrument name)
%\make #"all"
% { c }
%\bookOutputName #"toto"

\make #"Un"

%%-----------------------------------------------------------------%
