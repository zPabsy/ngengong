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
  "https://civitai-delivery-worker-prod.5ac0637cfd0766c97916cefa3764fbdf.r2.cloudflarestorage.com/model/2370973/rmArtistifyV10M.Rb9v.safetensors?X-Amz-Expires=86400&response-content-disposition=attachment%3B%20filename%3D%22RM_Artistify_v1.0M.safetensors%22&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=e01358d793ad6966166af8b3064953ad/20250929/us-east-1/s3/aws4_request&X-Amz-Date=20250929T073859Z&X-Amz-SignedHeaders=host&X-Amz-Signature=8986adfe098df1730fc48eb669f4af09957231cd77d0fdbda991886420be03dc"

wget -c -O /ComfyUI/models/loras/Vibrantly_sharp_style_v.2.safetensors \
  "https://civitai-delivery-worker-prod.5ac0637cfd0766c97916cefa3764fbdf.r2.cloudflarestorage.com/model/18780/vibrantlySharpStyleV.H6vM.safetensors?X-Amz-Expires=86400&response-content-disposition=attachment%3B%20filename%3D%22Vibrantly_sharp_style_v.2.safetensors%22&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=e01358d793ad6966166af8b3064953ad/20250929/us-east-1/s3/aws4_request&X-Amz-Date=20250929T073922Z&X-Amz-SignedHeaders=host&X-Amz-Signature=d2419558d4b07a5fbd32eadfe71ddee9fa10790d553b1bce4a149a5b275c8df0"

wget -c -O /ComfyUI/models/loras/lora.HxQy.safetensors \
  "https://civitai-delivery-worker-prod.5ac0637cfd0766c97916cefa3764fbdf.r2.cloudflarestorage.com/model/7333479/lora.HxQy.safetensors?X-Amz-Expires=86400&response-content-disposition=attachment%3B%20filename%3D%22lora.safetensors%22&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=e01358d793ad6966166af8b3064953ad/20250929/us-east-1/s3/aws4_request&X-Amz-Date=20250929T073940Z&X-Amz-SignedHeaders=host&X-Amz-Signature=7314970e7e874d2783b9852cd3d47c75594b3f0c792c8a26de1d0c9941cb7226"
