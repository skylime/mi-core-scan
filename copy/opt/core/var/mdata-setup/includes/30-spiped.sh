#!/bin/bash
# Configure spiped for spamd and scand connection

# SPIPES for clamd and spamd for IPv4...
/opt/core/bin/spiped-configure-smf core-clam decrypt [0.0.0.0]:53310  [127.0.0.1]:3310  $(mdata-get scan_key)
/opt/core/bin/spiped-configure-smf core-spam decrypt [0.0.0.0]:51133  [127.0.0.1]:11133 $(mdata-get scan_key)
# ...and for IPv6 - if it fails it's included in getting a socket for 0.0.0.0 for compatibility
/opt/core/bin/spiped-configure-smf core-clam decrypt [::]:53310       [127.0.0.1]:3310  $(mdata-get scan_key) 2>/dev/null
/opt/core/bin/spiped-configure-smf core-spam decrypt [::]:51133       [127.0.0.1]:11133 $(mdata-get scan_key) 2>/dev/null
