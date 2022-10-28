.class public Lcom/android/settings/fuelgauge/AsusBatteryDrainingStopPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "AsusBatteryDrainingStopPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# static fields
.field public static final KEY_BATTERY_DRAIN_STOP:Ljava/lang/String; = "method_closing_battery_draining_app"

.field private static final TAG:Ljava/lang/String; = "AsusBatteryDrainingStopPreferenceController"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPreference:Landroidx/preference/Preference;

.field private mPreferenceClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 82
    new-instance p2, Lcom/android/settings/fuelgauge/AsusBatteryDrainingStopPreferenceController$1;

    invoke-direct {p2, p0}, Lcom/android/settings/fuelgauge/AsusBatteryDrainingStopPreferenceController$1;-><init>(Lcom/android/settings/fuelgauge/AsusBatteryDrainingStopPreferenceController;)V

    iput-object p2, p0, Lcom/android/settings/fuelgauge/AsusBatteryDrainingStopPreferenceController;->mPreferenceClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    .line 46
    iput-object p1, p0, Lcom/android/settings/fuelgauge/AsusBatteryDrainingStopPreferenceController;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/fuelgauge/AsusBatteryDrainingStopPreferenceController;)Landroid/content/Context;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/android/settings/fuelgauge/AsusBatteryDrainingStopPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Landroid/content/Context;)V
    .locals 0

    .line 33
    invoke-static {p0}, Lcom/android/settings/fuelgauge/AsusBatteryDrainingStopPreferenceController;->startBatteryDrainingStop(Landroid/content/Context;)V

    return-void
.end method

.method private static startBatteryDrainingStop(Landroid/content/Context;)V
    .locals 3

    :try_start_0
    const-string v0, "mobile_manager://battery/BatteryDrainingStopMethods"

    .line 92
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 93
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 94
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mobilemanager ActivityNotFoundException not found exception : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AsusBatteryDrainingStopPreferenceController"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
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

    .line 61
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "method_closing_battery_draining_app"

    .line 63
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/AsusBatteryDrainingStopPreferenceController;->mPreference:Landroidx/preference/Preference;

    if-eqz p1, :cond_0

    .line 65
    iget-object p0, p0, Lcom/android/settings/fuelgauge/AsusBatteryDrainingStopPreferenceController;->mPreferenceClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    :cond_0
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

    const-string p0, "method_closing_battery_draining_app"

    return-object p0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 3

    .line 71
    iget-object v0, p0, Lcom/android/settings/fuelgauge/AsusBatteryDrainingStopPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "stop_drain_apps_methods"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 76
    :cond_0
    iget-object p0, p0, Lcom/android/settings/fuelgauge/AsusBatteryDrainingStopPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->battery_draining_stop_force_title:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 74
    :cond_1
    iget-object p0, p0, Lcom/android/settings/fuelgauge/AsusBatteryDrainingStopPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->battery_draining_stop_normal_title:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

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
