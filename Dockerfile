FROM node:lts-bullseye-slim

# Install basic packages
RUN apt update
RUN apt install -y git curl build-essential

# Install prerequisites for MLX
RUN apt install -y libblas-dev liblapack-dev liblapacke-dev

# Install latest cmake
RUN apt install -y python3-pip
RUN pip install --upgrade cmake
