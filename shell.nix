{
  pkgs ? import <nixpkgs> { },
}:

(pkgs.buildFHSEnv {
  name = "electron-fhs-env";

  targetPkgs =
    pkgs:
    (with pkgs; [
      nodejs
      pnpm

      # Libs
      glib
      nspr
      nss
      atk
      cups
      dbus
      cairo
      gtk3
      pango
      libx11
      libxcomposite
      libxdamage
      libxext
      libxfixes
      libxrandr
      libgbm
      expat
      libxcb
      libxkbcommon
      udev
      alsa-lib
      libglvnd
    ]);

  runScript = "bash";
}).env
