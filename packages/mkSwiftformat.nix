{
  pkgs,
  stdenv,
  lib,
  unzip,
  autoPatchelfHook,
  versionId,
  platforms,
}:

let
  sources = pkgs.callPackage ./_sources/generated.nix { };
  darwinSource = sources."swiftformat-${versionId}-darwin";
  licenseSourceName = "swiftformat-${versionId}-license";
  licenseSrc =
    if builtins.hasAttr licenseSourceName sources then sources.${licenseSourceName}.src else null;

  src =
    if stdenv.hostPlatform.isDarwin then
      darwinSource.src
    else if stdenv.hostPlatform.isLinux && stdenv.hostPlatform.isAarch64 then
      sources."swiftformat-${versionId}-linux-aarch64".src
    else if stdenv.hostPlatform.isLinux && stdenv.hostPlatform.isx86_64 then
      sources."swiftformat-${versionId}-linux-x86_64".src
    else
      throw "Unsupported platform: ${stdenv.hostPlatform.system}";

  version = darwinSource.version;
in
stdenv.mkDerivation {
  pname = "swiftformat";
  inherit version src;

  nativeBuildInputs = [ unzip ] ++ lib.optionals stdenv.hostPlatform.isLinux [ autoPatchelfHook ];

  sourceRoot = ".";

  installPhase = ''
    runHook preInstall

    mkdir -p "$out/bin"
    install -m755 swiftformat "$out/bin/swiftformat"

    if [ -n "${if licenseSrc == null then "" else toString licenseSrc}" ]; then
      mkdir -p "$out/share/licenses/swiftformat"
      install -m644 "${toString licenseSrc}" "$out/share/licenses/swiftformat/LICENSE.md"
    fi

    runHook postInstall
  '';

  meta = with lib; {
    description = "A command-line tool for formatting Swift code";
    homepage = "https://github.com/nicklockwood/SwiftFormat";
    license = licenses.mit;
    inherit platforms;
    mainProgram = "swiftformat";
    sourceProvenance = with sourceTypes; [ binaryNativeCode ];
  };
}
