
FROM iaghidro/base:latest

# Set user
USER root

RUN echo "INSTALL PYTHON DEPENDENCIES";
RUN pip3 install --upgrade pip
RUN pip3 install ipython==5.3.0
RUN pip3 install pytest
RUN pip3 install ta
RUN pip3 install sklearn
RUN pip3 install pandas
RUN pip3 install jupyter
RUN pip3 install -U feather-format
RUN pip3 install matplotlib
RUN pip3 install ruptures
RUN pip3 install 'prompt-toolkit==1.0.15'
RUN export PATH=$PATH:~/.local/bin/
RUN pip3 install pyarrow==0.10.0 
RUN pip3 install torchtext==0.2.3 
RUN pip3 install pd 
