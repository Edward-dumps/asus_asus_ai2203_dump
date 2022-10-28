.class public Lcom/android/settings/deviceinfo/BatteryLevelController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "BatteryLevelController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Landroidx/lifecycle/LifecycleEventObserver;


# static fields
.field public static final KEY_BATTERY_LEVEL:Ljava/lang/String; = "battery_level"

.field private static final TAG:Ljava/lang/String; = "BatteryLevelController"


# instance fields
.field private mBatteryLevelReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mPreference:Landroidx/preference/Preference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/lifecycle/Lifecycle;)V
    .locals 1

    const-string v0, "battery_level"

    .line 47
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 52
    new-instance v0, Lcom/android/settings/deviceinfo/BatteryLevelController$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/BatteryLevelController$1;-><init>(Lcom/android/settings/deviceinfo/BatteryLevelController;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/BatteryLevelController;->mBatteryLevelReceiver:Landroid/content/BroadcastReceiver;

    .line 48
    invoke-virtual {p2, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 49
    iput-object p1, p0, Lcom/android/settings/deviceinfo/BatteryLevelController;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/deviceinfo/BatteryLevelController;)Landroidx/preference/Preference;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/android/settings/deviceinfo/BatteryLevelController;->mPreference:Landroidx/preference/Preference;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic copy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->copy()V

    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 87
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "battery_level"

    .line 88
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/deviceinfo/BatteryLevelController;->mPreference:Landroidx/preference/Preference;

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

    const-string p0, "battery_level"

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

.method public onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 1

    .line 64
    sget-object p1, Lcom/android/settings/deviceinfo/BatteryLevelController$2;->$SwitchMap$androidx$lifecycle$Lifecycle$Event:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 69
    :cond_0
    iget-object p1, p0, Lcom/android/settings/deviceinfo/BatteryLevelController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/deviceinfo/BatteryLevelController;->mBatteryLevelReceiver:Landroid/content/BroadcastReceiver;

    new-instance p2, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {p2, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    .line 66
    :cond_1
    iget-object p1, p0, Lcom/android/settings/deviceinfo/BatteryLevelController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/deviceinfo/BatteryLevelController;->mBatteryLevelReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
