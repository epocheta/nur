{ stdenvNoCC }:

stdenvNoCC.mkDerivation {
  name = "LigaScp";
  src = ./LigaSCP-Medium.ttf;

  phases = [ "installPhase" ];

  installPhase = ''
    mkdir -p $out/share/fonts/TTF
    cp $src $out/share/fonts/TTF/
  '';
}
