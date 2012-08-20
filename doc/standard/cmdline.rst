====================
Command-line Parsing
====================

Most of the software developed in a research environment is based on the
command-line, as command-line tools are easier and thus faster implemented
then tools with graphical user interface. To help the developer, who wants
to focus on the actual image processing algorithm rather than the parsing
of the command-line arguments, BASIS intends to provide a command-line
parsing library for each of the commonly used programming languages.
The usage of these libraries is documented in the following:

.. note::
    Yet, there exist only libraries for C++ and BASH, but solutions for
    Java, Python, and Perl will be provided in future BASIS releases as well.

.. toctree::

    cmdline/cxx
    cmdline/bash