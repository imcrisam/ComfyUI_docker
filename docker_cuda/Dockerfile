
FROM comfy/base:cuda13



RUN pip install \
    edge-tts \
    openai-whisper \
    imageio-ffmpeg \
    nvidia-ml-py \
    lark \
    spandrel \
    kornia \
    matplotlib \
    requirements-parser 

RUN pip install   qwen-tts gguf ftfy 

# RUN apt-get update && apt-get install -y protobuf-compiler


RUN python3 -m pip install --no-cache-dir \
protobuf==3.20.3 \
sentencepiece

RUN pip install   pywavelets



WORKDIR /app



COPY . .
# Puerto por defecto de ComfyUI

# RUN pip install --force-reinstall huggingface_hub==0.19.4

EXPOSE 8188

CMD bash -c "python3 main.py --listen 0.0.0.0 --port 8188 --enable-manager --use-sage-attention"
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
