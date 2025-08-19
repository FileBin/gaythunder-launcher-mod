with (import <nixpkgs> {  });
mkShell {
  packages = [
    zip
    unzip
    wget
  ];
}
