#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /mnt/hgfs/Dropbox/Filtri_VivadoHLS/Configurable_Convolution_Filter/solution1/.autopilot/db/a.g.bc ${1+"$@"}
