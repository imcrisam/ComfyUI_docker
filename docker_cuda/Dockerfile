# 🟢 Imagen base con soporte GPU (CUDA + Python)
# FROM nvidia/cuda:13.0.2-cudnn-runtime-ubuntu22.04
# FROM nvidia/cuda:13.0.2-cudnn-devel-ubuntu22.04
FROM nvidia/cuda:12.4.1-cudnn-devel-ubuntu22.04

# 🧩 Variables básicas de entorno
ENV DEBIAN_FRONTEND=noninteractive
ENV PYTHONUNBUFFERED=1

RUN apt-get update && apt-get install -y \
    git \
    wget \
    ffmpeg \
    libgl1 \
    python3 \
    python3-venv \
    python3-pip \
    && rm -rf /var/lib/apt/lists/*


WORKDIR /app


# 🧩 Crear entorno virtual (opcional pero recomendable)
# RUN python3 -m venv venv
# ENV PATH="/app/venv/bin:$PATH"

RUN pip install --upgrade pip setuptools wheel

# RUN pip install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cu124
RUN pip install torch==2.5.1 torchvision torchaudio --index-url https://download.pytorch.org/whl/cu124

RUN pip install opencv-python-headless
RUN pip install diffusers==0.30.3 transformers accelerate
RUN pip install ftfy gguf onnx "imageio[ffmpeg]"



# RUN pip uninstall torch
# RUN pip install sageattention
# RUN pip install sageattention==2.2.0 --no-build-isolation

RUN pip install safetensors==0.4.0 accelerate transformers
# opcional: instalar onnxruntime si alguna extensión lo requiere
RUN pip install onnxruntime


COPY requirements.txt .
RUN pip install -r requirements.txt

COPY . .



# 🔥 Puerto por defecto de ComfyUI
EXPOSE 8188

# 🚀 Comando por defecto: iniciar ComfyUI
CMD ["python3", "main.py", "--listen", "0.0.0.0", "--port", "8188"]
