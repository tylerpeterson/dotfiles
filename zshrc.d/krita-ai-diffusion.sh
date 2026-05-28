# Krita AI Diffusion plugin bundles its own `uv`; add it to PATH when present.
krita_uv_env="$HOME/Library/Application Support/krita/ai_diffusion/server/uv/env"
[ -r "$krita_uv_env" ] && . "$krita_uv_env"
unset krita_uv_env
