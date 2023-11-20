# hardware-control-suite
Controle fácil e seguro do hardware: gerencie permissões da sua webcam e microfone com esta suíte intuitiva. Personalize configurações de privacidade para diferentes aplicativos e mantenha o controle sobre quem acessa seus dispositivos de áudio e vídeo.


## Build
Add flathub remote
```sh
flatpak remote-add --user --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
```

Install runtime dependencies
```sh
flatpak install org.freedesktop.Sdk//23.08 org.freedesktop.Sdk.Extension.rust-stable//23.08 org.freedesktop.Platform//23.08
```

Use `flatpak-cargo-generator.py` through the helper script `update-cargo-sources.sh` to generate the sources which flatpak-builder will use to download the required crates
```sh
cd cargo-sources
./update-cargo-sources.sh # Make sure you have .venv installed
```

Use flatpak-builder to compile and package the project:
```sh
flatpak-builder --user --install --force-clean build-dir com.github.lucsap.HCSuite.json
```

## Run
```sh
flatpak run com.github.lucsap.HCSuite
```
