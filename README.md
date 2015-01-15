# mi-core-scan

This repository is based on [Joyent mibe](https://github.com/joyent/mibe). Please note this repository should be build with the [mi-core-base](https://github.com/skylime/mi-core-base) mibe image.

## description

Scan-Zone for spamd and clamd

This image is part of the following images:

- [mi-core-mailapi](https://github.com/skylime/mi-core-mailapi)
- [mi-core-mx](https://github.com/skylime/mi-core-mx)
- [mi-core-submission](https://github.com/skylime/mi-core-submission)
- [mi-core-mbox](https://github.com/skylime/mi-core-mbox)
- [mi-core-webmail](://github.com/skylime/mi-core-webmail)

## mdata variables

- `scan_key` [*]: base64 encoded spipe key for mx server

[*] is required to work properly.

## services

- `53310/tcp`: spipe-end for clamav
- `51133/tcp`: spipe-end for spamassassin

## IMPORTANT !!
Listens only at IPV4 !
Connection via IPV6 not possible at the moment.
