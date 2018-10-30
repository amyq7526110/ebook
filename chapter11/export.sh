#!/bin/bash

   export var=(a b);echo ${var[0]}

   var=(a b);export var;echo ${var[0]}
