FROM tensorflow/tensorflow:latest-gpu-py3-jupyter

RUN apt-get update && apt-get install -y \
    git

RUN bash -c "$(wget -q -O - https://linux.kite.com/dls/linux/current)"

COPY requirements.txt /tmp
COPY /supervisely /tmp/supervisely

RUN pip install -r /tmp/requirements.txt
RUN pip install -e /tmp/supervisely