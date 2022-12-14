.class public Lcom/android/settings/fuelgauge/PowerUsageAdvanced;
.super Lcom/android/settings/fuelgauge/PowerUsageBase;
.source "PowerUsageAdvanced.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fuelgauge/PowerUsageAdvanced$BatteryHistoryLoaderCallbacks;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private mBatteryAppListPreferenceController:Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;

.field private mBatteryChartPreferenceController:Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;

.field final mBatteryHistoryLoaderCallbacks:Lcom/android/settings/fuelgauge/PowerUsageAdvanced$BatteryHistoryLoaderCallbacks;

.field mBatteryHistoryMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settings/fuelgauge/BatteryHistEntry;",
            ">;>;"
        }
    .end annotation
.end field

.field mHistPref:Lcom/android/settings/fuelgauge/BatteryHistoryPreference;

.field private mIsChartDataLoaded:Z

.field private mIsChartGraphEnabled:Z

.field private mPowerUsageFeatureProvider:Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 191
    new-instance v0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced$1;

    invoke-direct {v0}, Lcom/android/settings/fuelgauge/PowerUsageAdvanced$1;-><init>()V

    sput-object v0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 45
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageBase;-><init>()V

    .line 56
    new-instance v0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced$BatteryHistoryLoaderCallbacks;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/fuelgauge/PowerUsageAdvanced$BatteryHistoryLoaderCallbacks;-><init>(Lcom/android/settings/fuelgauge/PowerUsageAdvanced;Lcom/android/settings/fuelgauge/PowerUsageAdvanced$1;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mBatteryHistoryLoaderCallbacks:Lcom/android/settings/fuelgauge/PowerUsageAdvanced$BatteryHistoryLoaderCallbacks;

    const/4 v0, 0x0

    .line 60
    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mIsChartDataLoaded:Z

    .line 61
    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mIsChartGraphEnabled:Z

    return-void
.end method

.method private refreshFeatureFlag(Landroid/content/Context;)V
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mPowerUsageFeatureProvider:Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    if-nez v0, :cond_0

    .line 179
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    .line 180
    invoke-virtual {v0, p1}, Lcom/android/settings/overlay/FeatureFactory;->getPowerUsageFeatureProvider(Landroid/content/Context;)Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mPowerUsageFeatureProvider:Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    .line 181
    invoke-interface {v0, p1}, Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;->isChartGraphEnabled(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mIsChartGraphEnabled:Z

    :cond_0
    return-void
.end method

.method private setBatteryChartPreferenceController()V
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mHistPref:Lcom/android/settings/fuelgauge/BatteryHistoryPreference;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mBatteryChartPreferenceController:Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;

    if-eqz p0, :cond_0

    .line 187
    invoke-virtual {v0, p0}, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->setChartPreferenceController(Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;)V

    :cond_0
    return-void
.end method

.method private updateHistPrefSummary(Landroid/content/Context;)V
    .locals 3

    .line 166
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 167
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "plugged"

    const/4 v2, -0x1

    .line 168
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 169
    :goto_0
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mPowerUsageFeatureProvider:Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    invoke-interface {v1, p1}, Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;->isEnhancedBatteryPredictionEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    if-nez v0, :cond_1

    .line 170
    iget-object p1, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mHistPref:Lcom/android/settings/fuelgauge/BatteryHistoryPreference;

    iget-object p0, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mPowerUsageFeatureProvider:Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    .line 171
    invoke-interface {p0}, Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;->getAdvancedUsageScreenInfoString()Ljava/lang/String;

    move-result-object p0

    .line 170
    invoke-virtual {p1, p0}, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->setBottomSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 173
    :cond_1
    iget-object p0, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mHistPref:Lcom/android/settings/fuelgauge/BatteryHistoryPreference;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->hideBottomSummary()V

    :goto_1
    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 111
    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->refreshFeatureFlag(Landroid/content/Context;)V

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 114
    iget-boolean v1, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mIsChartGraphEnabled:Z

    if-eqz v1, :cond_0

    .line 115
    new-instance v1, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;

    .line 117
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/android/settings/SettingsActivity;

    const-string v4, "app_list"

    move-object v2, v1

    move-object v3, p1

    move-object v7, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/SettingsActivity;Lcom/android/settings/core/InstrumentedPreferenceFragment;)V

    iput-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mBatteryChartPreferenceController:Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;

    .line 118
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->setBatteryChartPreferenceController()V

    goto :goto_0

    .line 121
    :cond_0
    new-instance v1, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;

    .line 123
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v10

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lcom/android/settings/SettingsActivity;

    const-string v9, "app_list"

    move-object v7, v1

    move-object v8, p1

    move-object v12, p0

    invoke-direct/range {v7 .. v12}, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/SettingsActivity;Lcom/android/settings/core/InstrumentedPreferenceFragment;)V

    iput-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mBatteryAppListPreferenceController:Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;

    .line 124
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-object v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "AdvancedBatteryUsage"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x33

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 99
    sget p0, Lcom/android/settings/R$xml;->power_usage_advanced:I

    return p0
.end method

.method protected isBatteryHistoryNeeded()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 68
    invoke-super {p0, p1}, Lcom/android/settings/fuelgauge/PowerUsageBase;->onCreate(Landroid/os/Bundle;)V

    .line 69
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 70
    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->refreshFeatureFlag(Landroid/content/Context;)V

    const-string v0, "battery_graph"

    .line 71
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mHistPref:Lcom/android/settings/fuelgauge/BatteryHistoryPreference;

    .line 72
    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mIsChartGraphEnabled:Z

    if-eqz v0, :cond_0

    .line 73
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->setBatteryChartPreferenceController()V

    goto :goto_0

    .line 75
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->updateHistPrefSummary(Landroid/content/Context;)V

    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 81
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 82
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 83
    invoke-static {}, Lcom/android/settings/fuelgauge/BatteryEntry;->clearUidCache()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 104
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    const/4 v0, 0x0

    .line 106
    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mIsChartDataLoaded:Z

    return-void
.end method

.method protected refreshUi(I)V
    .locals 2

    .line 136
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mHistPref:Lcom/android/settings/fuelgauge/BatteryHistoryPreference;

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/PowerUsageBase;->updatePreference(Lcom/android/settings/fuelgauge/BatteryHistoryPreference;)V

    .line 141
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mBatteryAppListPreferenceController:Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageBase;->mBatteryUsageStats:Landroid/os/BatteryUsageStats;

    if-eqz v0, :cond_1

    .line 142
    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->updateHistPrefSummary(Landroid/content/Context;)V

    .line 143
    iget-object p1, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mBatteryAppListPreferenceController:Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;

    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageBase;->mBatteryUsageStats:Landroid/os/BatteryUsageStats;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->refreshAppListGroup(Landroid/os/BatteryUsageStats;Z)V

    .line 146
    :cond_1
    iget-object p1, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mBatteryChartPreferenceController:Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mBatteryHistoryMap:Ljava/util/Map;

    if-eqz p0, :cond_2

    .line 147
    invoke-virtual {p1, p0}, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->setBatteryHistoryMap(Ljava/util/Map;)V

    :cond_2
    return-void
.end method

.method protected restartBatteryStatsLoader(I)V
    .locals 3

    .line 153
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "refresh_type"

    .line 154
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 156
    iget-boolean v1, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mIsChartGraphEnabled:Z

    if-eqz v1, :cond_0

    iget-boolean v2, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mIsChartDataLoaded:Z

    if-nez v2, :cond_0

    const/4 p1, 0x1

    .line 157
    iput-boolean p1, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mIsChartDataLoaded:Z

    .line 158
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object p1

    const/4 v1, 0x2

    iget-object p0, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mBatteryHistoryLoaderCallbacks:Lcom/android/settings/fuelgauge/PowerUsageAdvanced$BatteryHistoryLoaderCallbacks;

    invoke-virtual {p1, v1, v0, p0}, Landroidx/loader/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    .line 161
    invoke-super {p0, p1}, Lcom/android/settings/fuelgauge/PowerUsageBase;->restartBatteryStatsLoader(I)V

    :cond_1
    :goto_0
    return-void
.end method
