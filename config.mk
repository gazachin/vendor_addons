LOCAL_PATH := $(call my-dir)
include $(call all-subdir-makefiles,$(LOCAL_PATH))

# Remove warning from every time you open it
PRODUCT_PROPERTY_OVERRIDES += \
    ro.substratum.verified=true \

# init file
PRODUCT_COPY_FILES += \
    vendor/addons/superuser/su:root/sbin/su \
    vendor/addons/superuser/init.superuser.rc:root/init.superuser.rc

# Prebuilts
PRODUCT_PACKAGES += \
    KernelAdiutor \
    Substratum \
    Superuser 
