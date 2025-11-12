# 🟢 Imagen base con soporte GPU (CUDA + Python)
FROM nvidia/cuda:13.0.2-cudnn-runtime-ubuntu24.04

# 🧩 Variables básicas de entorno
ENV DEBIAN_FRONTEND=noninteractive
ENV PYTHONUNBUFFERED=1

# 🧰 Instalar dependencias del sistema
RUN apt-get update && apt-get install -y \
    git \
    python3 \
    python3-venv \
    python3-pip \
    wget \
    ffmpeg \
    libgl1 \
    && rm -rf /var/lib/apt/lists/*

# 📂 Crear directorio de trabajo
WORKDIR /app

# 🧠 Clonar ComfyUI (repositorio oficial)
COPY . .

# 🧩 Crear entorno virtual (opcional pero recomendable)
RUN python3 -m venv venv
ENV PATH="/app/venv/bin:$PATH"

RUN pip install torch torchvision torchaudio --extra-index-url https://download.pytorch.org/whl/cu130

# RUN pip uninstall torch

RUN pip install -r requirements.txt



# 🔥 Puerto por defecto de ComfyUI
EXPOSE 8188

# 🚀 Comando por defecto: iniciar ComfyUI
CMD ["python3", "main.py", "--listen", "0.0.0.0", "--port", "8188"]
