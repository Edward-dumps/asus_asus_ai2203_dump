.class Lcom/android/settings/fuelgauge/PowerUsageAdvanced$BatteryHistoryLoaderCallbacks;
.super Ljava/lang/Object;
.source "PowerUsageAdvanced.java"

# interfaces
.implements Landroidx/loader/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fuelgauge/PowerUsageAdvanced;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BatteryHistoryLoaderCallbacks"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
        "Ljava/util/Map<",
        "Ljava/lang/Long;",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "Lcom/android/settings/fuelgauge/BatteryHistEntry;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field private mRefreshType:I

.field final synthetic this$0:Lcom/android/settings/fuelgauge/PowerUsageAdvanced;


# direct methods
.method private constructor <init>(Lcom/android/settings/fuelgauge/PowerUsageAdvanced;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced$BatteryHistoryLoaderCallbacks;->this$0:Lcom/android/settings/fuelgauge/PowerUsageAdvanced;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/fuelgauge/PowerUsageAdvanced;Lcom/android/settings/fuelgauge/PowerUsageAdvanced$1;)V
    .locals 0

    .line 212
    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/PowerUsageAdvanced$BatteryHistoryLoaderCallbacks;-><init>(Lcom/android/settings/fuelgauge/PowerUsageAdvanced;)V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroidx/loader/content/Loader;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroidx/loader/content/Loader<",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settings/fuelgauge/BatteryHistEntry;",
            ">;>;>;"
        }
    .end annotation

    const-string p1, "refresh_type"

    .line 220
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced$BatteryHistoryLoaderCallbacks;->mRefreshType:I

    .line 221
    new-instance p1, Lcom/android/settings/fuelgauge/BatteryHistoryLoader;

    iget-object p0, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced$BatteryHistoryLoaderCallbacks;->this$0:Lcom/android/settings/fuelgauge/PowerUsageAdvanced;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/android/settings/fuelgauge/BatteryHistoryLoader;-><init>(Landroid/content/Context;)V

    return-object p1
.end method

.method public bridge synthetic onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 212
    check-cast p2, Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/fuelgauge/PowerUsageAdvanced$BatteryHistoryLoaderCallbacks;->onLoadFinished(Landroidx/loader/content/Loader;Ljava/util/Map;)V

    return-void
.end method

.method public onLoadFinished(Landroidx/loader/content/Loader;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settings/fuelgauge/BatteryHistEntry;",
            ">;>;>;",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settings/fuelgauge/BatteryHistEntry;",
            ">;>;)V"
        }
    .end annotation

    .line 227
    iget-object p1, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced$BatteryHistoryLoaderCallbacks;->this$0:Lcom/android/settings/fuelgauge/PowerUsageAdvanced;

    iput-object p2, p1, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mBatteryHistoryMap:Ljava/util/Map;

    .line 228
    iget p0, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced$BatteryHistoryLoaderCallbacks;->mRefreshType:I

    invoke-virtual {p1, p0}, Lcom/android/settings/fuelgauge/PowerUsageBase;->onLoadFinished(I)V

    return-void
.end method

.method public onLoaderReset(Landroidx/loader/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settings/fuelgauge/BatteryHistEntry;",
            ">;>;>;)V"
        }
    .end annotation

    return-void
.end method
