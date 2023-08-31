#!/bin/bash

# Run ab command for multi_accept on (port 81) and save output to a file
ab -n 50000 -c 1000 http://localhost:81/ > ./outputs/ab_multi_accept_on_output.txt

# Run ab command for multi_accept off (port 82) and save output to a file
ab -n 50000 -c 1000 http://localhost:82/ > ./outputs/ab_multi_accept_off_output.txt

# Compare the two output files using diff
diff ./outputs/ab_multi_accept_on_output.txt ./outputs/ab_multi_accept_off_output.txt

echo "AB tests completed and output compared."