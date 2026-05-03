<p align="center">
  <img src="https://raw.githubusercontent.com/ondeinference/onde/main/assets/onde-inference-logo.svg" alt="Onde Inference" width="80">
</p>

<h1 align="center">onde Homebrew Tap</h1>

<p align="center">
  <strong>Official <a href="https://brew.sh/">Homebrew</a> tap for the <a href="https://github.com/ondeinference/onde-cli">onde CLI</a> from <a href="https://ondeinference.com/">Onde Inference</a>.</strong>
</p>

<p align="center">
  <a href="https://ondeinference.com"><img src="https://img.shields.io/badge/ondeinference.com-235843?style=flat-square&labelColor=17211D" alt="Website"></a>
  <a href="https://www.npmjs.com/package/@ondeinference/cli"><img src="https://img.shields.io/npm/v/@ondeinference/cli?style=flat-square&labelColor=17211D&color=235843" alt="npm"></a>
  <a href="https://pypi.org/project/onde-cli/"><img src="https://img.shields.io/pypi/v/onde-cli?style=flat-square&labelColor=17211D&color=235843" alt="PyPI"></a>
  <a href="https://crates.io/crates/onde-cli"><img src="https://img.shields.io/crates/v/onde-cli?style=flat-square&labelColor=17211D&color=235843" alt="Crates.io"></a>
  <a href="https://github.com/ondeinference/onde-cli/blob/main/LICENSE"><img src="https://img.shields.io/badge/license-MIT%20%2F%20Apache--2.0-235843?style=flat-square&labelColor=17211D" alt="License"></a>
</p>

---

## Install

```bash
brew tap ondeinference/homebrew-tap
brew install onde
```

## Upgrade

```bash
brew upgrade onde
```

## Uninstall

```bash
brew uninstall onde
brew untap ondeinference/homebrew-tap
```

## About

This tap provides the native `onde` binary for macOS (Apple Silicon and Intel). For package docs and install options outside Homebrew, see <https://ondeinference.com/cli>.

`onde` is a terminal UI for [Onde Inference](https://ondeinference.com). Sign up, sign in, manage your apps and model assignments, and run LoRA fine-tuning on Qwen models — all without leaving the terminal. Fine-tuning runs locally on Metal or CPU; no cloud account or Python environment required.

## Other installation methods

| Method | Command |
|--------|---------|
| npm | `npm install -g @ondeinference/cli` |
| pip | `pip install onde-cli` |
| uv | `uv tool install onde-cli` |
| cargo | `cargo install onde-cli` |

## Issues

Please report bugs against the main CLI repository:
[github.com/ondeinference/onde-cli/issues](https://github.com/ondeinference/onde-cli/issues)

## License

Dual-licensed under **MIT** and **Apache 2.0** —
see [onde-cli](https://github.com/ondeinference/onde-cli/blob/main/LICENSE-MIT) for details.

---

## Copyright

© 2026 [Onde Inference](https://ondeinference.com) (Splitfire AB).
