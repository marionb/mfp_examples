# mfp_examples
A simple example to run MFP using docker

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
