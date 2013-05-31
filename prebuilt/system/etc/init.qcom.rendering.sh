#!/system/bin/sh
# Copyright (c) 2012, Code Aurora Forum. All rights reserved.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are met:
#     * Redistributions of source code must retain the above copyright
#       notice, this list of conditions and the following disclaimer.
#     * Redistributions in binary form must reproduce the above copyright
#       notice, this list of conditions and the following disclaimer in the
#       documentation and/or other materials provided with the distribution.
#     * Neither the name of Code Aurora nor
#       the names of its contributors may be used to endorse or promote
#       products derived from this software without specific prior written
#       permission.
#
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
# AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
# IMPLIED WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
# NON-INFRINGEMENT ARE DISCLAIMED.  IN NO EVENT SHALL THE COPYRIGHT OWNER OR
# CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
# EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
# PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS;
# OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
# WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR
# OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF
# ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
#

soc_id=`cat /sys/devices/system/soc/soc0/id`

# Set tiled rendering, and dirty region rendering properties per platform

# for MSM7627A
case $soc_id in
     90 | 91 | 92 | 97 | 101 | 102 | 103)
        tiled_7x27A=`getprop hwui.render_dirty_regions.7x27A`
        ddr_7x27A=`getprop debug.enabletr.7x27A`
        setprop hwui.render_dirty_regions $tiled_7x27A
        setprop debug.enabletr $ddr_7x27A
        setprop ro.hw_plat 7x27A
    ;;
esac

# for MSM7625A
case $soc_id in
     88 | 89 | 96 | 98 | 99 | 100 | 131 | 132 | 133)
        tiled_7x25A=`getprop hwui.render_dirty_regions.7x25A`
        ddr_7x25A=`getprop debug.enabletr.7x25A`
        setprop hwui.render_dirty_regions $tiled_7x25A
        setprop debug.enabletr $ddr_7x25A
        setprop ro.hw_plat 7x25A
    ;;
esac

# for MSM8625
case $soc_id in
     127 | 128 | 129)
        tiled_8625=`getprop hwui.render_dirty_regions.8625`
        ddr_8625=`getprop debug.enabletr.8625`
        setprop hwui.render_dirty_regions $tiled_8625
        setprop debug.enabletr $ddr_8625
        setprop ro.hw_plat 8x25
    ;;
esac
