import setuptools
import pkg

with open("README.md", "r") as fh:
    long_description = fh.read()

setuptools.setup(
    name=pkg.name,
    version=pkg.version,
    author=pkg.author,
    author_email=pkg.author_email,
    description=pkg.description,
    long_description=long_description,
    long_description_content_type="text/markdown",
    url="https://github.com/bthornton191/adamspy",
    packages=setuptools.find_packages(exclude=['test', 'pkg']),
    package_data={'adamspy.adripy': ['templates/*'], 'adamspy.postprocess': ['aview_scripts/*']},
    classifiers=[
        "Programming Language :: Python :: 3",
        "License :: OSI Approved :: MIT License",
        "Operating System :: Microsoft :: Windows",
    ],
    install_requires = pkg.install_requires
)