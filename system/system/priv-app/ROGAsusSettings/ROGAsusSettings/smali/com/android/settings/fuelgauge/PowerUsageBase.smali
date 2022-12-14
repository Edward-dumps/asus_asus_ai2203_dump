.class public abstract Lcom/android/settings/fuelgauge/PowerUsageBase;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "PowerUsageBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fuelgauge/PowerUsageBase$BatteryUsageStatsLoaderCallbacks;
    }
.end annotation


# instance fields
.field private mBatteryBroadcastReceiver:Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver;

.field mBatteryUsageStats:Landroid/os/BatteryUsageStats;

.field final mBatteryUsageStatsLoaderCallbacks:Lcom/android/settings/fuelgauge/PowerUsageBase$BatteryUsageStatsLoaderCallbacks;

.field protected mIsBatteryPresent:Z

.field protected mUm:Landroid/os/UserManager;


# direct methods
.method public static synthetic $r8$lambda$OU1JeDSFmlv6qpU9JmRzpIlUyOk(Lcom/android/settings/fuelgauge/PowerUsageBase;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/PowerUsageBase;->lambda$onCreate$0(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 37
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    const/4 v0, 0x1

    .line 49
    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/PowerUsageBase;->mIsBatteryPresent:Z

    .line 52
    new-instance v0, Lcom/android/settings/fuelgauge/PowerUsageBase$BatteryUsageStatsLoaderCallbacks;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/fuelgauge/PowerUsageBase$BatteryUsageStatsLoaderCallbacks;-><init>(Lcom/android/settings/fuelgauge/PowerUsageBase;Lcom/android/settings/fuelgauge/PowerUsageBase$1;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageBase;->mBatteryUsageStatsLoaderCallbacks:Lcom/android/settings/fuelgauge/PowerUsageBase$BatteryUsageStatsLoaderCallbacks;

    return-void
.end method

.method private synthetic lambda$onCreate$0(I)V
    .locals 1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    .line 69
    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/PowerUsageBase;->mIsBatteryPresent:Z

    .line 71
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/PowerUsageBase;->restartBatteryStatsLoader(I)V

    return-void
.end method


# virtual methods
.method protected abstract isBatteryHistoryNeeded()Z
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .line 58
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    const-string v0, "user"

    .line 59
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/settings/fuelgauge/PowerUsageBase;->mUm:Landroid/os/UserManager;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 64
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 66
    new-instance p1, Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/fuelgauge/PowerUsageBase;->mBatteryBroadcastReceiver:Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver;

    .line 67
    new-instance v0, Lcom/android/settings/fuelgauge/PowerUsageBase$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/PowerUsageBase$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/fuelgauge/PowerUsageBase;)V

    invoke-virtual {p1, v0}, Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver;->setBatteryChangedListener(Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver$OnBatteryChangedListener;)V

    return-void
.end method

.method protected onLoadFinished(I)V
    .locals 0

    .line 96
    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/PowerUsageBase;->refreshUi(I)V

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 77
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStart()V

    .line 78
    iget-object p0, p0, Lcom/android/settings/fuelgauge/PowerUsageBase;->mBatteryBroadcastReceiver:Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver;->register()V

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 83
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStop()V

    .line 84
    iget-object p0, p0, Lcom/android/settings/fuelgauge/PowerUsageBase;->mBatteryBroadcastReceiver:Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver;->unRegister()V

    return-void
.end method

.method protected abstract refreshUi(I)V
.end method

.method protected restartBatteryStatsLoader(I)V
    .locals 2

    .line 88
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "refresh_type"

    .line 89
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 90
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageBase;->isBatteryHistoryNeeded()Z

    move-result p1

    const-string v1, "include_history"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 91
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/fuelgauge/PowerUsageBase;->mBatteryUsageStatsLoaderCallbacks:Lcom/android/settings/fuelgauge/PowerUsageBase$BatteryUsageStatsLoaderCallbacks;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0, p0}, Landroidx/loader/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    return-void
.end method

.method protected updatePreference(Lcom/android/settings/fuelgauge/BatteryHistoryPreference;)V
    .locals 2

    .line 103
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 104
    iget-object p0, p0, Lcom/android/settings/fuelgauge/PowerUsageBase;->mBatteryUsageStats:Landroid/os/BatteryUsageStats;

    invoke-virtual {p1, p0}, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->setBatteryUsageStats(Landroid/os/BatteryUsageStats;)V

    const-string p0, "PowerUsageBase"

    const-string p1, "updatePreference"

    .line 105
    invoke-static {p0, p1, v0, v1}, Lcom/android/settings/fuelgauge/BatteryUtils;->logRuntime(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method
