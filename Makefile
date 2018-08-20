.PHONY: all

all:
	docker build --no-cache --pull --rm -t train-parent-python:latest .
