#!/usr/bin/bash

Add() {
  read -p "Enter a : " a
  read -p "Enter b : " b
  result=$((a + b))
  echo "${result}"
}

Add
