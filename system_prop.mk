# Dalvik heap
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.heaptargetutilization=0.75 \
    dalvik.vm.heapminfree=2m \
    dalvik.vm.heapmaxfree=8m

PRODUCT_PROPERTY_OVERRIDES += \
    rild.libpath=/vendor/lib64/libril-qc-qmi-1.so \
    rild.libargs=-d[SPACE]/dev/smd0 \
    persist.sys.ssr.restart_level=ALL_ENABLE \
    persist.sys.ssr.enable_ramdumps=1 \
    persist.radio.add_power_save=1 \
    persist.radio.multisim.config=dsds

# Start in TD-SCDMA, GSM/WCDMA and LTE mode
PRODUCT_PROPERTY_OVERRIDES += \
    ro.telephony.default_network=20,20 \
    ro.telephony.default_cdma_sub=0

PRODUCT_PROPERTY_OVERRIDES += \
    debug.sf.hw=1 \
    debug.egl.hw=1 \
    debug.composition.type=c2d \
    debug.hwui.use_buffer_age=false \
    persist.hwc.mdpcomp.enable=true \
    persist.mdpcomp.4k2kSplit=1 \
    persist.mdpcomp_perfhint=50 \
    debug.mdpcomp.logs=0 \
    persist.metadata_dynfps.disable=true \
    persist.hwc.ptor.enable=true \
    dev.pm.dyn_samplingrate=1 \
    persist.demo.hdmirotationlock=false

PRODUCT_PROPERTY_OVERRIDES += \
    ro.hdmi.enable=true \
    persist.vendor.audio.speaker.prot.enable=true

#enable dirac effect for speaker
PRODUCT_PROPERTY_OVERRIDES += \
    persist.audio.dirac.speaker=true

# CNE
PRODUCT_PROPERTY_OVERRIDES += \
    persist.cne.feature=1

PRODUCT_PROPERTY_OVERRIDES += \
    mm.enable.smoothstreaming=true \

# Print clip name being played
PRODUCT_PROPERTY_OVERRIDES += \
    media.stagefright.log-uri=1

# VIDC: debug_levels
# 1:ERROR 2:HIGH 4:LOW 0:NOLOGS 7:AllLOGS
PRODUCT_PROPERTY_OVERRIDES += \
    vidc.debug.level=1

# Additional i/p buffer in case of encoder DCVS
PRODUCT_PROPERTY_OVERRIDES += \
    vidc.enc.dcvs.extra-buff-count=2

#
# system props for the data modules
#
PRODUCT_PROPERTY_OVERRIDES += \
    persist.data.netmgrd.qos.enable=true \
    persist.data.mode=concurrent

# Opengles version
PRODUCT_PROPERTY_OVERRIDES += \
    ro.opengles.version=196610

#
# System props for telephony
# System prop to turn on CdmaLTEPhone always
PRODUCT_PROPERTY_OVERRIDES += \
    telephony.lteOnCdmaDevice=1

# Bluetooth
PRODUCT_PROPERTY_OVERRIDES += \
    bluetooth.hfp.client=1 \
    bluetooth.enable_timeout_ms=12000 \
    ro.bluetooth.emb_wp_mode=true \
    ro.bluetooth.wipower=true \
    ro.bt.bdaddr_path=/data/misc/bluetooth/bdaddr \
    vendor.qcom.bluetooth.soc=rome

##fluencetype can be "fluence" or "fluencepro" or "none"
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.audio.sdk.fluencetype=fluence \
    persist.vendor.audio.fluence.voicecall=true \
    persist.vendor.audio.fluence.voicerec=false \
    persist.vendor.audio.fluence.speaker=true

PRODUCT_PROPERTY_OVERRIDES += \
    ro.qc.sdk.sensors.gestures=true \
    ro.qc.sdk.gestures.camera=false \
    ro.qc.sdk.camera.facialproc=false

#property to enable user to access Google WFD settings.
PRODUCT_PROPERTY_OVERRIDES += \
    persist.debug.wfd.enable=1

#enable gapless by default
PRODUCT_PROPERTY_OVERRIDES += \
    vendor.audio.offload.gapless.enabled=true

#Buffer size in kbytes for compress offload playback
PRODUCT_PROPERTY_OVERRIDES += \
    vendor.audio.offload.buffer.size.kb=32

#Enable offload audio video playback by default
PRODUCT_PROPERTY_OVERRIDES += \
    audio.offload.video=true

#Enable audio track offload by default
PRODUCT_PROPERTY_OVERRIDES += \
    audio.offload.track.enable=false

#Enable music through deep buffer
PRODUCT_PROPERTY_OVERRIDES += \
    audio.deep_buffer.media=true

#property to enable VDS WFD solution
PRODUCT_PROPERTY_OVERRIDES += \
    persist.hwc.enable_vds=1

#enable voice path for PCM VoIP by default
PRODUCT_PROPERTY_OVERRIDES += \
    vendor.voice.path.for.pcm.voip=true

# Enable manual network selection function and distinguish 2G/3G/4G
PRODUCT_PROPERTY_OVERRIDES += \
    persist.radio.rat_on=combine

#For specail cdma card sms issue
PRODUCT_PROPERTY_OVERRIDES += \
    persist.radio.force_on_dc=true

PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.extension_library=libqti-perfd-client.so \
    persist.radio.custom_ecc=1 \
    persist.radio.sib16_support=1 \
    ro.data.large_tcp_window_size=true \
    ro.frp.pst=/dev/block/bootdevice/by-name/config \
    af.fast_track_multiplier=1 \
    vendor.audio_hal.period_size=192 \
    ro.btconfig.if=uart \
    ro.btconfig.dev=/dev/ttyHS0 \
    ro.btconfig.vendor=qcom \
    ro.btconfig.chip=QCA6164 \
    persist.radio.apm_sim_not_pwdn=1
