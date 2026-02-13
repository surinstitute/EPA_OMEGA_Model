EPA_OMEGA_Model
===============

The OMEGA model has been developed by EPA to evaluate policies for reducing greenhouse gas (GHG) emissions from light duty vehicles. Like the prior releases, this latest version is intended primarily to be used as a tool to support regulatory development by providing estimates of the effects of policy alternatives under consideration. These effects include the costs associated with emissions-reducing technologies and the monetized effects normally included in a societal benefit-cost analysis, as well as physical effects that include emissions quantities, fuel consumption, and vehicle stock and usage. In developing this OMEGA version 2.0, our goal was to improve modularity, transparency, and flexibility so that stakeholders can more easily review the model, conduct independent analyses, and potentially adapt the model to meet their own needs.

Installation
------------

**Typical Install**

Install required packages with uv:

    ``uv sync``

Install optional developer packages:

    ``uv sync --extra dev``

See the requirements files for further information.

Usage
-----

To run from the command line with default options::

    uv run python -m usepa_omega2

Documentation
-------------

To build documentation locally with uv::

    uv run sphinx-build -b singlehtml doc/source doc/build/singlehtml

To run a strict docs check (warnings as errors)::

    uv run sphinx-build -W -n -b singlehtml doc/source doc/build/singlehtml_strict

To preview generated docs locally::

    cd doc/build
    python3 -m http.server 8000

Then open:

    http://127.0.0.1:8000/singlehtml/index.html

For more information, please see:

https://omega2.readthedocs.io/en/2.5.0/

The Developer Guide chapter has notes for those interested in working from the source code.
