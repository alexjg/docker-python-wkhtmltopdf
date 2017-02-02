FROM python:3.5
RUN apt-get update
RUN apt-get install -y wkhtmltopdf
RUN apt-get install -y xvfb
RUN mv /usr/bin/wkhtmltopdf /usr/bin/oldwkhtmltopdf
RUN echo 'xvfb-run oldwkhtmltopdf "$@"' > /usr/bin/wkhtmltopdf
RUN chmod a+x /usr/bin/wkhtmltopdf
