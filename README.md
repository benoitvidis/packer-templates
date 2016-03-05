# Travis local virtualbox build

This is an attempt to build a local travis vm test image for VirtualBox locally.

For the time being, only the ci-minimal version gets a new virtualbox builder.

## How to use?

### Prerequisites

* ruby
* jq
* [packer](https://www.packer.io/)
* [vagrant](https://www.vagrantup.com/)
* [Virtual Box](https://www.virtualbox.org/wiki/Downloads)

### Base image

The packer template expects an ova image in the `boxes` directory. The file must be named `ubuntu.trusty.20150909.1.0.ova`.

#### Generating the ova

A vagrantfile is provided in the [boxes/vagrantfiles/trusty](boxes/vagrantfiles/trusty) directory.  
Just vagrant up the directory, and, from VirtualBox, export the ova image.

:warning: **Make sure to select OVA 2.0 format or packer won't be able to load the image**

### Command line usage

```shell
dev/build.sh
```


## Why not use the docker build?

Short answer: The vm will be closer to the Google compute image build.

Long answer: @TBD (too lazy for now).

### Difference with Travis build

* No post-processing (may integrate vagrant later on if the images are OK)
* Travis user uid and gid switched to 1100 (1000 on travis production)
* All the customizations implied by the vagrant port, among which the VirtualBoxGuestAdditions for instance.
