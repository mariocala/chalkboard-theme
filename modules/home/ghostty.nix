{ lib, config, ... }:
with lib;
{
  config = mkIf config.chalkboard-theme.ghostty.enable {
    programs.ghostty.settings.theme = mkDefault "chalkboard";

    programs.ghostty.themes.chalkboard = with import ../../colors.nix; {
      palette = [
        "0=${black}"
        "1=${red}"
        "2=${green}"
        "3=${yellow}"
        "4=${orange}"
        "5=${purple}"
        "6=${blue}"
        "7=${grey300}"
        "8=${grey600}"
        "9=${red}"
        "10=${green}"
        "11=${yellow}"
        "12=${orange}"
        "13=${purple}"
        "14=${blue}"
        "15=${grey200}"
      ];
      foreground = "${white}";
      background = "${black}";
      cursor-text = "${black}";
      cursor-color = "${white}";
      selection-foreground = "${white}";
      selection-background = "${grey800}";
    };
  };
}
