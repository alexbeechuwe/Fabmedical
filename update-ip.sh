#!/bin/bash

# Public IP address
IP="20.245.122.134"

# Resource Group that contains AKS Node Pool
KUBERNETES_NODE_RG="MC_fabmedical-769580_fabmedical-769580_westus"

# Name to associate with public IP address
DNSNAME="fabmedical-769580-ingress"

# Get the resource-id of the public ip
PUBLICIPID=$(az network public-ip list --resource-group $KUBERNETES_NODE_RG --query "[?ipAddress!=null]|[?contains(ipAddress, '$IP')].[id]" --output tsv)

# Update public ip address with dns name
az network public-ip update --ids $PUBLICIPID --dns-name $DNSNAME