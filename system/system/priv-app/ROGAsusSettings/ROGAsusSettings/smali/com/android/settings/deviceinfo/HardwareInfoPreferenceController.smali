.class public Lcom/android/settings/deviceinfo/HardwareInfoPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "HardwareInfoPreferenceController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DeviceModelPrefCtrl"


# direct methods
.method public static synthetic $r8$lambda$XSTrNtLTE2g-7D9I5462CdgAuAo()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/android/settings/deviceinfo/HardwareInfoPreferenceController;->lambda$getDeviceModel$0()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static getDeviceModel()Ljava/lang/String;
    .locals 4

    const-string v0, "DeviceModelPrefCtrl"

    .line 58
    new-instance v1, Ljava/util/concurrent/FutureTask;

    sget-object v2, Lcom/android/settings/deviceinfo/HardwareInfoPreferenceController$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/settings/deviceinfo/HardwareInfoPreferenceController$$ExternalSyntheticLambda0;

    invoke-direct {v1, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 60
    invoke-virtual {v1}, Ljava/util/concurrent/FutureTask;->run()V

    .line 63
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 64
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v1, "Interruption error, so we only show model name"

    .line 68
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    const-string v1, "Execution error, so we only show model name"

    .line 66
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :goto_0
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method private static synthetic lambda$getDeviceModel$0()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 58
    invoke-static {}, Lcom/android/settingslib/DeviceInfoUtils;->getMsvSuffix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic copy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->copy()V

    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 0

    .line 41
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 46
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$bool;->config_show_device_model:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x3

    :goto_0
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

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
