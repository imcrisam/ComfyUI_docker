
FROM comfy/base:latest

RUN pip install nvidia-ml-py bitsandbytes qwen-tts gguf ftfy

RUN pip install --no-cache-dir --upgrade \
    huggingface_hub==0.36.2 \
    diffusers==0.30.3 \
    transformers==4.57.3 \
    accelerate==1.12.0

WORKDIR /app

#guarda capa
COPY requirements.txt .
RUN pip install -r requirements.txt

COPY manager_requirements.txt .
RUN pip install -r manager_requirements.txt


COPY . .
# Puerto por defecto de ComfyUI

# RUN pip install --force-reinstall huggingface_hub==0.19.4

EXPOSE 8188

CMD bash -c "python3 main.py --listen 0.0.0.0 --port 8188 --enable-manager && sleep infinity"
# CMD bash -c "python3 main.py --listen 0.0.0.0 --port 8188 --enable-manager --gpu-only && sleep infinity"
# CMD bash -c "python3 main.py --listen 0.0.0.0 --port 8188 --lowvram --enable-manager && sleep infinity"



# RUN apt-get update && apt-get install -y \
#     python3 \
#     python3-pip \
#     python3-venv \
#     git \
#     wget \
#     curl \
#     ffmpeg \
#     libgl1 \
#     libglib2.0-0 \
#     build-essential \
#     && rm -rf /var/lib/apt/lists/*

# # Alias python
# RUN ln -s /usr/bin/python3 /usr/bin/python

# # Actualizar pip
# RUN python -m pip install --upgrade pip


# # RUN apt-get install -y \
# #     sox \
# #     libportaudio2 \
# #     portaudio19-dev \
# #     && rm -rf /var/lib/apt/lists/*

# # RUN pip install \
# #     sounddevice \
# #     deepdiff \
# #     omegaconf \
# #     piexif \
# #     matrix-nio \
# #     pytorch-lightning \
# #     py-cpuinfo 

# RUN pip install \
#  torch==2.7.1+cu128 \
#  torchvision==0.22.1+cu128 \
#  torchaudio==2.7.1+cu128 \
#  --index-url https://download.pytorch.org/whl/cu128

# RUN pip install opencv-python-headless
# RUN pip install diffusers==0.30.3 transformers accelerate
# RUN pip install ftfy gguf onnx "imageio[ffmpeg]"
# # RUN pip uninstall torch
# # RUN pip install sageattention
# # RUN pip install sageattention==2.2.0 --no-build-isolation

# RUN pip install safetensors==0.4.0 accelerate transformers
# # opcional: instalar onnxruntime si alguna extensión lo requiere
# RUN pip install onnxruntime
