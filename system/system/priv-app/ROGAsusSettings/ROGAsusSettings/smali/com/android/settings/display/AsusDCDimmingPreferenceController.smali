.class public Lcom/android/settings/display/AsusDCDimmingPreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "AsusDCDimmingPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Landroidx/lifecycle/LifecycleEventObserver;


# static fields
.field public static final FEATURE_ASUS_PIXELWORKS:Ljava/lang/String; = "asus.software.pixelworks"

.field public static final FRAME_RATE_VALUE:Ljava/lang/String; = "frame_rate_value"

.field public static final KEY_ASUS_DC_DIMMING_PREFERENCE:Ljava/lang/String; = "display_dc_dimming"

.field public static final REMOTE_SERVICE_BIND_ACTION:Ljava/lang/String; = "com.asus.hardwarestub.centralcontrol.fpscentralcontrolservice"

.field public static final REMTOE_SERVICE_PACKAGENAME:Ljava/lang/String; = "com.asus.hardwarestub"

.field private static final TAG:Ljava/lang/String; = "AsusDCDimmingPreferenceController"


# instance fields
.field private final OFF:I

.field private final ON:I

.field private final RESOLVER:Landroid/content/ContentResolver;

.field private mAsusDCPreference:Landroidx/preference/SwitchPreference;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mFrameRateValueObserver:Landroid/database/ContentObserver;

.field private mService:Lcom/asus/hardwarestub/centralcontrol/IFPSCentralControl;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/lifecycle/Lifecycle;)V
    .locals 3

    const-string v0, "display_dc_dimming"

    .line 66
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 50
    iput v0, p0, Lcom/android/settings/display/AsusDCDimmingPreferenceController;->ON:I

    const/4 v0, 0x0

    .line 51
    iput v0, p0, Lcom/android/settings/display/AsusDCDimmingPreferenceController;->OFF:I

    const/4 v0, 0x0

    .line 61
    iput-object v0, p0, Lcom/android/settings/display/AsusDCDimmingPreferenceController;->mService:Lcom/asus/hardwarestub/centralcontrol/IFPSCentralControl;

    .line 87
    new-instance v0, Lcom/android/settings/display/AsusDCDimmingPreferenceController$1;

    new-instance v1, Landroid/os/Handler;

    .line 88
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/display/AsusDCDimmingPreferenceController$1;-><init>(Lcom/android/settings/display/AsusDCDimmingPreferenceController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/display/AsusDCDimmingPreferenceController;->mFrameRateValueObserver:Landroid/database/ContentObserver;

    .line 114
    new-instance v0, Lcom/android/settings/display/AsusDCDimmingPreferenceController$2;

    invoke-direct {v0, p0}, Lcom/android/settings/display/AsusDCDimmingPreferenceController$2;-><init>(Lcom/android/settings/display/AsusDCDimmingPreferenceController;)V

    iput-object v0, p0, Lcom/android/settings/display/AsusDCDimmingPreferenceController;->mConnection:Landroid/content/ServiceConnection;

    if-eqz p2, :cond_0

    .line 68
    invoke-virtual {p2, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 70
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/display/AsusDCDimmingPreferenceController;->RESOLVER:Landroid/content/ContentResolver;

    .line 71
    iput-object p1, p0, Lcom/android/settings/display/AsusDCDimmingPreferenceController;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/display/AsusDCDimmingPreferenceController;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/android/settings/display/AsusDCDimmingPreferenceController;->updateItemState()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/settings/display/AsusDCDimmingPreferenceController;Lcom/asus/hardwarestub/centralcontrol/IFPSCentralControl;)Lcom/asus/hardwarestub/centralcontrol/IFPSCentralControl;
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/android/settings/display/AsusDCDimmingPreferenceController;->mService:Lcom/asus/hardwarestub/centralcontrol/IFPSCentralControl;

    return-object p1
.end method

.method private static bindFPSControlService(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    .locals 2

    .line 76
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.asus.hardwarestub.centralcontrol.fpscentralcontrolservice"

    .line 77
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.asus.hardwarestub"

    .line 78
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x1

    .line 80
    :try_start_0
    invoke-virtual {p0, v0, p1, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 82
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "BindTest SecurityException"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AsusDCDimmingPreferenceController"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-virtual {p0}, Ljava/lang/SecurityException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private updateItemState()V
    .locals 3

    const-string v0, "AsusDCDimmingPreferenceController"

    .line 134
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrentFPS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/display/AsusDCDimmingPreferenceController;->mService:Lcom/asus/hardwarestub/centralcontrol/IFPSCentralControl;

    invoke-interface {v2}, Lcom/asus/hardwarestub/centralcontrol/IFPSCentralControl;->getCurrentFPS()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v1, p0, Lcom/android/settings/display/AsusDCDimmingPreferenceController;->mAsusDCPreference:Landroidx/preference/SwitchPreference;

    if-eqz v1, :cond_1

    .line 137
    iget-object v1, p0, Lcom/android/settings/display/AsusDCDimmingPreferenceController;->mService:Lcom/asus/hardwarestub/centralcontrol/IFPSCentralControl;

    invoke-interface {v1}, Lcom/asus/hardwarestub/centralcontrol/IFPSCentralControl;->getCurrentFPS()I

    move-result v1

    const/16 v2, 0x3c

    if-ne v1, v2, :cond_0

    .line 138
    iget-object v1, p0, Lcom/android/settings/display/AsusDCDimmingPreferenceController;->mAsusDCPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/display/AsusDCDimmingPreferenceController;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 139
    iget-object p0, p0, Lcom/android/settings/display/AsusDCDimmingPreferenceController;->mAsusDCPreference:Landroidx/preference/SwitchPreference;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 142
    :cond_0
    iget-object v1, p0, Lcom/android/settings/display/AsusDCDimmingPreferenceController;->mAsusDCPreference:Landroidx/preference/SwitchPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 143
    iget-object p0, p0, Lcom/android/settings/display/AsusDCDimmingPreferenceController;->mAsusDCPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 147
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 148
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public bridge synthetic copy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->copy()V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 178
    iget-object p0, p0, Lcom/android/settings/display/AsusDCDimmingPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "asus.software.pixelworks"

    .line 180
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x3

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

    const-string p0, "display_dc_dimming"

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public isChecked()Z
    .locals 2

    .line 168
    iget-object p0, p0, Lcom/android/settings/display/AsusDCDimmingPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "asus_dc_dimming_state"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public bridge synthetic isCopyableSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isCopyableSlice()Z

    move-result p0

    return p0
.end method

.method public onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 1

    .line 97
    sget-object p1, Lcom/android/settings/display/AsusDCDimmingPreferenceController$3;->$SwitchMap$androidx$lifecycle$Lifecycle$Event:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_2

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 106
    :cond_0
    iget-object p1, p0, Lcom/android/settings/display/AsusDCDimmingPreferenceController;->mService:Lcom/asus/hardwarestub/centralcontrol/IFPSCentralControl;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/display/AsusDCDimmingPreferenceController;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lcom/android/settings/display/AsusDCDimmingPreferenceController;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p1, p2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 107
    :cond_1
    iget-object p1, p0, Lcom/android/settings/display/AsusDCDimmingPreferenceController;->RESOLVER:Landroid/content/ContentResolver;

    if-eqz p1, :cond_3

    .line 108
    iget-object p0, p0, Lcom/android/settings/display/AsusDCDimmingPreferenceController;->mFrameRateValueObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0

    .line 99
    :cond_2
    iget-object p1, p0, Lcom/android/settings/display/AsusDCDimmingPreferenceController;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lcom/android/settings/display/AsusDCDimmingPreferenceController;->mConnection:Landroid/content/ServiceConnection;

    invoke-static {p1, p2}, Lcom/android/settings/display/AsusDCDimmingPreferenceController;->bindFPSControlService(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    .line 100
    iget-object p1, p0, Lcom/android/settings/display/AsusDCDimmingPreferenceController;->RESOLVER:Landroid/content/ContentResolver;

    const-string p2, "frame_rate_value"

    .line 101
    invoke-static {p2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/android/settings/display/AsusDCDimmingPreferenceController;->mFrameRateValueObserver:Landroid/database/ContentObserver;

    .line 100
    invoke-virtual {p1, p2, v0, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public setChecked(Z)Z
    .locals 1

    .line 173
    iget-object p0, p0, Lcom/android/settings/display/AsusDCDimmingPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "asus_dc_dimming_state"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 154
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 155
    check-cast p1, Landroidx/preference/SwitchPreference;

    iput-object p1, p0, Lcom/android/settings/display/AsusDCDimmingPreferenceController;->mAsusDCPreference:Landroidx/preference/SwitchPreference;

    if-nez p1, :cond_0

    const-string p0, "AsusDCDimmingPreferenceController"

    const-string p1, "Missing DC dimming Preference"

    .line 157
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
