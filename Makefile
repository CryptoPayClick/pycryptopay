VENV_NAME := venv
# PYTHON := $(VENV_NAME)/bin/python
PYTHON := python
CRYPTOPAY_VERSION := 0.1

RM := rm -rf

clean:
	find . -name '*.pyc' -exec $(RM) {} +
	find . -name '*.pyo' -exec $(RM) {} +
	find . -name '*~' -exec $(RM)  {} +
	find . -name '__pycache__' -exec $(RM) {} +
	$(RM) build/ dist/ docs/build/ .tox/ .cache/ .pytest_cache/ *.egg-info

install:
	$(PYTHON) setup.py install

docs: docs/source/*
	cd docs && $(MAKE) html