#!/bin/bash

inputLink=$1
RESULT=$(wget --spider $inputLink) 

echo "$?"