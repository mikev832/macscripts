#!/bin/bash

# Remove the printer if it exists
lpadmin -x Printername 2>/dev/null

# Small delay to ensure the removal completes
sleep 10

# Add the printer
lpadmin -p Printername -D "Printername" -E -v ipp://ipaddressgoeshere -m everywhere
