from setuptools import setup, find_packages

import os
lib_folder = os.path.dirname(os.path.realpath(__file__))
requirements_file = os.path.join(lib_folder, 'requirements.txt')
install_requires = ["requests >= 2.25.1", "setuptools >= 56.0.0"]
if os.path.exists(requirements_file):
    with open(requirements_file, 'r') as f:
        install_requires = f.read().splitlines()

setup(
    name='apiverve_moonphases',
    version='1.2.3',
    packages=find_packages(),
    include_package_data=True,
    install_requires=install_requires,
    description='Moon Phases calculates the current lunar phase, illumination percentage, and lunar age for today. It reports waxing or waning status, Earth-moon distance, and emoji representations, while paid plans add custom date queries and full moon tracking.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com/marketplace/moonphases?utm_source=pypi&utm_medium=referral&utm_content=homepage',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)