FROM supervisely/nn-mask-rcnn-keras-tf:latest

COPY requirements.txt /tmp

RUN pip install -r /tmp/requirements.txt --upgrade