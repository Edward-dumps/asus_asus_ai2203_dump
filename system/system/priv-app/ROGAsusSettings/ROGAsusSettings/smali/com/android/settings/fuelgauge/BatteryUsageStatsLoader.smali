.class public Lcom/android/settings/fuelgauge/BatteryUsageStatsLoader;
.super Lcom/android/settingslib/utils/AsyncLoaderCompat;
.source "BatteryUsageStatsLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settingslib/utils/AsyncLoaderCompat<",
        "Landroid/os/BatteryUsageStats;",
        ">;"
    }
.end annotation


# instance fields
.field private final mBatteryStatsManager:Landroid/os/BatteryStatsManager;

.field private final mIncludeBatteryHistory:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    .line 34
    invoke-direct {p0, p1}, Lcom/android/settingslib/utils/AsyncLoaderCompat;-><init>(Landroid/content/Context;)V

    .line 35
    const-class v0, Landroid/os/BatteryStatsManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/BatteryStatsManager;

    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryUsageStatsLoader;->mBatteryStatsManager:Landroid/os/BatteryStatsManager;

    .line 36
    iput-boolean p2, p0, Lcom/android/settings/fuelgauge/BatteryUsageStatsLoader;->mIncludeBatteryHistory:Z

    return-void
.end method


# virtual methods
.method public loadInBackground()Landroid/os/BatteryUsageStats;
    .locals 2

    .line 41
    new-instance v0, Landroid/os/BatteryUsageStatsQuery$Builder;

    invoke-direct {v0}, Landroid/os/BatteryUsageStatsQuery$Builder;-><init>()V

    .line 42
    iget-boolean v1, p0, Lcom/android/settings/fuelgauge/BatteryUsageStatsLoader;->mIncludeBatteryHistory:Z

    if-eqz v1, :cond_0

    .line 43
    invoke-virtual {v0}, Landroid/os/BatteryUsageStatsQuery$Builder;->includeBatteryHistory()Landroid/os/BatteryUsageStatsQuery$Builder;

    .line 45
    :cond_0
    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryUsageStatsLoader;->mBatteryStatsManager:Landroid/os/BatteryStatsManager;

    invoke-virtual {v0}, Landroid/os/BatteryUsageStatsQuery$Builder;->build()Landroid/os/BatteryUsageStatsQuery;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/BatteryStatsManager;->getBatteryUsageStats(Landroid/os/BatteryUsageStatsQuery;)Landroid/os/BatteryUsageStats;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 0

    .line 29
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryUsageStatsLoader;->loadInBackground()Landroid/os/BatteryUsageStats;

    move-result-object p0

    return-object p0
.end method

.method protected onDiscardResult(Landroid/os/BatteryUsageStats;)V
    .locals 0

    return-void
.end method

.method protected bridge synthetic onDiscardResult(Ljava/lang/Object;)V
    .locals 0

    .line 29
    check-cast p1, Landroid/os/BatteryUsageStats;

    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/BatteryUsageStatsLoader;->onDiscardResult(Landroid/os/BatteryUsageStats;)V

    return-void
.end method
