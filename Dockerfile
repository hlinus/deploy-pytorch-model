FROM continuumio/miniconda3

# Set the ENTRYPOINT to use bash
ENTRYPOINT [ "/bin/bash", "-c" ]

EXPOSE 5000

RUN mkdir /app
WORKDIR /app

COPY environment.yml /app/environment.yml
RUN ["conda", "env", "create" ]

COPY . /app

CMD ["source activate pt && exec python run_pytorch_server.py" ]