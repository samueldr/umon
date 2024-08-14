{ mkShell
, uxn
, xxd
}:

mkShell {
  nativeBuildInputs = [
    uxn
    xxd
  ];
}
