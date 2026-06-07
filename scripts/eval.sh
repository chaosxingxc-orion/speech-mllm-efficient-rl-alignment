#!/usr/bin/env bash
set -euo pipefail
source "${SPEECHRL_VENV:-$HOME/.venvs/speechrl}/bin/activate"
cd "$(dirname "$0")/.."
python -m efficient_rl_alignment.main +mode=eval "$@"
