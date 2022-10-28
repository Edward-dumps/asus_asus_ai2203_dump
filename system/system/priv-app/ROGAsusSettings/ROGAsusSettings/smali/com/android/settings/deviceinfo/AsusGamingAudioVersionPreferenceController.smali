.class public Lcom/android/settings/deviceinfo/AsusGamingAudioVersionPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "AsusGamingAudioVersionPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/AsusGamingAudioVersionPreferenceController$IncomingHandlerCallback;
    }
.end annotation


# static fields
.field private static final ACTION_USB_PERMISSION:Ljava/lang/String; = "com.realtek.usb_audio_utility.USB_PERMISSION"

.field public static final AUDIO_DONGLE_PID:Ljava/lang/String; = "4BAF"

.field public static final AUDIO_DONGLE_RECOVERY_PID:Ljava/lang/String; = "5685"

.field protected static final AUDIO_VERSION_COUNT:I = 0x4

.field protected static final KEY_AERO_AUDIO_VERSION:Ljava/lang/String; = "aero_audio_version"

.field protected static final KEY_DESKTOP_AUDIO_VERSION:Ljava/lang/String; = "desktop_audio_version"

.field private static final KEY_SET_AUDIO:[Ljava/lang/String;

.field protected static final KEY_TWINVIEW_AUDIO_VERSION:Ljava/lang/String; = "twinview_audio_version"

.field protected static final KEY_USBCTO35_AUDIO_VERSION:Ljava/lang/String; = "usbcto35_audio_version"

.field public static final MEG_UPDATE_DEV_STAUTS:I = 0x1000

.field public static final MEG_UPDATE_TEXTVIEW_STATUS:I = 0x10ec

.field public static final PARA_AJDONGLE:Ljava/lang/String; = "ISAJDONGLE"

.field private static final TAG:Ljava/lang/String; = "AsusGamingAudioVersionPreferenceController"

.field private static final device:[[I

.field public static mPermissionIntent:Landroid/app/PendingIntent;

.field public static mUsb_device:Landroid/hardware/usb/UsbDevice;

.field public static mUsb_manager:Landroid/hardware/usb/UsbManager;

.field public static mViewUpdateHandler:Landroid/os/Handler;


# instance fields
.field private mAJPreferenceCategory:Landroidx/preference/PreferenceCategory;

.field private mAeroCategory:Landroidx/preference/PreferenceCategory;

.field private mContext:Landroid/content/Context;

.field private mPreference:[Landroidx/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "aero_audio_version"

    const-string v1, "twinview_audio_version"

    const-string v2, "desktop_audio_version"

    const-string v3, "usbcto35_audio_version"

    .line 57
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/deviceinfo/AsusGamingAudioVersionPreferenceController;->KEY_SET_AUDIO:[Ljava/lang/String;

    const/16 v0, 0x16

    new-array v0, v0, [[I

    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 72
    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_1

    const/4 v3, 0x1

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    new-array v2, v1, [I

    fill-array-data v2, :array_3

    const/4 v3, 0x3

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_4

    const/4 v3, 0x4

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_5

    const/4 v3, 0x5

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_6

    const/4 v3, 0x6

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_7

    const/4 v3, 0x7

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_8

    const/16 v3, 0x8

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_9

    const/16 v3, 0x9

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_a

    const/16 v3, 0xa

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_b

    const/16 v3, 0xb

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_c

    const/16 v3, 0xc

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_d

    const/16 v3, 0xd

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_e

    const/16 v3, 0xe

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_f

    const/16 v3, 0xf

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_10

    const/16 v3, 0x10

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_11

    const/16 v3, 0x11

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_12

    const/16 v3, 0x12

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_13

    const/16 v3, 0x13

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_14

    const/16 v3, 0x14

    aput-object v2, v0, v3

    new-array v1, v1, [I

    fill-array-data v1, :array_15

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/settings/deviceinfo/AsusGamingAudioVersionPreferenceController;->device:[[I

    return-void

    nop

    :array_0
    .array-data 4
        0xbda
        0x4a40
    .end array-data

    :array_1
    .array-data 4
        0xbda
        0x4a41
    .end array-data

    :array_2
    .array-data 4
        0xbda
        0x4a42
    .end array-data

    :array_3
    .array-data 4
        0xbda
        0x4a43
    .end array-data

    :array_4
    .array-data 4
        0xbda
        0x4a44
    .end array-data

    :array_5
    .array-data 4
        0xbda
        0x4917
    .end array-data

    :array_6
    .array-data 4
        0xbda
        0x4a45
    .end array-data

    :array_7
    .array-data 4
        0xbda
        0x4042
    .end array-data

    :array_8
    .array-data 4
        0xbda
        0x4040
    .end array-data

    :array_9
    .array-data 4
        0xbda
        0x4b4d
    .end array-data

    :array_a
    .array-data 4
        0xbda
        0x4b56
    .end array-data

    :array_b
    .array-data 4
        0xbda
        0x480e
    .end array-data

    :array_c
    .array-data 4
        0xbda
        0x4b0e
    .end array-data

    :array_d
    .array-data 4
        0xbda
        0x5683
    .end array-data

    :array_e
    .array-data 4
        0xbda
        0x4b5b
    .end array-data

    :array_f
    .array-data 4
        0xbda
        0x4b98
    .end array-data

    :array_10
    .array-data 4
        0xbda
        0x4baf
    .end array-data

    :array_11
    .array-data 4
        0xbda
        0x5685
    .end array-data

    :array_12
    .array-data 4
        0xbda
        0x4baf
    .end array-data

    :array_13
    .array-data 4
        0xbda
        0x5685
    .end array-data

    :array_14
    .array-data 4
        0xbda
        0x4bf0
    .end array-data

    :array_15
    .array-data 4
        0xbda
        0x4a80
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "usbcto35_audio_version"

    .line 83
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x4

    new-array v0, v0, [Landroidx/preference/Preference;

    .line 79
    iput-object v0, p0, Lcom/android/settings/deviceinfo/AsusGamingAudioVersionPreferenceController;->mPreference:[Landroidx/preference/Preference;

    .line 84
    iput-object p1, p0, Lcom/android/settings/deviceinfo/AsusGamingAudioVersionPreferenceController;->mContext:Landroid/content/Context;

    const-string v0, "usb"

    .line 85
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/usb/UsbManager;

    sput-object p1, Lcom/android/settings/deviceinfo/AsusGamingAudioVersionPreferenceController;->mUsb_manager:Landroid/hardware/usb/UsbManager;

    .line 86
    iget-object p1, p0, Lcom/android/settings/deviceinfo/AsusGamingAudioVersionPreferenceController;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.realtek.usb_audio_utility.USB_PERMISSION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/high16 v2, 0x4000000

    invoke-static {p1, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    sput-object p1, Lcom/android/settings/deviceinfo/AsusGamingAudioVersionPreferenceController;->mPermissionIntent:Landroid/app/PendingIntent;

    .line 88
    new-instance p1, Landroid/os/Handler;

    new-instance v0, Lcom/android/settings/deviceinfo/AsusGamingAudioVersionPreferenceController$IncomingHandlerCallback;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/AsusGamingAudioVersionPreferenceController$IncomingHandlerCallback;-><init>(Lcom/android/settings/deviceinfo/AsusGamingAudioVersionPreferenceController;)V

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    sput-object p1, Lcom/android/settings/deviceinfo/AsusGamingAudioVersionPreferenceController;->mViewUpdateHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/deviceinfo/AsusGamingAudioVersionPreferenceController;)[Landroidx/preference/Preference;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/settings/deviceinfo/AsusGamingAudioVersionPreferenceController;->mPreference:[Landroidx/preference/Preference;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/deviceinfo/AsusGamingAudioVersionPreferenceController;)Landroidx/preference/PreferenceCategory;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/settings/deviceinfo/AsusGamingAudioVersionPreferenceController;->mAJPreferenceCategory:Landroidx/preference/PreferenceCategory;

    return-object p0
.end method

.method private check_usb_device()V
    .locals 8

    const-string v0, "check_usb_device 22222"

    const-string v1, "check_usb_device "

    .line 119
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/deviceinfo/AsusGamingAudioVersionPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$string;->asus_gaming_unconnected:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 123
    iget-object v3, p0, Lcom/android/settings/deviceinfo/AsusGamingAudioVersionPreferenceController;->mPreference:[Landroidx/preference/Preference;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    invoke-virtual {v3, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v2, p0, Lcom/android/settings/deviceinfo/AsusGamingAudioVersionPreferenceController;->mAJPreferenceCategory:Landroidx/preference/PreferenceCategory;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 126
    invoke-static {}, Lcom/android/settings/Utils;->isRog6()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/deviceinfo/AsusGamingAudioVersionPreferenceController;->mAeroCategory:Landroidx/preference/PreferenceCategory;

    iget-object p0, p0, Lcom/android/settings/deviceinfo/AsusGamingAudioVersionPreferenceController;->mPreference:[Landroidx/preference/Preference;

    aget-object p0, p0, v3

    invoke-virtual {v2, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 140
    :cond_0
    sget-object p0, Lcom/android/settings/deviceinfo/AsusGamingAudioVersionPreferenceController;->mUsb_manager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {p0}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    move-result-object p0

    .line 141
    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-string v2, "11111"

    .line 142
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 145
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/usb/UsbDevice;

    sput-object v2, Lcom/android/settings/deviceinfo/AsusGamingAudioVersionPreferenceController;->mUsb_device:Landroid/hardware/usb/UsbDevice;

    .line 146
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 147
    :goto_1
    sget-object v4, Lcom/android/settings/deviceinfo/AsusGamingAudioVersionPreferenceController;->device:[[I

    array-length v5, v4

    if-ge v2, v5, :cond_5

    .line 148
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MainActivity.usb_device.getVendorId()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/android/settings/deviceinfo/AsusGamingAudioVersionPreferenceController;->mUsb_device:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v6}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MainActivity.usb_device.getProductId()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/android/settings/deviceinfo/AsusGamingAudioVersionPreferenceController;->mUsb_device:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v6}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v4, v2

    aget v6, v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v4, v2

    const/4 v7, 0x1

    aget v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    sget-object v5, Lcom/android/settings/deviceinfo/AsusGamingAudioVersionPreferenceController;->mUsb_device:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v5}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v5

    aget-object v6, v4, v2

    aget v6, v6, v3

    if-ne v5, v6, :cond_4

    sget-object v5, Lcom/android/settings/deviceinfo/AsusGamingAudioVersionPreferenceController;->mUsb_device:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v5}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v5

    aget-object v4, v4, v2

    aget v4, v4, v7

    if-ne v5, v4, :cond_4

    .line 153
    sget-object p0, Lcom/android/settings/deviceinfo/AsusGamingAudioVersionPreferenceController;->mUsb_manager:Landroid/hardware/usb/UsbManager;

    sget-object v0, Lcom/android/settings/deviceinfo/AsusGamingAudioVersionPreferenceController;->mUsb_device:Landroid/hardware/usb/UsbDevice;

    sget-object v2, Lcom/android/settings/deviceinfo/AsusGamingAudioVersionPreferenceController;->mPermissionIntent:Landroid/app/PendingIntent;

    invoke-virtual {p0, v0, v2}, Landroid/hardware/usb/UsbManager;->requestPermission(Landroid/hardware/usb/UsbDevice;Landroid/app/PendingIntent;)V

    .line 154
    sget-object p0, Lcom/android/settings/deviceinfo/AsusGamingAudioVersionPreferenceController;->mUsb_device:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {p0}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result p0

    const/high16 v0, 0x10000

    or-int/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    const-string v0, "4BAF"

    .line 155
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "5685"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    move v3, v7

    :cond_2
    const-string p0, "Device can be checked!"

    .line 156
    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    sget-object p0, Lcom/android/settings/deviceinfo/AsusGamingAudioVersionPreferenceController;->mUsb_manager:Landroid/hardware/usb/UsbManager;

    sget-object v0, Lcom/android/settings/deviceinfo/AsusGamingAudioVersionPreferenceController;->mUsb_device:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {p0, v0}, Landroid/hardware/usb/UsbManager;->hasPermission(Landroid/hardware/usb/UsbDevice;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 158
    new-instance p0, Landroid/os/Message;

    invoke-direct {p0}, Landroid/os/Message;-><init>()V

    const/16 v0, 0x1000

    .line 159
    iput v0, p0, Landroid/os/Message;->what:I

    .line 160
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "ISAJDONGLE"

    .line 161
    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 162
    invoke-virtual {p0, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 163
    sget-object v0, Lcom/android/settings/deviceinfo/AsusGamingAudioVersionPreferenceController;->mViewUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_3
    return-void

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_5
    const/4 v2, 0x0

    .line 169
    sput-object v2, Lcom/android/settings/deviceinfo/AsusGamingAudioVersionPreferenceController;->mUsb_device:Landroid/hardware/usb/UsbDevice;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p0

    .line 173
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    return-void
.end method


# virtual methods
.method public bridge synthetic copy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->copy()V

    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 3

    .line 104
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 105
    iget-object v1, p0, Lcom/android/settings/deviceinfo/AsusGamingAudioVersionPreferenceController;->mPreference:[Landroidx/preference/Preference;

    sget-object v2, Lcom/android/settings/deviceinfo/AsusGamingAudioVersionPreferenceController;->KEY_SET_AUDIO:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "category_aero_active"

    .line 106
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/AsusGamingAudioVersionPreferenceController;->mAeroCategory:Landroidx/preference/PreferenceCategory;

    const-string v0, "category_usbcto35"

    .line 107
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/deviceinfo/AsusGamingAudioVersionPreferenceController;->mAJPreferenceCategory:Landroidx/preference/PreferenceCategory;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/settings/slices/SliceBackgroundWorker;",
            ">;"
        }
    .end annotation

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getBackgroundWorkerClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "usbcto35_audio_version"

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isCopyableSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isCopyableSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isPublicSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isSliceable()Z

    move-result p0

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 112
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 113
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/AsusGamingAudioVersionPreferenceController;->check_usb_device()V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
