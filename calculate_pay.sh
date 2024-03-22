clear
echo "Enter employee name: "
read employee_name
echo "Enter hours worked: "
read hours_worked
echo "Enter rate per hour: "
read rate_per_hour
basic_pay=$(echo "$hours * $rate" | bc)

if (($(echo "$basic_pay>70000"| bc -1))); then
tax= $(echo "0.25* $basic_pay"| bc)
elif(($(echo "$basic_pay>15000"| -1))); then
tax=$(echo "0.15 * $basic_pay"| bc)
else
tax=0
fi
net_pay=$(echo "$basic_pay -$tax"| bc)
