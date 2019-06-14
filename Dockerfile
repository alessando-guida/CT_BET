# to build the container
#   $ docker build -t aguida/ct_bet:latest .
#
# Usage
#      $ docker run --rm \
#       -name skullstripper \
#       -v <FULL PATH TO INPUT DATA IN LOCAL ENVIRONMENT>:/usr/local/ct_bet/image_data \
#       -v <FULL PATH TO OUTPUT DIRECTORY IN LOCAL ENVIRONMENT>:/usr/local/ct_bet/results_folder \
#       aguida/ct_bet:latest \
# --------------------------------------------
FROM python:3.5

COPY . /usr/local/ct_bet
WORKDIR /usr/local/ct_bet

# clean up
RUN  rm -rf .idea
RUN  rm -rf .pytest_cache

RUN pip install -r requirements.txt

CMD unet_CT_SS.py