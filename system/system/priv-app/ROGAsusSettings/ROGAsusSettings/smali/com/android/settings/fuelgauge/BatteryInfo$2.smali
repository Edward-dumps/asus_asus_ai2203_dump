.class Lcom/android/settings/fuelgauge/BatteryInfo$2;
.super Landroid/os/AsyncTask;
.source "BatteryInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fuelgauge/BatteryInfo;->getBatteryInfo(Landroid/content/Context;Lcom/android/settings/fuelgauge/BatteryInfo$Callback;Landroid/os/BatteryUsageStats;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/android/settings/fuelgauge/BatteryInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$batteryUsageStats:Landroid/os/BatteryUsageStats;

.field final synthetic val$callback:Lcom/android/settings/fuelgauge/BatteryInfo$Callback;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$shortString:Z


# direct methods
.method constructor <init>(Landroid/os/BatteryUsageStats;Landroid/content/Context;ZLcom/android/settings/fuelgauge/BatteryInfo$Callback;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryInfo$2;->val$batteryUsageStats:Landroid/os/BatteryUsageStats;

    iput-object p2, p0, Lcom/android/settings/fuelgauge/BatteryInfo$2;->val$context:Landroid/content/Context;

    iput-boolean p3, p0, Lcom/android/settings/fuelgauge/BatteryInfo$2;->val$shortString:Z

    iput-object p4, p0, Lcom/android/settings/fuelgauge/BatteryInfo$2;->val$callback:Lcom/android/settings/fuelgauge/BatteryInfo$Callback;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/android/settings/fuelgauge/BatteryInfo;
    .locals 1

    .line 165
    iget-object p1, p0, Lcom/android/settings/fuelgauge/BatteryInfo$2;->val$batteryUsageStats:Landroid/os/BatteryUsageStats;

    if-eqz p1, :cond_0

    goto :goto_0

    .line 168
    :cond_0
    iget-object p1, p0, Lcom/android/settings/fuelgauge/BatteryInfo$2;->val$context:Landroid/content/Context;

    const-class v0, Landroid/os/BatteryStatsManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/BatteryStatsManager;

    .line 169
    invoke-virtual {p1}, Landroid/os/BatteryStatsManager;->getBatteryUsageStats()Landroid/os/BatteryUsageStats;

    move-result-object p1

    .line 171
    :goto_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryInfo$2;->val$context:Landroid/content/Context;

    iget-boolean p0, p0, Lcom/android/settings/fuelgauge/BatteryInfo$2;->val$shortString:Z

    invoke-static {v0, p1, p0}, Lcom/android/settings/fuelgauge/BatteryInfo;->getBatteryInfo(Landroid/content/Context;Landroid/os/BatteryUsageStats;Z)Lcom/android/settings/fuelgauge/BatteryInfo;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 161
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/BatteryInfo$2;->doInBackground([Ljava/lang/Void;)Lcom/android/settings/fuelgauge/BatteryInfo;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Lcom/android/settings/fuelgauge/BatteryInfo;)V
    .locals 2

    .line 176
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 177
    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryInfo$2;->val$callback:Lcom/android/settings/fuelgauge/BatteryInfo$Callback;

    invoke-interface {p0, p1}, Lcom/android/settings/fuelgauge/BatteryInfo$Callback;->onBatteryInfoLoaded(Lcom/android/settings/fuelgauge/BatteryInfo;)V

    const-string p0, "BatteryInfo"

    const-string p1, "time for callback"

    .line 178
    invoke-static {p0, p1, v0, v1}, Lcom/android/settings/fuelgauge/BatteryUtils;->logRuntime(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 161
    check-cast p1, Lcom/android/settings/fuelgauge/BatteryInfo;

    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/BatteryInfo$2;->onPostExecute(Lcom/android/settings/fuelgauge/BatteryInfo;)V

    return-void
.end method
