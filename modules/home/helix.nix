{ lib, config, ... }:
with lib;
{
  config = mkIf config.chalkboard-theme.helix.enable {
    programs.helix.settings.theme = mkDefault "chalkboard";

    programs.helix.themes.chalkboard = with import ../../colors.nix; {
      "attribute" = "white";
      "keyword" = "red";
      "keyword.directive" = "red";
      "namespace" = "orange";
      "punctuation" = "white";
      "punctuation.delimiter" = "white";
      "operator" = "grey";
      "special" = "blue";
      "variable.other.member" = "blue";
      "variable" = "white";
      "variable.parameter" = "orange";
      "variable.builtin" = "red";
      "type" = "orange";
      "type.builtin" = "blue";
      "constructor" = "purple";
      "function" = "blue";
      "function.macro" = "purple";
      "tag" = "green";
      "comment" = "grey";
      "constant" = "blue";
      "constant.builtin" = "blue";
      "string" = "green";
      "constant.numeric" = "red";
      "constant.character.escape" = "blue";
      "label" = "red";

      "markup.heading" = "blue";
      "markup.bold" = {
        modifiers = [ "bold" ];
      };
      "markup.italic" = {
        modifiers = [ "italic" ];
      };
      "markup.strikethrough" = {
        modifiers = [ "crossed_out" ];
      };
      "markup.link.url" = {
        modifiers = [ "underlined" ];
      };
      "markup.link.text" = {
        fg = "blue";
        modifiers = [ "underlined" ];
      };
      "markup.raw" = "blue";

      "diff.plus" = "green";
      "diff.minus" = "red";
      "diff.delta" = "yellow";

      "diagnostic.hint" = {
        underline = {
          color = "green";
          style = "curl";
        };
      };
      "diagnostic.info" = {
        underline = {
          color = "blue";
          style = "curl";
        };
      };
      "diagnostic.warning" = {
        underline = {
          color = "yellow";
          style = "curl";
        };
      };
      "diagnostic.error" = {
        underline = {
          color = "red";
          style = "curl";
        };
      };
      "diagnostic.unnecessary" = {
        modifiers = [ "dim" ];
      };
      "diagnostic.deprecated" = {
        modifiers = [ "crossed_out" ];
      };

      "hint" = "green";
      "info" = "blue";
      "warning" = "yellow";
      "error" = "#ff808c";

      "ui.linenr" = {
        fg = "grey800";
      };
      "ui.linenr.selected" = {
        fg = "white";
      };
      "ui.statusline" = {
        fg = "white";
        bg = "grey900";
      };
      "ui.statusline.normal" = {
        fg = "black";
        bg = "green";
      };
      "ui.statusline.insert" = {
        fg = "black";
        bg = "red";
      };
      "ui.statusline.select" = {
        fg = "black";
        bg = "blue";
      };

      "ui.text" = "grey";
      "ui.text.focus" = {
        fg = "white";
      };
      "ui.text.inactive" = "grey400";
      "ui.text.directory" = {
        fg = "blue";
      };

      "ui.menu" = {
        fg = "white";
        bg = "grey900";
      };
      "ui.menu.selected" = {
        fg = "black";
        bg = "white";
        modifiers = [ "bold" ];
      };

      "ui.selection" = {
        bg = "grey800";
      };
      "ui.selection.primary" = {
        bg = "grey700";
      };
      "ui.cursor.match" = {
        fg = "white";
        modifiers = [ "bold" ];
        underline = {
          style = "line";
        };
      };
      "ui.cursor" = {
        fg = "black";
        bg = "white";
      };
      "ui.cursorline.primary" = {
        bg = "grey900";
      };

      "ui.virtual.indent-guide" = {
        fg = "grey900";
      };
      "ui.virtual.jump-label" = {
        fg = "red";
      };

      "ui.bufferline" = {
        fg = "grey";
      };

      "ui.bufferline.active" = "white";

      "ui.window" = "grey800";

      palette = {
        black = "${black}";
        white = "${white}";

        red = "${red}";
        purple = "${purple}";
        yellow = "${yellow}";
        green = "${green}";
        blue = "${blue}";
        orange = "${orange}";

        grey50 = "${grey50}";
        grey100 = "${grey100}";
        grey200 = "${grey200}";
        grey300 = "${grey300}";
        grey350 = "${grey350}";
        grey400 = "${grey400}";
        grey = "${grey}";
        grey600 = "${grey600}";
        grey700 = "${grey700}";
        grey800 = "${grey800}";
        grey850 = "${grey850}";
        grey900 = "${grey900}";
      };
    };
  };
}
