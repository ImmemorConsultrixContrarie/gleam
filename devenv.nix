# SPDX-License-Identifier: Apache-2.0
# SPDX-FileCopyrightText: 2026 The Gleam contributors
{ pkgs, lib, config, inputs, ... }:

{
  languages.rust = {
    enable = true;
    channel = "stable";
  };
  packages = with pkgs; [
    # used by several tests
    git
    # erlang runtime is used for integration tests
    beamPackages.erlang
    # js runtimes used for integration tests
    nodejs
    bun
    deno
    # Used by make test-watch
    watchexec
  ];
}
