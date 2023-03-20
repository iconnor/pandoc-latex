FROM iconnor/python-nextjs AS base

# Install Pandoc and latex
RUN apt-get update && apt-get install -y \
    pandoc \
    texlive-xetex \
    texlive-fonts-recommended \
    texlive-latex-recommended \
    texlive-latex-extra \
    texlive-fonts-extra \
    texlive-science \
    texlive-bibtex-extra \
    texlive-luatex \
    texlive-lang-english \
    fonts-linuxlibertine \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /usr/app

ENTRYPOINT [ "/bin/bash", "-l", "-c" ]