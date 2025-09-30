#!/bin/bash

# --- Clip models ---
wget -c -P /ComfyUI/models/clip \
  "https://huggingface.co/comfyanonymous/flux_text_encoders/resolve/main/clip_l.safetensors" \
  "https://huggingface.co/comfyanonymous/flux_text_encoders/resolve/main/t5xxl_fp8_e4m3fn.safetensors"

# --- Diffusion model ---
wget -c -P /ComfyUI/models/diffusion_models \
  "https://huggingface.co/city96/FLUX.1-dev-gguf/resolve/main/flux1-dev-Q4_0.gguf"

# --- Upscale model ---
wget -c -P /ComfyUI/models/upscale_models \
  "https://huggingface.co/lokCX/4x-Ultrasharp/resolve/main/4x-UltraSharp.pth"

# --- VAE model ---
wget -c -P /ComfyUI/models/vae \
  "https://huggingface.co/second-state/FLUX.1-dev-GGUF/resolve/main/ae.safetensors"

# --- Loras (Civitai links need -O for proper filenames) ---
wget -c -O /ComfyUI/models/loras/RM_Artistify_v1.0M.safetensors \
  "https://huggingface.co/Muapi/randommaxx-artistify/resolve/main/randommaxx-artistify.safetensors"

wget -c -O /ComfyUI/models/loras/Vibrantly_sharp_style_v.5.safetensors \
  "https://huggingface.co/zPabsy/VibrantlyV5/resolve/main/Vibrantly_Sharp_style_v.5.safetensors"

wget -c -O /ComfyUI/models/loras/lora.HxQy.safetensors \
  "https://huggingface.co/aleksa-codes/flux-ghibsky-illustration/resolve/main/lora_v2.safetensors"

mkdir -p /workspace/output
mv /ComfyUI/output/* /workspace/output/ 2>/dev/null
rm -rf /ComfyUI/output
ln -s /workspace/output /ComfyUI/output
ls -ld /ComfyUI/output
