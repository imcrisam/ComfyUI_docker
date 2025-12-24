#!/usr/bin/env bash
set -euo pipefail

# Lista de repositorios (editar para añadir/quitar)
custom_nodes=(
    "https://github.com/crystian/comfyui-crystools.git"
    "https://github.com/billwuhao/ComfyUI_AudioTools.git"
)
cd ..
mkdir -p custom_nodes
cd custom_nodes

for url in "${custom_nodes[@]}"; do
    repo_name=$(basename -s .git "$url")
    if [ -d "$repo_name" ]; then
        echo "[SKIP] $repo_name already exists"
        continue
    fi

    echo "[CLONE] $url -> $repo_name"
    if ! git clone "$url" "$repo_name"; then
        echo "[ERROR] Failed to clone $url"
        continue
    fi

    if [ -f "$repo_name/requirements.txt" ]; then
        echo "[PIP] Installing requirements for $repo_name"
        pip install -r "$repo_name/requirements.txt" || echo "[WARN] pip install failed for $repo_name"
    else
        echo "[INFO] No requirements.txt for $repo_name"
    fi
done

echo "Done processing custom nodes."
