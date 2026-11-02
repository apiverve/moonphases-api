from setuptools import setup, find_packages

setup(
    name='apiverve_moonphases',
    version='1.2.4',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='Moon Phases calculates the current lunar phase, illumination percentage, and lunar age for today. It reports waxing or waning status, Earth-moon distance in Earth radii and kilometers, the next principal phase and emoji representations, while paid plans add custom date queries and the dates of the next new moon, first quarter, full moon and last quarter.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com/marketplace/moonphases?utm_source=pypi&utm_medium=referral&utm_content=homepage',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
