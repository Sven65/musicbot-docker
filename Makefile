DOCKER_REGISTRY?=hub.docker.com

PACKAGE_VERSION := 1.0.0
IMAGE_NAME := jagrosh/music-bot

IMAGE_TAG := $(DOCKER_REGISTRY)/$(IMAGE_NAME)
IMAGE_TAG_VERSION := $(IMAGE_TAG):$(PACKAGE_VERSION)
IMAGE_TAG_LATEST  := $(IMAGE_TAG):latest

info:
	@echo IMAGE TAG is $(IMAGE_TAG)
	@echo IMAGE NAME IS $(IMAGE_NAME)
	@echo VERSION IS $(PACKAGE_VERSION)
clean:
	rm -rf dist/
build:
	docker build -t $(IMAGE_TAG_VERSION) -t $(IMAGE_TAG_LATEST) .
publish:
	docker push $(IMAGE_TAG) --all-tags

all: info build publish clean