#!/bin/sh
set -e

# Environment variables are set by packer
/tmp/Hashistack-ami-build/modules/install-nomad/install-nomad --version "${NOMAD_VERSION}"

# git clone --branch "${CONSUL_MODULE_VERSION}"  https://github.com/hashicorp/terraform-aws-consul.git /tmp/terraform-aws-consul
/tmp/Hashistack-ami-build/modules/install-consul/install-consul --version "${CONSUL_VERSION}"
