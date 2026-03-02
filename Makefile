# Get the user ID and group ID of the current user
UID=$(shell id -u)
GID=$(shell id -g)

# Name of the .tex file
FILE=main.tex

# Name of the Docker image
IMAGE=latex_builder

.PHONY: all build clean

all: $(FILE)
	docker run --rm -v $(PWD):/data $(IMAGE) latexmk -pdf -interaction=nonstopmode $(FILE)

build:
	docker build --build-arg UID=$(UID) --build-arg GID=$(GID) -t $(IMAGE) .

clean:
	docker run --rm -v $(PWD):/data $(IMAGE) latexmk -C $(FILE)
