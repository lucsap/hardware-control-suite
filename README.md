# hardware-control-suite
Controle fácil e seguro do hardware: gerencie permissões da sua webcam e microfone com esta suíte intuitiva. Personalize configurações de privacidade para diferentes aplicativos e mantenha o controle sobre quem acessa seus dispositivos de áudio e vídeo.


## Build
NOTE: When changing the crate's dependencies, make sure to run `update-cargo-sources.sh` in the `cargo-sources` directory in order to build the flatpak correctly.

```sh
flatpak-builder --user --install --force-clean build-dir com.github.lucsap.HCSuite.json
```

## Run
```sh
flatpak run com.github.lucsap.HCSuite
```
