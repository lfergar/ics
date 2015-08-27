#!/bin/sh
# ESS EPICS Environment profile
# Copied from /etc/profile
pathmunge () {
    case ":${PATH}:" in
        *:"$1":*)
            ;;
        *)
            if [ "$2" = "after" ] ; then
                PATH=$PATH:$1
            else
                PATH=$1:$PATH
            fi
    esac
}
export EPICS_HOST_ARCH=centos7-x86_64
export EPICS_BASES_PATH=/opt/epics/bases
export EPICS_MODULES_PATH=/opt/epics/modules
export EPICS_ENV_PATH=${EPICS_MODULES_PATH}/environment/1.0.1/3.14.12.5/bin/${EPICS_HOST_ARCH}
export EPICS_BASE=${EPICS_BASES_PATH}/base-3.14.12.5
pathmunge ${EPICS_ENV_PATH} after
