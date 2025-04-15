# pinephone
Minimal, baremetal operating system for the PinePhone

## Build
On NixOS, enter a development shell. This will take care of getting the cross
compiler setup.

```
nix-shell
make
```

## Run on Hardware
Install `sunxi-tools` on your host system. Have your PinePhone booted in FEL
mode and connected via USB.

```
make run
```
