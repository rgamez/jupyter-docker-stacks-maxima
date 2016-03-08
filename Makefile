.PHONY: singleuser minimal-notebook

all: singleuser minimal-notebook

singleuser:
	docker build -t singleuser-maxima -f singleuser/Dockerfile .

minimal-notebook:
	docker build -t singleuser-maxima -f minimal-notebook/Dockerfile .
