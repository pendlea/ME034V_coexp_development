FROM jupyter/scipy-notebook

RUN    conda install -c conda-forge 'voila'        \
    && conda install -c plotly      'plotly=4.5.0' \
    && conda clean --all -f -y                     \
    && mkdir ~/depot

WORKDIR depot

CMD ["voila","--no-browser","coexp.ipynb"]
