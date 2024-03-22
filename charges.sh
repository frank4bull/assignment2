//Question3 (i)
#!/bin/bash
CustomerName, and UnitConsumed
read -p "Enter CustomerID: "customerId
read -p "Enter CustomerName: "customerName
read -p "Enter UnitConsumed: "unitConsumed

//Question (ii)
calculate_charges() {
local units=$1
local charges=0
if [ $units -It 200 ]; then 
charges=$((units * 120))
elif [ $((units -ge 200 ] &&  [$units -It 400 ]; then 
charges=$((units * 150))
elif [$units -ge 400 ] && [$units -It 600 ]; then 
charges=$((units*180))
else 
charges=$((units * 200))
fi
echo charges
}

//Question (iii)
total_charges=$(calculate_charges $UnitConsumed)
echo "CustomerID: $customerId"
echo "CustomerName: $customerName"
echo "UnitsConsumed: $unitsConsumed"
echo "TotalCharges:$total_charges Ksh"
 
