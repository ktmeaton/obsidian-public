---
project: "[[NCBImeta]]"
due: 2022-01-12
people:
tags: ✨
status: done
title: NCBImeta Update Dependencies
type: Task
---

# [[NCBImeta Update Dependencies]]

## Dependencies

python>=3.7,<=3.10
biopython>=1.74,!=1.77
lxml>=4.6.3
PyYAML>=5.4
numpy

- [[Python 3.6]] reached the end-of-life phase of its release cycle on [[2021-12-23]].
- As a result, many critical packages have dropped support for [[Python 3.6]], examples:
	- `NumPy` 1.21.0 | [[2021-06-23]] | Python 3.7-3.9
	- `NumPy` 1.22.0 | [[2021-12-31]] | Python 3.8-3.10

## Works

```python
        # First try current_tag as node, allowing multiple results
        print()
        print("current_tag:", current_tag)         
        if current_tag == "Stat":         
            test_string='<Meta><Stats> <Stat category="alt_loci_count" sequence_tag="all">0</Stat><Stat category="contig_count" sequence_tag="all">5</Stat> </Stats></Meta>'
            xml_root=etree.fromstring(test_string)    
        search_results = xml_root.findall(tag_xpath)
        print("xml_root:", etree.tostring(xml_root))  
        print("tag_xpath:", tag_xpath)    
        print("search_results:", search_results)
        print("first:", etree.tostring(search_results[0]))
        if len(search_results) > 1:
            print("second:", etree.tostring(search_results[1]))
            quit()
```

```yaml
name: ncbimeta
channels:
  - bioconda
  - conda-forge
  - anaconda
  - defaults
dependencies:
  - python=3.8
  - pip
  - anaconda::make
  - anaconda::gcc_impl_linux-64
  - anaconda::gcc_linux-64
  - anaconda::gxx_linux-64
  - pip:
    - ncbimeta
```

```text
# Name                    Version                   Build  Channel
_libgcc_mutex             0.1                 conda_forge    conda-forge
_openmp_mutex             4.5                       1_gnu    conda-forge
binutils_impl_linux-64    2.36.1               h193b22a_2    conda-forge
binutils_linux-64         2.36                 hf3e587d_4    conda-forge
biopython                 1.76                     pypi_0    pypi
ca-certificates           2021.10.26           h06a4308_2
gcc_impl_linux-64         11.2.0              h82a94d6_11    conda-forge
gcc_linux-64              11.2.0               h39a9532_4    conda-forge
gxx_impl_linux-64         11.2.0              h82a94d6_11    conda-forge
gxx_linux-64              11.2.0               hacbe6df_4    conda-forge
kernel-headers_linux-64   2.6.32              he073ed8_15    conda-forge
ld_impl_linux-64          2.36.1               hea4e1c9_2    conda-forge
libffi                    3.4.2                h7f98852_5    conda-forge
libgcc-devel_linux-64     11.2.0              h0952999_11    conda-forge
libgcc-ng                 11.2.0              h1d223b6_11    conda-forge
libgomp                   11.2.0              h1d223b6_11    conda-forge
libnsl                    2.0.0                h7f98852_0    conda-forge
libsanitizer              11.2.0              he4da1e4_11    conda-forge
libstdcxx-devel_linux-64  11.2.0              h0952999_11    conda-forge
libstdcxx-ng              11.2.0              he4da1e4_11    conda-forge
libzlib                   1.2.11            h36c2ea0_1013    conda-forge
lxml                      4.7.1                    pypi_0    pypi
make                      4.3                  hd18ef5c_1    conda-forge
ncbimeta                  0.8.2                    pypi_0    pypi
ncurses                   6.2                  h58526e2_4    conda-forge
numpy                     1.19.5                   pypi_0    pypi
openssl                   3.0.0                h7f98852_2    conda-forge
pip                       21.3.1             pyhd8ed1ab_0    conda-forge
python                    3.8.12          hf930737_2_cpython    conda-forge
python_abi                3.8                      2_cp38    conda-forge
pyyaml                    6.0                      pypi_0    pypi
readline                  8.1                  h46c0cb4_0    conda-forge
setuptools                60.5.0           py38h578d9bd_0    conda-forge
sqlite                    3.37.0               h9cd32fc_0    conda-forge
sysroot_linux-64          2.12                he073ed8_15    conda-forge
tk                        8.6.11               h27826a3_1    conda-forge
wheel                     0.37.1             pyhd8ed1ab_0    conda-forge
xz                        5.2.5                h516909a_1    conda-forge
zlib                      1.2.11            h36c2ea0_1013    conda-forge
```

```text
biopython                 1.76                     pypi_0    pypi
lxml                      4.7.1                    pypi_0    pypi
ncbimeta                  0.8.2                    pypi_0    pypi
numpy                     1.19.5                   pypi_0    pypi
pyyaml                    6.0                      pypi_0    pypi
readline                  8.1                  h46c0cb4_0    conda-forge
setuptools                60.5.0           py38h578d9bd_0    conda-forge
sqlite                    3.37.0               h9cd32fc_0    conda-forge
tk                        8.6.11               h27826a3_1    conda-forge
wheel                     0.37.1             pyhd8ed1ab_0    conda-forge
xz                        5.2.5                h516909a_1    conda-forge
zlib                      1.2.11            h36c2ea0_1013    conda-forge
```
## Fails

```text
biopython                 1.76             py38h516909a_0    conda-forge
lxml                      4.7.1            py38hf1fe3a4_0    conda-forge
ncbimeta                  0.8.2              pyhdfd78af_0    bioconda
numpy                     1.19.5           py38h9894fe3_2    conda-forge
pyyaml                    6.0              py38h497a2fe_3    conda-forge
```