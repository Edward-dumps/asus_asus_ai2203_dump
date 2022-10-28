.class Lcom/android/settings/deviceinfo/AsusGamingAudioVersionPreferenceController$IncomingHandlerCallback;
.super Ljava/lang/Object;
.source "AsusGamingAudioVersionPreferenceController.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/AsusGamingAudioVersionPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IncomingHandlerCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/AsusGamingAudioVersionPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/AsusGamingAudioVersionPreferenceController;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/android/settings/deviceinfo/AsusGamingAudioVersionPreferenceController$IncomingHandlerCallback;->this$0:Lcom/android/settings/deviceinfo/AsusGamingAudioVersionPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 5

    .line 180
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/16 v2, 0x1000

    if-eq v0, v2, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string v0, "handleMessage"

    const-string v2, "MEG_UPDATE_DEV_STAUTS"

    .line 182
    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :try_start_0
    invoke-static {}, Lcom/android/settings/Utils;->dongleType()I

    move-result v0

    const/16 v2, 0x8

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-ne v0, v2, :cond_1

    .line 186
    iget-object v0, p0, Lcom/android/settings/deviceinfo/AsusGamingAudioVersionPreferenceController$IncomingHandlerCallback;->this$0:Lcom/android/settings/deviceinfo/AsusGamingAudioVersionPreferenceController;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/AsusGamingAudioVersionPreferenceController;->access$000(Lcom/android/settings/deviceinfo/AsusGamingAudioVersionPreferenceController;)[Landroidx/preference/Preference;

    move-result-object v0

    aget-object v0, v0, v4

    goto :goto_0

    :cond_1
    if-ne v0, v1, :cond_2

    .line 187
    iget-object v0, p0, Lcom/android/settings/deviceinfo/AsusGamingAudioVersionPreferenceController$IncomingHandlerCallback;->this$0:Lcom/android/settings/deviceinfo/AsusGamingAudioVersionPreferenceController;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/AsusGamingAudioVersionPreferenceController;->access$000(Lcom/android/settings/deviceinfo/AsusGamingAudioVersionPreferenceController;)[Landroidx/preference/Preference;

    move-result-object v0

    aget-object v0, v0, v4

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    .line 188
    iget-object v0, p0, Lcom/android/settings/deviceinfo/AsusGamingAudioVersionPreferenceController$IncomingHandlerCallback;->this$0:Lcom/android/settings/deviceinfo/AsusGamingAudioVersionPreferenceController;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/AsusGamingAudioVersionPreferenceController;->access$000(Lcom/android/settings/deviceinfo/AsusGamingAudioVersionPreferenceController;)[Landroidx/preference/Preference;

    move-result-object v0

    aget-object v0, v0, v1

    goto :goto_0

    :cond_3
    if-ne v0, v3, :cond_4

    .line 189
    iget-object v0, p0, Lcom/android/settings/deviceinfo/AsusGamingAudioVersionPreferenceController$IncomingHandlerCallback;->this$0:Lcom/android/settings/deviceinfo/AsusGamingAudioVersionPreferenceController;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/AsusGamingAudioVersionPreferenceController;->access$000(Lcom/android/settings/deviceinfo/AsusGamingAudioVersionPreferenceController;)[Landroidx/preference/Preference;

    move-result-object v0

    aget-object v0, v0, v2

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    .line 190
    :goto_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v2, "ISAJDONGLE"

    .line 191
    invoke-virtual {p1, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 193
    iget-object p1, p0, Lcom/android/settings/deviceinfo/AsusGamingAudioVersionPreferenceController$IncomingHandlerCallback;->this$0:Lcom/android/settings/deviceinfo/AsusGamingAudioVersionPreferenceController;

    invoke-static {p1}, Lcom/android/settings/deviceinfo/AsusGamingAudioVersionPreferenceController;->access$000(Lcom/android/settings/deviceinfo/AsusGamingAudioVersionPreferenceController;)[Landroidx/preference/Preference;

    move-result-object p1

    aget-object v0, p1, v3

    .line 194
    iget-object p0, p0, Lcom/android/settings/deviceinfo/AsusGamingAudioVersionPreferenceController$IncomingHandlerCallback;->this$0:Lcom/android/settings/deviceinfo/AsusGamingAudioVersionPreferenceController;

    invoke-static {p0}, Lcom/android/settings/deviceinfo/AsusGamingAudioVersionPreferenceController;->access$100(Lcom/android/settings/deviceinfo/AsusGamingAudioVersionPreferenceController;)Landroidx/preference/PreferenceCategory;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_5
    if-eqz v0, :cond_6

    .line 197
    sget-object p0, Lcom/android/settings/deviceinfo/AsusGamingAudioVersionPreferenceController;->mUsb_manager:Landroid/hardware/usb/UsbManager;

    sget-object p1, Lcom/android/settings/deviceinfo/AsusGamingAudioVersionPreferenceController;->mUsb_device:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {p0, p1}, Landroid/hardware/usb/UsbManager;->openDevice(Landroid/hardware/usb/UsbDevice;)Landroid/hardware/usb/UsbDeviceConnection;

    move-result-object p0

    .line 198
    invoke-static {p0}, Lalc5686_aar_lib8/alc5686_aar_lib_8/RtsVendorReq;->RsAudio_GetDevFwVer(Landroid/hardware/usb/UsbDeviceConnection;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 199
    invoke-virtual {p0}, Landroid/hardware/usb/UsbDeviceConnection;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 202
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    :goto_1
    return v1
.end method
