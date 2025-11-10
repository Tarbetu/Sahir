{
  description = "Sahir Development";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.05";

  outputs = { nixpkgs, ... }:
    let
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
    in
    {
      devShells.${system}.default = pkgs.mkShell {
        buildInputs = [
          pkgs.ruby_3_4
          pkgs.libffi
          pkgs.libyaml
          pkgs.openssl
          pkgs.zlib
        ];

        RUBY_CONFIGURE_OPTS = "--with-openssl-dir=${pkgs.openssl}";
      };
    };
}
