#!/bin/bash

echo "mississippi"

n=mississippi

grep -o "s" <<<"$n" | wc -l


