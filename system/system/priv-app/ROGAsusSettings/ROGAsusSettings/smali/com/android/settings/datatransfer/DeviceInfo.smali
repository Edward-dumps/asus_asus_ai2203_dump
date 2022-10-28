.class public Lcom/android/settings/datatransfer/DeviceInfo;
.super Ljava/lang/Object;
.source "DeviceInfo.java"


# instance fields
.field private mIsMultiSimEnabled:Z


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lcom/android/settings/datatransfer/DeviceInfo;->mIsMultiSimEnabled:Z

    .line 32
    invoke-direct {p0, p1}, Lcom/android/settings/datatransfer/DeviceInfo;->updateDeviceInfo(Lorg/json/JSONObject;)V

    return-void
.end method

.method private updateDeviceInfo(Lorg/json/JSONObject;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 37
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[updateDeviceInfo] get jsobject :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceInfo"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string v0, "DeviceInfo isMultiSimEnabled"

    .line 40
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/datatransfer/DeviceInfo;->mIsMultiSimEnabled:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "[updateDeviceInfo] get error"

    .line 42
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    return-void
.end method
