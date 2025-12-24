
FROM comfy-base:cuda12.4 AS app

WORKDIR /app


#guarda capa
COPY requirements.txt .
RUN pip install -r requirements.txt

COPY manager_requirements.txt .
RUN pip install -r manager_requirements.txt

COPY . .
# Puerto por defecto de ComfyUI
EXPOSE 8188

# Comando por defecto: iniciar ComfyUI
CMD bash -c "python3 main.py --listen 0.0.0.0 --port 8188 --lowvram --enable-manager && sleep infinity"

