#!/bin/bash
ruff format --check
ruff check
PYTHONPATH=src pytest
