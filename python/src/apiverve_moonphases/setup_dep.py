from setuptools import setup, find_packages

setup(
    name='apiverve_moonphases',
    version='1.1.14',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='Moon Phases is a simple tool for getting the moon phases. It returns the moon phase for a given date.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://moonphases.apiverve.com?utm_source=pypi&utm_medium=homepage',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
