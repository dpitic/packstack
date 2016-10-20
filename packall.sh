#!/bin/bash

# Packstack all-in-one with existing external network. Referenced from:
# https://www.rdoproject.org/networking/neutron-with-existing-external-network/

packstack \
    --allinone \
    --os-neutron-ovs-bridge-mappings=extnet:br-ex \
    --os-neutron-ovs-bridge-interfaces=br-ex:enp6s0 \
    --os-neutron-ml2-type-drivers=vxlan,flat
