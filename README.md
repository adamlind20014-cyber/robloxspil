# RobloxSpil

Dette repository giver en best practice skabelon til et Roblox projekt der kan versionsstyres med Git og synkroniseres med Roblox Studio ved hjælp af [Rojo](https://github.com/rojo-rbx/rojo).

## Struktur

```
robloxspil/
├── default.project.json    # Rojo projektfil, beskriver hvordan filer mappes til Roblox datamodel
├── src/
│   ├── ReplicatedStorage/
│   │   └── Shared/Config.lua
│   ├── ServerScriptService/
│   │   └── Main/Main.server.lua
│   └── StarterPlayer/
│       └── StarterPlayerScripts/PlayerStarter.client.lua
└── .gitignore
```

- **ReplicatedStorage/Shared** indeholder moduler der kan deles mellem server og klient.
- **ServerScriptService/Main** rummer serverkode med `--!strict` type-checking for at opnå mere robuste scripts.
- **StarterPlayer/StarterPlayerScripts** kører på klienten når en spiller joiner spillet.

## Kom godt i gang

1. Installer Rojo (CLI) hvis du vil synkronisere direkte med Roblox Studio. Du kan hente det via `cargo install rojo` eller fra den officielle release side.
2. Åbn projektet i Roblox Studio, og installer Rojo plugin'et for at kunne synkronisere.
3. Kør `rojo build -o build/RobloxSpil.rbxlx` for at bygge en Roblox-place fil, eller `rojo serve` for at streame filer direkte til Studio.
4. Udvid `src` mappen med flere services, assets eller moduler efter behov.

## Versionsstyring og samarbejde

- Tilføj yderligere filer og mapper i `src` og opdater `default.project.json` så de bliver mappet korrekt.
- Brug Git branches til at arbejde på nye features.
- Kør `git status` for at se ændringer og `git commit` for at gemme dem.
- Projektet kan nemt kobles til GitHub ved at oprette et nyt repository og køre:
  ```bash
  git remote add origin https://github.com/<brugernavn>/<repo>.git
  git push -u origin main
  ```

## Næste skridt

- Implementér gameplay-logik i `Main.server.lua`.
- Læg fælles konfiguration og hjælpefunktioner i `ReplicatedStorage/Shared`.
- Tilføj UI og klientfunktionalitet i `StarterPlayer`-mappen.

God fornøjelse med udviklingen!
