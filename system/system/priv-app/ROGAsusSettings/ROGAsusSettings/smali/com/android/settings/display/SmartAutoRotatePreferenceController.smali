.class public Lcom/android/settings/display/SmartAutoRotatePreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "SmartAutoRotatePreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# instance fields
.field private final mPowerManager:Landroid/os/PowerManager;

.field private mPreference:Landroidx/preference/Preference;

.field private final mPrivacyManager:Landroid/hardware/SensorPrivacyManager;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;


# direct methods
.method public static synthetic $r8$lambda$_449qmEjq4sudIbsxx9cBrwraSs(Lcom/android/settings/display/SmartAutoRotatePreferenceController;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/display/SmartAutoRotatePreferenceController;->lambda$new$0(IZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 56
    new-instance p2, Lcom/android/settings/display/SmartAutoRotatePreferenceController$1;

    invoke-direct {p2, p0}, Lcom/android/settings/display/SmartAutoRotatePreferenceController$1;-><init>(Lcom/android/settings/display/SmartAutoRotatePreferenceController;)V

    iput-object p2, p0, Lcom/android/settings/display/SmartAutoRotatePreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 65
    invoke-static {p1}, Landroid/hardware/SensorPrivacyManager;->getInstance(Landroid/content/Context;)Landroid/hardware/SensorPrivacyManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/display/SmartAutoRotatePreferenceController;->mPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    .line 66
    new-instance v0, Lcom/android/settings/display/SmartAutoRotatePreferenceController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/display/SmartAutoRotatePreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/display/SmartAutoRotatePreferenceController;)V

    const/4 v1, 0x2

    .line 67
    invoke-virtual {p2, v1, v0}, Landroid/hardware/SensorPrivacyManager;->addSensorPrivacyListener(ILandroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;)V

    .line 68
    const-class p2, Landroid/os/PowerManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/android/settings/display/SmartAutoRotatePreferenceController;->mPowerManager:Landroid/os/PowerManager;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/display/SmartAutoRotatePreferenceController;)Landroidx/preference/Preference;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/android/settings/display/SmartAutoRotatePreferenceController;->mPreference:Landroidx/preference/Preference;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/display/SmartAutoRotatePreferenceController;Landroidx/preference/Preference;)V
    .locals 0

    .line 48
    invoke-virtual {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->refreshSummary(Landroidx/preference/Preference;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/display/SmartAutoRotatePreferenceController;Landroidx/preference/Preference;)V
    .locals 0

    .line 48
    invoke-virtual {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->refreshSummary(Landroidx/preference/Preference;)V

    return-void
.end method

.method private synthetic lambda$new$0(IZ)V
    .locals 0

    .line 67
    iget-object p1, p0, Lcom/android/settings/display/SmartAutoRotatePreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->refreshSummary(Landroidx/preference/Preference;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->copy()V

    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 79
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 80
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/display/SmartAutoRotatePreferenceController;->mPreference:Landroidx/preference/Preference;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/internal/view/RotationPolicy;->isRotationLockToggleVisible(Landroid/content/Context;)Z

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

.method public getSummary()Ljava/lang/CharSequence;
    .locals 4

    .line 126
    sget v0, Lcom/android/settings/R$string;->auto_rotate_option_off:I

    .line 127
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 128
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 129
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, -0x2

    const-string v3, "camera_autorotate"

    .line 128
    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 135
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 132
    invoke-static {v0}, Lcom/android/settings/display/SmartAutoRotateController;->isRotationResolverServiceAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 133
    invoke-static {v0}, Lcom/android/settings/display/SmartAutoRotateController;->hasSufficientPermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {p0}, Lcom/android/settings/display/SmartAutoRotatePreferenceController;->isCameraLocked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 135
    invoke-virtual {p0}, Lcom/android/settings/display/SmartAutoRotatePreferenceController;->isPowerSaveMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    sget v0, Lcom/android/settings/R$string;->auto_rotate_option_face_based:I

    goto :goto_0

    .line 137
    :cond_0
    sget v0, Lcom/android/settings/R$string;->auto_rotate_option_on:I

    .line 139
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method isCameraLocked()Z
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 116
    iget-object p0, p0, Lcom/android/settings/display/SmartAutoRotatePreferenceController;->mPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/hardware/SensorPrivacyManager;->isSensorPrivacyEnabled(I)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isCopyableSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isCopyableSlice()Z

    move-result p0

    return p0
.end method

.method isPowerSaveMode()Z
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 121
    iget-object p0, p0, Lcom/android/settings/display/SmartAutoRotatePreferenceController;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {p0}, Landroid/os/PowerManager;->isPowerSaveMode()Z

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

.method public onStart()V
    .locals 4

    .line 85
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/display/SmartAutoRotatePreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 87
    iget-object v0, p0, Lcom/android/settings/display/SmartAutoRotatePreferenceController;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    if-nez v0, :cond_0

    .line 88
    new-instance v0, Lcom/android/settings/display/SmartAutoRotatePreferenceController$2;

    invoke-direct {v0, p0}, Lcom/android/settings/display/SmartAutoRotatePreferenceController$2;-><init>(Lcom/android/settings/display/SmartAutoRotatePreferenceController;)V

    iput-object v0, p0, Lcom/android/settings/display/SmartAutoRotatePreferenceController;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/display/SmartAutoRotatePreferenceController;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    invoke-static {v0, p0}, Lcom/android/internal/view/RotationPolicy;->registerRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/display/SmartAutoRotatePreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 104
    iget-object v0, p0, Lcom/android/settings/display/SmartAutoRotatePreferenceController;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    if-eqz v0, :cond_0

    .line 105
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0, v0}, Lcom/android/internal/view/RotationPolicy;->unregisterRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
