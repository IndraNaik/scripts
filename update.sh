#!/bin/bash
echo "This is updating package"

apt update
echo "system updated successfully"

apt upgrade -y
echo "system upgraded successfully"

