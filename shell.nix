let pkgs = import <nixpkgs> {
  crossSystem = { config = "arm-none-eabi"; };
};
in
  pkgs.callPackage (
    {mkShell}:
    mkShell {
      nativeBuildInputs = [ ];
      buildInputs = [ ];
    }
  ) {}

