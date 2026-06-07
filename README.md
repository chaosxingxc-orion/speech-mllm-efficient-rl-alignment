# Efficient RL for Multimodal Alignment (Speech <-> Language)

> Part of the **chaos speech-multimodal-LLM RL** series. Shares code via the
> `speechrl-common` package (installed from `../../common`).

## Idea

Compute- and sample-efficient RL (GRPO/DPO with LoRA / partial updates) to align speech and language modalities.

**RL approach:** GRPO/DPO with parameter-efficient (LoRA) updates.

## Setup (WSL2)

```bash
source ~/.venvs/speechrl/bin/activate          # shared env, see ../../docs/setup.md
uv pip install -e ../../common -e .
```

## Run

```bash
bash scripts/train.sh                          # train (Hydra config in configs/)
bash scripts/train.sh rl.learning_rate=2e-6    # override any config key
bash scripts/eval.sh                           # evaluate
```

## Layout

- `src/efficient_rl_alignment/main.py` — Hydra entrypoint (fill in the RL loop)
- `configs/` — Hydra configs: `model/`, `dataset/`, `rl/`, `experiment/`
- `scripts/` — `train.sh`, `eval.sh`
- depends on `speechrl_common` for audio I/O, reward functions, MLflow tracking, prompts
