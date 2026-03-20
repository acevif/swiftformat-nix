{ stdenv, lib, unzip, autoPatchelfHook, sources }:

let
  src =
    if stdenv.isDarwin then
      sources.swiftformat-0_58_7-darwin.src
    else if stdenv.isLinux && stdenv.hostPlatform.isAarch64 then
      sources.swiftformat-0_58_7-linux-aarch64.src
    else if stdenv.isLinux && stdenv.hostPlatform.isx86_64 then
      sources.swiftformat-0_58_7-linux-x86_64.src
    else
      throw "Unsupported platform: ${stdenv.hostPlatform.system}";

  version = sources.swiftformat-0_58_7-darwin.version;
in
stdenv.mkDerivation {
  pname = "swiftformat";
  inherit version src;

  nativeBuildInputs = [ unzip ]
    ++ lib.optionals stdenv.isLinux [ autoPatchelfHook ];

  sourceRoot = ".";

  installPhase = ''
    mkdir -p $out/bin
    install -m755 swiftformat $out/bin/swiftformat
  '';

  meta = with lib; {
    description = "A command-line tool for formatting Swift code";
    homepage = "https://github.com/nicklockwood/SwiftFormat";
    license = licenses.mit;
    platforms = [ "x86_64-linux" "aarch64-linux" "x86_64-darwin" "aarch64-darwin" ];
    mainProgram = "swiftformat";
  };
}
