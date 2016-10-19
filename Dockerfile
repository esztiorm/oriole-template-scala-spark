FROM nicoinn/apache-toree:v0.0.1

# launchbot-specific labels
LABEL name.launchbot.io="Toree Template"
LABEL workdir.launchbot.io="/srv/toree/dist/toree-pip"
LABEL description.launchbot.io="Use scala/spark in Jupyter"
LABEL 8888.port.launchbot.io="Open notebook"


# Set the working directory
WORKDIR /srv/toree/dist/toree-pip

# Expose the notebook port
EXPOSE 8888

USER root
ENV SPARK_OPTS="--master=local[4]"

# Start the notebook server
#CMD jupyter notebook --no-browser --port 8888 --ip=*
