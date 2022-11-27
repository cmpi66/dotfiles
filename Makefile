SHELL := /bin/bash
.POSIX:
.PHONY: help install upgrade-hugo serve build start initial clones links site

help: ## Show this help
	@egrep -h '\s##\s' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'

# createrepodir:
# 	mkdir -pv ~/repos
MAKESITEDIR:=$(shell mkdir -p ~/.local/test/sites/munozpi/) 

clones: # clones all my repos to repos dir
	cp gh-repos.txt ~/repos/ && cd ~/repos/ && <gh-repos.txt xargs -n1 git clone 

site:
	$(MAKESITEDIR) mv ~/repos/netlify ~/.local/test/sites/munozpi/  

install: ## Install or update dependencies
	npm i
	# npm install -g markdownlint-cli
	# pre-commit install --install-hooks

dev: ## Run the local development server
	hugo serve --noHTTPCache --enableGitInfo --disableFastRender --environment development

future: ## Run the local development server in the future
	hugo serve --enableGitInfo --buildFuture --disableFastRender --environment development

KILLPUB:=$(shell [ -d ./public ] && rm -rf ./public)

build: ##  build site
	 $(KILLPUB) hugo --gc --minify && hugo-theme-bootstrap-algolia

start: upgrade-hugo serve ## Update Hugo and start development server

initial: clones site ## Install tools and start development server
