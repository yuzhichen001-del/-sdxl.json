# clean base image containing only comfyui, comfy-cli and comfyui-manager
FROM runpod/worker-comfyui:5.5.1-base

# install custom nodes into comfyui (first node with --mode remote to fetch updated cache)
# (No custom nodes specified in the workflow)

# download models into comfyui
RUN comfy model download --url https://huggingface.co/stabilityai/stable-diffusion-xl-base-1.0/resolve/main/sd_xl_base_1.0_0.9vae.safetensors --relative-path models/checkpoints --filename sd_xl_base_1.0_0.9vae.safetensors

# copy all input data (like images or videos) into comfyui (uncomment and adjust if needed)
# COPY input/ /comfyui/input/
