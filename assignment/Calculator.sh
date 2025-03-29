#!/usr/bin/bash
read -p "Enter input 1 : " input1
read -p "Enter input 2 : " input2
echo -e "Input numbers are : \n ${input1} \n ${input2}"
echo "Sum : $((input1 + input2))"
echo "Difference : $((input1 - input2))"
echo "Multiplication : $((input1 * input2))"
echo "Division : $((input1 / input2))"
echo "Modulo : $((input1 % input2))"
