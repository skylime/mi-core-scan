#!/bin/bash
# Configure spiped for spamd and scand connection

/opt/core/bin/spiped-configure-smf core-clam decrypt [0.0.0.0]:53310   [127.0.0.1]:3310     $(mdata-get scan_key)
/opt/core/bin/spiped-configure-smf core-spam decrypt [0.0.0.0]:51133   [127.0.0.1]:11133    $(mdata-get scan_key)
