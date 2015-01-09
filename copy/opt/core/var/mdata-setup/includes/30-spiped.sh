#!/bin/bash
# Configure spiped for spamd and scand connection

/opt/core/bin/spiped-configure-smf core-scan decrypt [::]:53310   [::1]:3310     $(mdata-get scan_key)
/opt/core/bin/spiped-configure-smf core-scan decrypt [::]:51133   [::1]:11133    $(mdata-get scan_key)
