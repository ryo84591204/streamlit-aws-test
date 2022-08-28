FROM python:3.10.3

WORKDIR /usr/src/app
ENV PYTHONPATH /usr/src/app

ADD requirements.txt .

RUN pip install -U pip \
    && pip install --trusted-host pypi.python.org -r requirements.txt

EXPOSE 8501

COPY ./src /usr/src/app/src

# CMD ["streamlit", "run", "src/01_page1.py", "--server.address=streamlit1", "--server.port=8501"]
# CMD streamlit run src/01_page1.py --browser.serverAddress="streamlit1" --server.port="8501"
CMD streamlit run src/01_page1.py --server.port=8501 
# CMD streamlit hello
