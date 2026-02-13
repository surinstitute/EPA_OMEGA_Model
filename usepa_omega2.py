"""Compatibility entry module for running OMEGA from source installs."""

import sys
import traceback

from omega_model import OMEGASessionSettings
from omega_model.omega import run_omega


def main() -> None:
    try:
        run_omega(OMEGASessionSettings(), standalone_run=True)
    except Exception:
        print("\n#RUNTIME FAIL\n%s\n" % traceback.format_exc())
        sys.exit(-1)


if __name__ == "__main__":
    main()
