.class public Lcom/android/settings/fuelgauge/PowerUsageSummary;
.super Lcom/android/settings/fuelgauge/PowerUsageBase;
.source "PowerUsageSummary.java"

# interfaces
.implements Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController$BatteryTipListener;


# static fields
.field static final BATTERY_INFO_LOADER:I = 0x1

.field static final BATTERY_TIP_LOADER:I = 0x2

.field static final KEY_BATTERY_ERROR:Ljava/lang/String; = "battery_help_message"

.field static final KEY_BATTERY_USAGE:Ljava/lang/String; = "battery_usage_summary"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private bound:Z

.field mBatteryHeaderPreferenceController:Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;

.field mBatteryInfo:Lcom/android/settings/fuelgauge/BatteryInfo;

.field mBatteryInfoLoaderCallbacks:Landroidx/loader/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
            "Lcom/android/settings/fuelgauge/BatteryInfo;",
            ">;"
        }
    .end annotation
.end field

.field mBatteryLayoutPref:Lcom/android/settingslib/widget/LayoutPreference;

.field mBatteryTipPreferenceController:Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;

.field private mBatteryTipsCallbacks:Landroidx/loader/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;",
            ">;>;"
        }
    .end annotation
.end field

.field mBatteryUsagePreference:Landroidx/preference/Preference;

.field mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

.field private mConnection:Landroid/content/ServiceConnection;

.field mHelpPreference:Landroidx/preference/Preference;

.field mNeedUpdateBatteryTip:Z

.field private mPSManager:Lcom/android/settings/fuelgauge/IPowerSaverManager;

.field mPowerFeatureProvider:Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

.field final mSettingsObserver:Landroid/database/ContentObserver;

.field private mSystemModeChangedReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 642
    new-instance v0, Lcom/android/settings/search/BaseSearchIndexProvider;

    sget v1, Lcom/android/settings/R$xml;->power_usage_summary:I

    invoke-direct {v0, v1}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>(I)V

    sput-object v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 68
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageBase;-><init>()V

    const/4 v0, 0x0

    .line 105
    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->bound:Z

    .line 107
    new-instance v0, Lcom/android/settings/fuelgauge/PowerUsageSummary$1;

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary$1;-><init>(Lcom/android/settings/fuelgauge/PowerUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mConnection:Landroid/content/ServiceConnection;

    .line 127
    new-instance v0, Lcom/android/settings/fuelgauge/PowerUsageSummary$2;

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary$2;-><init>(Lcom/android/settings/fuelgauge/PowerUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mSystemModeChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 142
    new-instance v0, Lcom/android/settings/fuelgauge/PowerUsageSummary$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/fuelgauge/PowerUsageSummary$3;-><init>(Lcom/android/settings/fuelgauge/PowerUsageSummary;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 150
    new-instance v0, Lcom/android/settings/fuelgauge/PowerUsageSummary$4;

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary$4;-><init>(Lcom/android/settings/fuelgauge/PowerUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryInfoLoaderCallbacks:Landroidx/loader/app/LoaderManager$LoaderCallbacks;

    .line 173
    new-instance v0, Lcom/android/settings/fuelgauge/PowerUsageSummary$5;

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary$5;-><init>(Lcom/android/settings/fuelgauge/PowerUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryTipsCallbacks:Landroidx/loader/app/LoaderManager$LoaderCallbacks;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/fuelgauge/PowerUsageSummary;)Lcom/android/settings/fuelgauge/IPowerSaverManager;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPSManager:Lcom/android/settings/fuelgauge/IPowerSaverManager;

    return-object p0
.end method

.method static synthetic access$002(Lcom/android/settings/fuelgauge/PowerUsageSummary;Lcom/android/settings/fuelgauge/IPowerSaverManager;)Lcom/android/settings/fuelgauge/IPowerSaverManager;
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPSManager:Lcom/android/settings/fuelgauge/IPowerSaverManager;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/settings/fuelgauge/PowerUsageSummary;Z)Z
    .locals 0

    .line 68
    iput-boolean p1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->bound:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/settings/fuelgauge/PowerUsageSummary;Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;
    .locals 0

    .line 68
    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/settings/fuelgauge/PowerUsageSummary;Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;
    .locals 0

    .line 68
    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/settings/fuelgauge/PowerUsageSummary;Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;
    .locals 0

    .line 68
    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/settings/fuelgauge/PowerUsageSummary;Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;
    .locals 0

    .line 68
    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/settings/fuelgauge/PowerUsageSummary;Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;
    .locals 0

    .line 68
    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p0

    return-object p0
.end method

.method private getModeName(I)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 636
    :pswitch_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->system_mode_x_mode_plus:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 633
    :pswitch_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->system_mode_advanced:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 630
    :pswitch_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->system_mode_extreme_power_saving_v2:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 627
    :pswitch_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->system_mode_durable:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 624
    :pswitch_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->system_mode_dynamic:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 621
    :pswitch_6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->power_master_battery_modes_custom:I

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 618
    :pswitch_7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->power_master_battery_modes_custom:I

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v0

    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 615
    :pswitch_8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->power_master_game_mode_title:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 612
    :pswitch_9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->service_mode_item_title_smart_saving:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 609
    :pswitch_a
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->power_master_battery_modes_balance:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 606
    :pswitch_b
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->service_mode_item_title_ultra_saving:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 1
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

    .line 271
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 273
    new-instance v0, Lcom/android/settings/fuelgauge/AsusDetectDrainAppsController;

    invoke-direct {v0, p1}, Lcom/android/settings/fuelgauge/AsusDetectDrainAppsController;-><init>(Landroid/content/Context;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    new-instance v0, Lcom/android/settings/fuelgauge/CleanUpInSuspendPreferenceController;

    invoke-direct {v0, p1}, Lcom/android/settings/fuelgauge/CleanUpInSuspendPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    new-instance v0, Lcom/android/settings/fuelgauge/SwitchBySchedulePreferenceController;

    invoke-direct {v0, p1}, Lcom/android/settings/fuelgauge/SwitchBySchedulePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    new-instance v0, Lcom/android/settings/fuelgauge/SwitchByBatteryLevelPreferenceController;

    invoke-direct {v0, p1}, Lcom/android/settings/fuelgauge/SwitchByBatteryLevelPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    new-instance v0, Lcom/android/settings/fuelgauge/SystemModesPreferenceController;

    invoke-direct {v0, p1}, Lcom/android/settings/fuelgauge/SystemModesPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getHelpResource()I
    .locals 0

    .line 299
    sget p0, Lcom/android/settings/R$string;->help_url_battery:I

    return p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "PowerUsageSummary"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x4ef

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 294
    sget p0, Lcom/android/settings/R$xml;->power_usage_summary:I

    return p0
.end method

.method protected getSchedulerDueTime()Ljava/lang/String;
    .locals 7

    .line 461
    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->bound:Z

    const/4 v1, 0x0

    const-string v2, "PowerUsageSummary"

    if-nez v0, :cond_0

    const-string p0, "Power Saver Service doesn\'t connected"

    .line 462
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 467
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPSManager:Lcom/android/settings/fuelgauge/IPowerSaverManager;

    invoke-interface {v0}, Lcom/android/settings/fuelgauge/IPowerSaverManager;->getSchedulerDueTime()Ljava/lang/String;

    move-result-object v0

    .line 468
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "HH:mm"

    goto :goto_0

    :cond_1
    const-string v3, "hh:mm a"

    .line 469
    :goto_0
    new-instance v4, Ljava/text/SimpleDateFormat;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget-object p0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-direct {v4, v3, p0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 470
    new-instance p0, Ljava/util/Date;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-direct {p0, v5, v6}, Ljava/util/Date;-><init>(J)V

    .line 471
    invoke-virtual {v4, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "getSchedulerDueTime: "

    .line 473
    invoke-static {v2, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method protected getSchedulerStartTime()Ljava/lang/String;
    .locals 7

    .line 442
    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->bound:Z

    const/4 v1, 0x0

    const-string v2, "PowerUsageSummary"

    if-nez v0, :cond_0

    const-string p0, "Power Saver Service doesn\'t connected"

    .line 443
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 448
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPSManager:Lcom/android/settings/fuelgauge/IPowerSaverManager;

    invoke-interface {v0}, Lcom/android/settings/fuelgauge/IPowerSaverManager;->getSchedulerStartTime()Ljava/lang/String;

    move-result-object v0

    .line 449
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "HH:mm"

    goto :goto_0

    :cond_1
    const-string v3, "hh:mm a"

    .line 450
    :goto_0
    new-instance v4, Ljava/text/SimpleDateFormat;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget-object p0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-direct {v4, v3, p0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 451
    new-instance p0, Ljava/util/Date;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-direct {p0, v5, v6}, Ljava/util/Date;-><init>(J)V

    .line 452
    invoke-virtual {v4, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "getSchedulerStartTime: "

    .line 454
    invoke-static {v2, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method protected getSchedulerUsageMode()Ljava/lang/String;
    .locals 3

    .line 524
    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->bound:Z

    const/4 v1, 0x0

    const-string v2, "PowerUsageSummary"

    if-nez v0, :cond_0

    const-string p0, "Power Saver Service doesn\'t connected"

    .line 525
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 530
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPSManager:Lcom/android/settings/fuelgauge/IPowerSaverManager;

    invoke-interface {v0}, Lcom/android/settings/fuelgauge/IPowerSaverManager;->getSchedulerUsageMode()I

    move-result v0

    .line 531
    invoke-direct {p0, v0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getModeName(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "getSchedulerUsageMode: "

    .line 533
    invoke-static {v2, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method protected getSwitchByScheduleState()Z
    .locals 3

    .line 408
    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->bound:Z

    const/4 v1, 0x0

    const-string v2, "PowerUsageSummary"

    if-nez v0, :cond_0

    const-string p0, "Power Saver Service doesn\'t connected"

    .line 409
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 416
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPSManager:Lcom/android/settings/fuelgauge/IPowerSaverManager;

    invoke-interface {p0}, Lcom/android/settings/fuelgauge/IPowerSaverManager;->getSchedulerEnableState()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "getSwitchByScheduleState: "

    .line 418
    invoke-static {v2, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method protected getSystemMode()Ljava/lang/String;
    .locals 3

    .line 480
    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->bound:Z

    const/4 v1, 0x0

    const-string v2, "PowerUsageSummary"

    if-nez v0, :cond_0

    const-string p0, "Power Saver Service doesn\'t connected"

    .line 481
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 486
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPSManager:Lcom/android/settings/fuelgauge/IPowerSaverManager;

    invoke-interface {v0}, Lcom/android/settings/fuelgauge/IPowerSaverManager;->getSerivceMode()I

    move-result v0

    .line 487
    invoke-direct {p0, v0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getModeName(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "getSystemMode: "

    .line 489
    invoke-static {v2, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method protected getTriggerPercentage()Ljava/lang/String;
    .locals 5

    .line 587
    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->bound:Z

    const/4 v1, 0x0

    const-string v2, "PowerUsageSummary"

    if-nez v0, :cond_0

    const-string p0, "Power Saver Service doesn\'t connected"

    .line 588
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 593
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPSManager:Lcom/android/settings/fuelgauge/IPowerSaverManager;

    invoke-interface {p0}, Lcom/android/settings/fuelgauge/IPowerSaverManager;->getTriggerLevel()I

    move-result p0

    const-string v0, "%d %%"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 594
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v4

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "getTriggerPercentage: "

    .line 596
    invoke-static {v2, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method protected getTriggerUsageMode()Ljava/lang/String;
    .locals 3

    .line 571
    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->bound:Z

    const/4 v1, 0x0

    const-string v2, "PowerUsageSummary"

    if-nez v0, :cond_0

    const-string p0, "Power Saver Service doesn\'t connected"

    .line 572
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 577
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPSManager:Lcom/android/settings/fuelgauge/IPowerSaverManager;

    invoke-interface {v0}, Lcom/android/settings/fuelgauge/IPowerSaverManager;->getTriggerUsageMode()I

    move-result v0

    .line 578
    invoke-direct {p0, v0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getModeName(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "getTriggerUsageMode: "

    .line 580
    invoke-static {v2, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method initFeatureProvider()V
    .locals 2

    .line 340
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 341
    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v1

    .line 342
    invoke-virtual {v1, v0}, Lcom/android/settings/overlay/FeatureFactory;->getPowerUsageFeatureProvider(Landroid/content/Context;)Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerFeatureProvider:Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    return-void
.end method

.method initPreference()V
    .locals 3

    const-string v0, "battery_usage_summary"

    .line 347
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryUsagePreference:Landroidx/preference/Preference;

    .line 349
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerFeatureProvider:Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;->isChartGraphEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 350
    sget v1, Lcom/android/settings/R$string;->advanced_battery_preference_summary_with_hours:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 351
    :cond_0
    sget v1, Lcom/android/settings/R$string;->advanced_battery_preference_summary:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 348
    :goto_0
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const-string v0, "battery_help_message"

    .line 353
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mHelpPreference:Landroidx/preference/Preference;

    const/4 p0, 0x0

    .line 354
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method protected isBatteryHistoryNeeded()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    .line 197
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 198
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/settings/SettingsActivity;

    .line 200
    const-class v0, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryHeaderPreferenceController:Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;

    .line 201
    invoke-virtual {v0, p1}, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;->setActivity(Landroid/app/Activity;)V

    .line 202
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryHeaderPreferenceController:Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;

    invoke-virtual {v0, p0}, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;->setFragment(Landroidx/preference/PreferenceFragmentCompat;)V

    .line 203
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryHeaderPreferenceController:Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;->setLifecycle(Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 205
    const-class v0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryTipPreferenceController:Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;

    .line 206
    invoke-virtual {v0, p1}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;->setActivity(Lcom/android/settings/SettingsActivity;)V

    .line 207
    iget-object p1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryTipPreferenceController:Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;

    invoke-virtual {p1, p0}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;->setFragment(Lcom/android/settings/core/InstrumentedPreferenceFragment;)V

    .line 208
    iget-object p1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryTipPreferenceController:Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;

    new-instance v0, Lcom/android/settings/fuelgauge/PowerUsageSummary$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/fuelgauge/PowerUsageSummary;)V

    invoke-virtual {p1, v0}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;->setBatteryTipListener(Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController$BatteryTipListener;)V

    .line 210
    const-class p1, Lcom/android/settings/fuelgauge/SwitchBySchedulePreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/fuelgauge/SwitchBySchedulePreferenceController;

    invoke-virtual {p1, p0}, Lcom/android/settings/fuelgauge/SwitchBySchedulePreferenceController;->setParentFragment(Lcom/android/settings/fuelgauge/PowerUsageSummary;)V

    .line 211
    const-class p1, Lcom/android/settings/fuelgauge/SwitchByBatteryLevelPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/fuelgauge/SwitchByBatteryLevelPreferenceController;

    invoke-virtual {p1, p0}, Lcom/android/settings/fuelgauge/SwitchByBatteryLevelPreferenceController;->setParentFragment(Lcom/android/settings/fuelgauge/PowerUsageSummary;)V

    .line 212
    const-class p1, Lcom/android/settings/fuelgauge/SystemModesPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/fuelgauge/SystemModesPreferenceController;

    invoke-virtual {p1, p0}, Lcom/android/settings/fuelgauge/SystemModesPreferenceController;->setParentFragment(Lcom/android/settings/fuelgauge/PowerUsageSummary;)V

    return-void
.end method

.method public onBatteryTipHandled(Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;)V
    .locals 0

    .line 392
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->restartBatteryTipLoader()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 217
    invoke-super {p0, p1}, Lcom/android/settings/fuelgauge/PowerUsageBase;->onCreate(Landroid/os/Bundle;)V

    .line 218
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget v1, Lcom/android/settings/R$style;->Style_Update_Progressbar:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 219
    invoke-virtual {p0, v2}, Lcom/android/settings/SettingsPreferenceFragment;->setAnimationAllowed(Z)V

    .line 221
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->initFeatureProvider()V

    .line 222
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->initPreference()V

    .line 224
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/fuelgauge/BatteryUtils;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/BatteryUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    .line 226
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isBatteryPresent(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->restartBatteryInfoLoader()V

    goto :goto_0

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mHelpPreference:Landroidx/preference/Preference;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 232
    :goto_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryTipPreferenceController:Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;

    invoke-virtual {v0, p1}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;->restoreInstanceState(Landroid/os/Bundle;)V

    .line 233
    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->updateBatteryTipFlag(Landroid/os/Bundle;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 258
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 259
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mSystemModeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 260
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 247
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 248
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "battery_estimates_last_update_time"

    .line 249
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mSettingsObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    .line 248
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 252
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "change_system_mode"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 253
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mSystemModeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 386
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 387
    iget-object p0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryTipPreferenceController:Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;->saveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onStart()V
    .locals 4

    .line 238
    invoke-super {p0}, Lcom/android/settings/fuelgauge/PowerUsageBase;->onStart()V

    .line 239
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 240
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.asus.powersaver"

    const-string v3, "com.asus.powersaver.PowerSaverService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 242
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 265
    invoke-super {p0}, Lcom/android/settings/fuelgauge/PowerUsageBase;->onStop()V

    .line 266
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method protected refreshUi(I)V
    .locals 2

    .line 308
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 313
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/PowerUsageBase;->mIsBatteryPresent:Z

    if-nez v0, :cond_1

    return-void

    .line 318
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mNeedUpdateBatteryTip:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-eq p1, v1, :cond_2

    .line 320
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->restartBatteryTipLoader()V

    goto :goto_0

    .line 322
    :cond_2
    iput-boolean v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mNeedUpdateBatteryTip:Z

    .line 325
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->restartBatteryInfoLoader()V

    return-void
.end method

.method restartBatteryInfoLoader()V
    .locals 3

    .line 359
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 363
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/PowerUsageBase;->mIsBatteryPresent:Z

    if-nez v0, :cond_1

    return-void

    .line 366
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    sget-object v2, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iget-object p0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryInfoLoaderCallbacks:Landroidx/loader/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v1, v2, p0}, Landroidx/loader/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    return-void
.end method

.method protected restartBatteryStatsLoader(I)V
    .locals 0

    .line 377
    invoke-super {p0, p1}, Lcom/android/settings/fuelgauge/PowerUsageBase;->restartBatteryStatsLoader(I)V

    .line 379
    iget-boolean p1, p0, Lcom/android/settings/fuelgauge/PowerUsageBase;->mIsBatteryPresent:Z

    if-eqz p1, :cond_0

    .line 380
    iget-object p0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryHeaderPreferenceController:Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;->quickUpdateHeaderPreference()V

    :cond_0
    return-void
.end method

.method restartBatteryTipLoader()V
    .locals 3

    .line 330
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object v0

    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iget-object p0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryTipsCallbacks:Landroidx/loader/app/LoaderManager$LoaderCallbacks;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1, p0}, Landroidx/loader/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    return-void
.end method

.method setBatteryLayoutPreference(Lcom/android/settingslib/widget/LayoutPreference;)V
    .locals 0

    .line 335
    iput-object p1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryLayoutPref:Lcom/android/settingslib/widget/LayoutPreference;

    return-void
.end method

.method updateBatteryTipFlag(Landroid/os/Bundle;)V
    .locals 0

    if-eqz p1, :cond_1

    .line 372
    iget-object p1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryTipPreferenceController:Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;

    invoke-virtual {p1}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;->needUpdate()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mNeedUpdateBatteryTip:Z

    return-void
.end method

.method protected updateSwitchByScheduleState(Z)Z
    .locals 3

    .line 426
    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->bound:Z

    const/4 v1, 0x0

    const-string v2, "PowerUsageSummary"

    if-nez v0, :cond_0

    const-string p0, "Power Saver Service doesn\'t connected"

    .line 427
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 432
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPSManager:Lcom/android/settings/fuelgauge/IPowerSaverManager;

    invoke-interface {p0, p1}, Lcom/android/settings/fuelgauge/IPowerSaverManager;->updateSchedulerEnableState(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    const-string p1, "updateSwitchByScheduleState: "

    .line 434
    invoke-static {v2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method
