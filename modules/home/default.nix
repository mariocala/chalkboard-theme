{ lib, config, ... }:
{
  imports = [
    ./ghostty.nix
    ./helix.nix
    ./zellij.nix
  ];

  options.chalkboard-theme =
    let
      mkEnableOptionFor =
        name:
        lib.mkOption {
          default = config.chalkboard-theme.enable;
          example = true;
          description = "Whether to enable Chalkboard Theme for ${name}.";
          type = lib.types.bool;
        };
    in
    {
      enable = lib.mkEnableOption "Chalkboard Theme";

      ghostty.enable = mkEnableOptionFor "Ghostty";
      helix.enable = mkEnableOptionFor "Helix";
      zellij.enable = mkEnableOptionFor "Zellij";
    };
}
