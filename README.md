# mfp_examples
A simple example to run MFP (https://github.com/mapfish/mapfish-print) using docker

For a docu on MFP see:
http://mapfish.github.io/mapfish-print-doc/

# Using this:

1. Clone the project:
    `$ git clone git@github.com:marionb/mfp_examples.git`
2. Enter the folder:
    `$ cd mfp_examples`
3. To see all the oprions run
    `$ make`


# What it does

- This pulls a docker image with a MFP image and runs it.
- Once you run `make serve` you can:
    - use the user interface from a browser under http://localhost:8680/
    - or run the simple print from the comandline:
        `$ make generate-show`
- This is intended to generate a simple application to play with MFP. To do so you can modify the config and the templates in:
    - [config.yaml](print-apps/simple/config.yaml)
    - [report.jrxml](print-apps/simple/report.jrxml)
    
There are also mire instructions and information in this presentation:
https://marionb.github.io/mfp_AGIT_2020/mfp_AGIT_2020.html
