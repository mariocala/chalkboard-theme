{ lib, config, ... }:
with lib;
{
  config = mkIf config.chalkboard-theme.zellij.enable {
    programs.zellij.settings.theme = mkDefault "chalkboard";

    xdg.configFile."zellij/themes/chalkboard.kdl" = lib.mkIf config.programs.zellij.enable {
      text =
        with import ../../colors.nix;
        #kdl
        ''
          themes {
              chalkboard {
                  bg "${black}"
                  fg "${white}"
                  red "${red}"
                  green "${green}"
                  blue "${blue}"
                  yellow "${yellow}"
                  magenta "${purple}"
                  orange "${orange}"
                  cyan "${blue}"
                  black "${black}"
                  white "${white}"
              }
          }
        '';
    };
  };
}
