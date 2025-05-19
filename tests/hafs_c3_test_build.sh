#!/bin/sh
set -xeu

target=hera
app=HAFS-MOM6W

# Debug build
debug=ON
name=hafs_mom6_debug
./compile.sh "$target" "-DAPP=$app -DREGIONAL_MOM6=ON -DCDEPS_INLINE=ON -DMOVING_NEST=ON -DFASTER=ON -DDEBUG=$debug -DCCPP_SUITES=FV3_HAFS_v1_thompson_c3,FV3_HAFS_v1_thompson_nonsst_c3 -D32BIT=ON" "$name" intel YES NO

# Release build
debug=OFF
name=hafs_mom6_optim
./compile.sh "$target" "-DAPP=$app -DREGIONAL_MOM6=ON -DCDEPS_INLINE=ON -DMOVING_NEST=ON -DFASTER=ON -DDEBUG=$debug -DCCPP_SUITES=FV3_HAFS_v1_thompson_c3,FV3_HAFS_v1_thompson_nonsst_c3 -D32BIT=ON" "$name" intel YES NO

