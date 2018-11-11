#!/usr/bin/env bats

@test "packer is executable" {
    run packer -version
    [ "$status" -eq 0 ]
}

@test "packer is the version specified" {
    if [ "$(echo "packer_version: $(packer -version)")" == "packer_version: 1.3.2" ]; then
        status=0
    else
        status=1
    fi

    [ "$status" -eq 0 ]
}
