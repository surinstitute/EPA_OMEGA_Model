#! /bin/zsh

SCRIPT_DIR="${0:A:h}"
REPO_ROOT="${SCRIPT_DIR:h}"

cd "$REPO_ROOT"

# build executable

pyinstaller omega_effects/omega_effects_main.py \
  --name OMEGA-effects-2.5.0-mac.command \
  --paths omega_effects \
  --add-data="./*.txt":"./" \
  --add-data="./omega_effects/*.py":"./omega_effects/" \
  --add-data="./omega_effects/consumer/*.py":"./omega_effects/consumer/" \
  --add-data="./omega_effects/context/*.py":"./omega_effects/context/" \
  --add-data="./omega_effects/effects/*.py":"./omega_effects/effects/" \
  --add-data="./omega_effects/general/*.py":"./omega_effects/general/" \
  --add-data="./omega_effects/test_inputs/*.csv":"./omega_effects/test_inputs/" \
  --noconfirm \
  --onefile

# cleanup

if ls ./*.spec >/dev/null 2>&1; then
  mv ./*.spec "$SCRIPT_DIR"
fi
rm -rf __pycache__ build

cd "$SCRIPT_DIR"
