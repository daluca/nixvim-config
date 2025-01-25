set positional-arguments

[private]
default:
    @just --list

update:
    nix flake update

check:
    nix flake check --all-systems

run *args="":
    nix run . -- "$@"
