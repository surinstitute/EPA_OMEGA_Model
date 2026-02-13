#! /bin/zsh

SCRIPT_DIR="${0:A:h}"
REPO_ROOT="${SCRIPT_DIR:h}"

cd "$REPO_ROOT"

# build executable

pyinstaller exe_entry.py \
    --name OMEGA-2.5.0-mac.command \
    --paths omega_model:omega_gui \
    --add-data omega_model:omega_model \
    --add-data omega_gui/elements:omega_gui/elements \
    --noconfirm \
    --onefile

# cleanup

if ls ./*.spec >/dev/null 2>&1; then
    mv ./*.spec "$SCRIPT_DIR"
fi
rm -rf __pycache__ build

cd "$SCRIPT_DIR"
