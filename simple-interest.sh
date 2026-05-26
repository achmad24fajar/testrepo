# simple-interest.sh file generation
bash_script_content = """#!/bin/bash
# This script calculates simple interest given principal, annual rate of interest and time period in years.

# Do not use this in production. Sample purpose only.

# Author: GitHub Username
# Additional Authors:
# <your role>

# Input:
# p, principal amount
# t, time period in years
# r, annual rate of interest

# Output:
# simple interest = p*t*r

echo "------------------------------------------------"
echo "            Simple Interest Calculator          "
echo "------------------------------------------------"

# Prompt user for input fields
echo -n "Enter the principal amount (p): "
read p

echo -n "Enter rate of interest per annum in % (r): "
read r

echo -n "Enter time period in years (t): "
read t

# Perform calculations using bc for floating-point arithmetic support
# Formula: SI = (P * R * T) / 100
si=$(echo "scale=2; ($p * $r * $t) / 100" | bc -l)
total=$(echo "scale=2; $p + $si" | bc -l)

echo "------------------------------------------------"
echo "RESULTS:"
echo "Principal Amount:  $p"
echo "Rate of Interest:  $r%"
echo "Time Period:       $t years"
echo "------------------------------------------------"
echo "Simple Interest:   $si"
echo "Total Amount:      $total"
echo "------------------------------------------------"
"""

file_path = "simple-interest.sh"
with open(file_path, "w", encoding="utf-8") as f:
    f.write(bash_script_content)

print(f"File saved successfully to {file_path}")
