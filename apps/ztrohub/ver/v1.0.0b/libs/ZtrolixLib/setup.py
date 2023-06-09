import setuptools

with open("README.md", "r") as fh:
    long_description = fh.read()


setuptools.setup(
     name='ZtrolixLib',  
     version='0.1.1',
     scripts=['ZtrolixLib'] ,
     author="Ztrolix",
     author_email="",
     description="A Ztrolix utility package",
     long_description=long_description,
   long_description_content_type="text/markdown",
     url="https://github.com/Ztrolix/ZtrolixLib",
     packages=setuptools.find_packages(),
     classifiers=[
         "Programming Language :: Python :: 3",
         "License :: OSI Approved :: MIT License",
         "Operating System :: OS Independent",
     ],
 )