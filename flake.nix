{
  description = "Chalkboard (pastel on black) Theme for Nix";

  inputs = { };

  outputs =
    { self }:
    {
      homeModules = {
        default = self.homeModules.chalkboard-theme;
        chalkboard-theme = import ./modules/home;
      };
    };
}
