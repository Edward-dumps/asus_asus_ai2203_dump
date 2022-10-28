.class public Lcom/android/settings/fuelgauge/TopLevelBatteryPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "TopLevelBatteryPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;
.implements Lcom/android/settings/fuelgauge/BatteryPreferenceController;


# static fields
.field private static final MOBILE_MANAGER_PACKAGE_NAME:Ljava/lang/String; = "com.asus.mobilemanager"

.field private static final TAG:Ljava/lang/String; = "TopLevelBatteryPreferenceController"

.field protected static sReplacingActivityMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mBatteryBroadcastReceiver:Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver;

.field private mBatteryInfo:Lcom/android/settings/fuelgauge/BatteryInfo;

.field private mBatterySettingsFeatureProvider:Lcom/android/settings/fuelgauge/BatterySettingsFeatureProvider;

.field private mBatteryStatusFeatureProvider:Lcom/android/settings/fuelgauge/BatteryStatusFeatureProvider;

.field private mBatteryStatusLabel:Ljava/lang/String;

.field private final mConnection:Landroid/content/ServiceConnection;

.field protected mIsBatteryPresent:Z

.field private mPSManager:Lcom/android/settings/fuelgauge/IPowerSaverManager;

.field private mPreference:Landroidx/preference/Preference;


# direct methods
.method public static synthetic $r8$lambda$IYm0EAvpRMZV8cI1oDnJGsoQD7o(Lcom/android/settings/fuelgauge/TopLevelBatteryPreferenceController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/TopLevelBatteryPreferenceController;->lambda$new$1(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$xPATdKI0ZANOtT77m5hPZ8FnzN4(Lcom/android/settings/fuelgauge/TopLevelBatteryPreferenceController;Lcom/android/settings/fuelgauge/BatteryInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/TopLevelBatteryPreferenceController;->lambda$new$0(Lcom/android/settings/fuelgauge/BatteryInfo;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings/fuelgauge/TopLevelBatteryPreferenceController;->sReplacingActivityMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 47
    iput-boolean p2, p0, Lcom/android/settings/fuelgauge/TopLevelBatteryPreferenceController;->mIsBatteryPresent:Z

    .line 65
    new-instance p2, Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver;

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0}, Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/fuelgauge/TopLevelBatteryPreferenceController;->mBatteryBroadcastReceiver:Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver;

    .line 66
    new-instance v0, Lcom/android/settings/fuelgauge/TopLevelBatteryPreferenceController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/TopLevelBatteryPreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/fuelgauge/TopLevelBatteryPreferenceController;)V

    invoke-virtual {p2, v0}, Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver;->setBatteryChangedListener(Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver$OnBatteryChangedListener;)V

    .line 76
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p2

    .line 77
    invoke-virtual {p2, p1}, Lcom/android/settings/overlay/FeatureFactory;->getBatterySettingsFeatureProvider(Landroid/content/Context;)Lcom/android/settings/fuelgauge/BatterySettingsFeatureProvider;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/fuelgauge/TopLevelBatteryPreferenceController;->mBatterySettingsFeatureProvider:Lcom/android/settings/fuelgauge/BatterySettingsFeatureProvider;

    .line 78
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p2

    .line 79
    invoke-virtual {p2, p1}, Lcom/android/settings/overlay/FeatureFactory;->getBatteryStatusFeatureProvider(Landroid/content/Context;)Lcom/android/settings/fuelgauge/BatteryStatusFeatureProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/TopLevelBatteryPreferenceController;->mBatteryStatusFeatureProvider:Lcom/android/settings/fuelgauge/BatteryStatusFeatureProvider;

    .line 81
    new-instance p1, Lcom/android/settings/fuelgauge/TopLevelBatteryPreferenceController$1;

    invoke-direct {p1, p0}, Lcom/android/settings/fuelgauge/TopLevelBatteryPreferenceController$1;-><init>(Lcom/android/settings/fuelgauge/TopLevelBatteryPreferenceController;)V

    iput-object p1, p0, Lcom/android/settings/fuelgauge/TopLevelBatteryPreferenceController;->mConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$002(Lcom/android/settings/fuelgauge/TopLevelBatteryPreferenceController;Lcom/android/settings/fuelgauge/IPowerSaverManager;)Lcom/android/settings/fuelgauge/IPowerSaverManager;
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/android/settings/fuelgauge/TopLevelBatteryPreferenceController;->mPSManager:Lcom/android/settings/fuelgauge/IPowerSaverManager;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings/fuelgauge/TopLevelBatteryPreferenceController;)Landroidx/preference/Preference;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/android/settings/fuelgauge/TopLevelBatteryPreferenceController;->mPreference:Landroidx/preference/Preference;

    return-object p0
.end method

.method protected static convertClassPathToComponentName(Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 241
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, "\\."

    .line 244
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 245
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    if-gez v2, :cond_1

    return-object v0

    .line 249
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v0, v3

    add-int/lit8 v0, v0, -0x1

    if-lez v0, :cond_2

    const/4 v3, 0x0

    .line 250
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    const-string p0, ""

    .line 251
    :goto_0
    new-instance v0, Landroid/content/ComponentName;

    aget-object v1, v1, v2

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-object v0
.end method

.method private generateLabel(Lcom/android/settings/fuelgauge/BatteryInfo;)Ljava/lang/CharSequence;
    .locals 4

    .line 213
    iget-boolean v0, p1, Lcom/android/settings/fuelgauge/BatteryInfo;->discharging:Z

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/android/settings/fuelgauge/BatteryInfo;->chargeLabel:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    return-object v0

    .line 215
    :cond_0
    iget-object v0, p1, Lcom/android/settings/fuelgauge/BatteryInfo;->remainingLabel:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    .line 216
    iget-object p0, p1, Lcom/android/settings/fuelgauge/BatteryInfo;->batteryPercentString:Ljava/lang/String;

    return-object p0

    .line 218
    :cond_1
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->power_remaining_settings_home_page:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object p1, p1, Lcom/android/settings/fuelgauge/BatteryInfo;->batteryPercentString:Ljava/lang/String;

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object v0, v2, p1

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected static getDashboardLabel(Landroid/content/Context;Lcom/android/settings/fuelgauge/BatteryInfo;Lcom/android/settings/fuelgauge/IPowerSaverManager;)Ljava/lang/CharSequence;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-nez p0, :cond_0

    goto :goto_0

    .line 179
    :cond_0
    iget-boolean v1, p1, Lcom/android/settings/fuelgauge/BatteryInfo;->discharging:Z

    if-nez v1, :cond_3

    .line 180
    invoke-static {p2}, Lcom/android/settings/fuelgauge/BatteryUtils;->isScheduleChargingOnGoing(Lcom/android/settings/fuelgauge/IPowerSaverManager;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 181
    invoke-static {p0, p2}, Lcom/android/settings/fuelgauge/BatteryUtils;->getScheduleChargeLabel(Landroid/content/Context;Lcom/android/settings/fuelgauge/IPowerSaverManager;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 182
    :cond_1
    invoke-static {p2}, Lcom/android/settings/fuelgauge/BatteryUtils;->isSteadyChargingOnGoing(Lcom/android/settings/fuelgauge/IPowerSaverManager;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 183
    invoke-static {p0, p2}, Lcom/android/settings/fuelgauge/BatteryUtils;->getSteadyChargeLabel(Landroid/content/Context;Lcom/android/settings/fuelgauge/IPowerSaverManager;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 184
    :cond_2
    iget-object p0, p1, Lcom/android/settings/fuelgauge/BatteryInfo;->chargeLabel:Ljava/lang/CharSequence;

    if-eqz p0, :cond_5

    move-object v0, p0

    goto :goto_0

    .line 187
    :cond_3
    iget-object p2, p1, Lcom/android/settings/fuelgauge/BatteryInfo;->remainingLabel:Ljava/lang/CharSequence;

    if-nez p2, :cond_4

    .line 188
    iget-object v0, p1, Lcom/android/settings/fuelgauge/BatteryInfo;->batteryPercentString:Ljava/lang/String;

    goto :goto_0

    .line 190
    :cond_4
    sget v0, Lcom/android/settings/R$string;->power_remaining_settings_home_page:I

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object p1, p1, Lcom/android/settings/fuelgauge/BatteryInfo;->batteryPercentString:Ljava/lang/String;

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_5
    :goto_0
    return-object v0
.end method

.method private getSummary(Z)Ljava/lang/CharSequence;
    .locals 1

    .line 171
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settings/fuelgauge/TopLevelBatteryPreferenceController;->mBatteryInfo:Lcom/android/settings/fuelgauge/BatteryInfo;

    iget-object p0, p0, Lcom/android/settings/fuelgauge/TopLevelBatteryPreferenceController;->mPSManager:Lcom/android/settings/fuelgauge/IPowerSaverManager;

    invoke-static {p1, v0, p0}, Lcom/android/settings/fuelgauge/TopLevelBatteryPreferenceController;->getDashboardLabel(Landroid/content/Context;Lcom/android/settings/fuelgauge/BatteryInfo;Lcom/android/settings/fuelgauge/IPowerSaverManager;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$new$0(Lcom/android/settings/fuelgauge/BatteryInfo;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/android/settings/fuelgauge/TopLevelBatteryPreferenceController;->mBatteryInfo:Lcom/android/settings/fuelgauge/BatteryInfo;

    .line 72
    iget-object p1, p0, Lcom/android/settings/fuelgauge/TopLevelBatteryPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method private synthetic lambda$new$1(I)V
    .locals 1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 68
    iput-boolean p1, p0, Lcom/android/settings/fuelgauge/TopLevelBatteryPreferenceController;->mIsBatteryPresent:Z

    .line 70
    :cond_0
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/settings/fuelgauge/TopLevelBatteryPreferenceController$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/TopLevelBatteryPreferenceController$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/fuelgauge/TopLevelBatteryPreferenceController;)V

    const/4 p0, 0x1

    invoke-static {p1, v0, p0}, Lcom/android/settings/fuelgauge/BatteryInfo;->getBatteryInfo(Landroid/content/Context;Lcom/android/settings/fuelgauge/BatteryInfo$Callback;Z)V

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

    .line 104
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 105
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/TopLevelBatteryPreferenceController;->mPreference:Landroidx/preference/Preference;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 98
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$bool;->config_show_top_level_battery:I

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

.method protected getDashboardLabel(Landroid/content/Context;Lcom/android/settings/fuelgauge/BatteryInfo;Z)Ljava/lang/CharSequence;
    .locals 1

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    .line 204
    iget-object p1, p0, Lcom/android/settings/fuelgauge/TopLevelBatteryPreferenceController;->mBatteryStatusFeatureProvider:Lcom/android/settings/fuelgauge/BatteryStatusFeatureProvider;

    invoke-interface {p1, p0, p2}, Lcom/android/settings/fuelgauge/BatteryStatusFeatureProvider;->triggerBatteryStatusUpdate(Lcom/android/settings/fuelgauge/BatteryPreferenceController;Lcom/android/settings/fuelgauge/BatteryInfo;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 205
    iput-object v0, p0, Lcom/android/settings/fuelgauge/TopLevelBatteryPreferenceController;->mBatteryStatusLabel:Ljava/lang/String;

    .line 209
    :cond_1
    iget-object p1, p0, Lcom/android/settings/fuelgauge/TopLevelBatteryPreferenceController;->mBatteryStatusLabel:Ljava/lang/String;

    if-nez p1, :cond_2

    invoke-direct {p0, p2}, Lcom/android/settings/fuelgauge/TopLevelBatteryPreferenceController;->generateLabel(Lcom/android/settings/fuelgauge/BatteryInfo;)Ljava/lang/CharSequence;

    move-result-object p1

    :cond_2
    return-object p1

    :cond_3
    :goto_0
    return-object v0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    const/4 v0, 0x1

    .line 167
    invoke-direct {p0, v0}, Lcom/android/settings/fuelgauge/TopLevelBatteryPreferenceController;->getSummary(Z)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 4

    .line 110
    invoke-virtual {p1}, Landroidx/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 111
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 116
    :cond_0
    invoke-static {v0}, Lcom/android/settings/fuelgauge/TopLevelBatteryPreferenceController;->convertClassPathToComponentName(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_1

    .line 118
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->handlePreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0

    .line 122
    :cond_1
    sget-object v2, Lcom/android/settings/fuelgauge/TopLevelBatteryPreferenceController;->sReplacingActivityMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 123
    sget-object v2, Lcom/android/settings/fuelgauge/TopLevelBatteryPreferenceController;->sReplacingActivityMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_0

    .line 125
    :cond_2
    iget-object v2, p0, Lcom/android/settings/fuelgauge/TopLevelBatteryPreferenceController;->mBatterySettingsFeatureProvider:Lcom/android/settings/fuelgauge/BatterySettingsFeatureProvider;

    invoke-interface {v2, v1}, Lcom/android/settings/fuelgauge/BatterySettingsFeatureProvider;->getReplacingActivity(Landroid/content/ComponentName;)Landroid/content/ComponentName;

    move-result-object v2

    .line 127
    sget-object v3, Lcom/android/settings/fuelgauge/TopLevelBatteryPreferenceController;->sReplacingActivityMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v2

    :goto_0
    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 130
    invoke-virtual {v1, v0}, Landroid/content/ComponentName;->compareTo(Landroid/content/ComponentName;)I

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    .line 143
    :cond_3
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 144
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 145
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return v2

    .line 132
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string v1, "com.asus.mobilemanager"

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->isPackageEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 133
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v3, "top_level_battery"

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_5

    const-string p1, "TopLevelBatteryPreferenceController"

    const-string v0, "Asus Mobile manager is disabled"

    .line 134
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    new-instance p1, Lcom/android/settings/utils/EnableFeatureDialog;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0}, Lcom/android/settings/utils/EnableFeatureDialog;-><init>(Landroid/content/Context;)V

    .line 136
    invoke-virtual {p1, v1}, Lcom/android/settings/utils/EnableFeatureDialog;->showDialog(Ljava/lang/String;)V

    return v2

    .line 140
    :cond_5
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->handlePreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0

    .line 113
    :cond_6
    :goto_2
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->handlePreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
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

.method public onStart()V
    .locals 4

    .line 152
    iget-object v0, p0, Lcom/android/settings/fuelgauge/TopLevelBatteryPreferenceController;->mBatteryBroadcastReceiver:Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver;

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver;->register()V

    .line 153
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 154
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.asus.powersaver"

    const-string v3, "com.asus.powersaver.PowerSaverService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 156
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/fuelgauge/TopLevelBatteryPreferenceController;->mConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/android/settings/fuelgauge/TopLevelBatteryPreferenceController;->mBatteryBroadcastReceiver:Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver;

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver;->unRegister()V

    .line 162
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/fuelgauge/TopLevelBatteryPreferenceController;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method public updateBatteryStatus(Ljava/lang/String;Lcom/android/settings/fuelgauge/BatteryInfo;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/android/settings/fuelgauge/TopLevelBatteryPreferenceController;->mBatteryStatusLabel:Ljava/lang/String;

    .line 230
    iget-object p1, p0, Lcom/android/settings/fuelgauge/TopLevelBatteryPreferenceController;->mPreference:Landroidx/preference/Preference;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 232
    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/TopLevelBatteryPreferenceController;->getSummary(Z)Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 234
    iget-object p0, p0, Lcom/android/settings/fuelgauge/TopLevelBatteryPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
