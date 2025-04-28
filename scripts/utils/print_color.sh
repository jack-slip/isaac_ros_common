#!/bin/bash

# Safe print functions for both interactive and non-interactive terminals
# Copyright (c) 2021-2024, NVIDIA CORPORATION.

function print_color {
    if [[ -n "$TERM" && -t 1 ]]; then
        tput setaf "$1"
        echo "$2"
        tput sgr0
    else
        echo "$2"
    fi
}

function print_error {
    if [[ -n "$TERM" && -t 1 ]]; then
        tput setaf 1
        echo "[ERROR] $1"
        tput sgr0
    else
        echo "[ERROR] $1"
    fi
}

function print_warning {
    if [[ -n "$TERM" && -t 1 ]]; then
        tput setaf 3
        echo "[WARNING] $1"
        tput sgr0
    else
        echo "[WARNING] $1"
    fi
}

function print_info {
    if [[ -n "$TERM" && -t 1 ]]; then
        tput setaf 2
        echo "[INFO] $1"
        tput sgr0
    else
        echo "[INFO] $1"
    fi
}
