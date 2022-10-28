.class public Lcom/android/settings/fuelgauge/BatteryInfo;
.super Ljava/lang/Object;
.source "BatteryInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fuelgauge/BatteryInfo$BatteryDataParser;,
        Lcom/android/settings/fuelgauge/BatteryInfo$Callback;
    }
.end annotation


# instance fields
.field public averageTimeToDischarge:J

.field public batteryLevel:I

.field public batteryPercentString:Ljava/lang/String;

.field public batteryStatus:I

.field public chargeLabel:Ljava/lang/CharSequence;

.field public discharging:Z

.field public isOverheated:Z

.field private mBatteryUsageStats:Landroid/os/BatteryUsageStats;

.field private mCharging:Z

.field private mContext:Landroid/content/Context;

.field public remainingLabel:Ljava/lang/CharSequence;

.field public remainingTimeUs:J

.field public statusLabel:Ljava/lang/String;

.field public suggestionLabel:Ljava/lang/String;

.field private timePeriod:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 57
    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/BatteryInfo;->discharging:Z

    const-wide/16 v0, 0x0

    .line 59
    iput-wide v0, p0, Lcom/android/settings/fuelgauge/BatteryInfo;->remainingTimeUs:J

    const-wide/16 v0, -0x1

    .line 60
    iput-wide v0, p0, Lcom/android/settings/fuelgauge/BatteryInfo;->averageTimeToDischarge:J

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/fuelgauge/BatteryInfo;)J
    .locals 2

    .line 51
    iget-wide v0, p0, Lcom/android/settings/fuelgauge/BatteryInfo;->timePeriod:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/android/settings/fuelgauge/BatteryInfo;J)J
    .locals 0

    .line 51
    iput-wide p1, p0, Lcom/android/settings/fuelgauge/BatteryInfo;->timePeriod:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/android/settings/fuelgauge/BatteryInfo;)Z
    .locals 0

    .line 51
    iget-boolean p0, p0, Lcom/android/settings/fuelgauge/BatteryInfo;->mCharging:Z

    return p0
.end method

.method public static getBatteryInfo(Landroid/content/Context;Landroid/content/Intent;Landroid/os/BatteryUsageStats;Lcom/android/settingslib/fuelgauge/Estimate;JZ)Lcom/android/settings/fuelgauge/BatteryInfo;
    .locals 6

    .line 240
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p4

    .line 241
    new-instance v0, Lcom/android/settings/fuelgauge/BatteryInfo;

    invoke-direct {v0}, Lcom/android/settings/fuelgauge/BatteryInfo;-><init>()V

    .line 242
    iput-object p2, v0, Lcom/android/settings/fuelgauge/BatteryInfo;->mBatteryUsageStats:Landroid/os/BatteryUsageStats;

    .line 243
    invoke-static {p1}, Lcom/android/settingslib/Utils;->getBatteryLevel(Landroid/content/Intent;)I

    move-result v1

    iput v1, v0, Lcom/android/settings/fuelgauge/BatteryInfo;->batteryLevel:I

    .line 244
    invoke-static {v1}, Lcom/android/settingslib/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/fuelgauge/BatteryInfo;->batteryPercentString:Ljava/lang/String;

    const-string v1, "plugged"

    const/4 v2, 0x0

    .line 245
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, v0, Lcom/android/settings/fuelgauge/BatteryInfo;->mCharging:Z

    .line 246
    invoke-virtual {p3}, Lcom/android/settingslib/fuelgauge/Estimate;->getAverageDischargeTime()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/settings/fuelgauge/BatteryInfo;->averageTimeToDischarge:J

    const-string v1, "health"

    .line 247
    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v4, 0x3

    if-ne v1, v4, :cond_1

    move v2, v3

    :cond_1
    iput-boolean v2, v0, Lcom/android/settings/fuelgauge/BatteryInfo;->isOverheated:Z

    .line 251
    invoke-static {p0, p1}, Lcom/android/settingslib/Utils;->getBatteryStatus(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/fuelgauge/BatteryInfo;->statusLabel:Ljava/lang/String;

    const-string v1, "status"

    .line 252
    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/android/settings/fuelgauge/BatteryInfo;->batteryStatus:I

    .line 254
    iget-boolean v1, v0, Lcom/android/settings/fuelgauge/BatteryInfo;->mCharging:Z

    if-nez v1, :cond_2

    .line 255
    invoke-static {p0, p6, p3, v0}, Lcom/android/settings/fuelgauge/BatteryInfo;->updateBatteryInfoDischarging(Landroid/content/Context;ZLcom/android/settingslib/fuelgauge/Estimate;Lcom/android/settings/fuelgauge/BatteryInfo;)V

    goto :goto_1

    .line 257
    :cond_2
    invoke-static {p0, p1, p2, v0}, Lcom/android/settings/fuelgauge/BatteryInfo;->updateBatteryInfoCharging(Landroid/content/Context;Landroid/content/Intent;Landroid/os/BatteryUsageStats;Lcom/android/settings/fuelgauge/BatteryInfo;)V

    :goto_1
    const-string p0, "BatteryInfo"

    const-string p1, "time for getBatteryInfo"

    .line 260
    invoke-static {p0, p1, p4, p5}, Lcom/android/settings/fuelgauge/BatteryUtils;->logRuntime(Ljava/lang/String;Ljava/lang/String;J)V

    return-object v0
.end method

.method public static getBatteryInfo(Landroid/content/Context;Landroid/os/BatteryUsageStats;Z)Lcom/android/settings/fuelgauge/BatteryInfo;
    .locals 16

    move-object/from16 v0, p0

    .line 189
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "BatteryInfo"

    const-string v4, "time for getStats"

    .line 190
    invoke-static {v3, v4, v1, v2}, Lcom/android/settings/fuelgauge/BatteryUtils;->logRuntime(Ljava/lang/String;Ljava/lang/String;J)V

    .line 192
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 194
    invoke-static/range {p0 .. p0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/settings/overlay/FeatureFactory;->getPowerUsageFeatureProvider(Landroid/content/Context;)Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    move-result-object v4

    .line 196
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/android/settingslib/utils/PowerUtil;->convertMsToUs(J)J

    move-result-wide v5

    .line 198
    new-instance v7, Landroid/content/IntentFilter;

    const-string v8, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x0

    invoke-virtual {v0, v8, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v7

    const-string v8, "plugged"

    const/4 v9, -0x1

    .line 202
    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    if-nez v8, :cond_0

    const/4 v8, 0x1

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    :goto_0
    if-eqz v8, :cond_1

    if-eqz v4, :cond_1

    .line 205
    invoke-interface {v4, v0}, Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;->isEnhancedBatteryPredictionEnabled(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 206
    invoke-interface {v4, v0}, Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;->getEnhancedBatteryPrediction(Landroid/content/Context;)Lcom/android/settingslib/fuelgauge/Estimate;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 208
    invoke-static {v0, v4}, Lcom/android/settingslib/fuelgauge/Estimate;->storeCachedEstimate(Landroid/content/Context;Lcom/android/settingslib/fuelgauge/Estimate;)V

    const-string v8, "time for enhanced BatteryInfo"

    .line 210
    invoke-static {v3, v8, v1, v2}, Lcom/android/settings/fuelgauge/BatteryUtils;->logRuntime(Ljava/lang/String;Ljava/lang/String;J)V

    move-object/from16 v0, p0

    move-object v1, v7

    move-object/from16 v2, p1

    move-object v3, v4

    move-wide v4, v5

    move/from16 v6, p2

    .line 211
    invoke-static/range {v0 .. v6}, Lcom/android/settings/fuelgauge/BatteryInfo;->getBatteryInfo(Landroid/content/Context;Landroid/content/Intent;Landroid/os/BatteryUsageStats;Lcom/android/settingslib/fuelgauge/Estimate;JZ)Lcom/android/settings/fuelgauge/BatteryInfo;

    move-result-object v0

    return-object v0

    :cond_1
    if-eqz v8, :cond_2

    .line 215
    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryUsageStats;->getBatteryTimeRemainingMs()J

    move-result-wide v8

    goto :goto_1

    :cond_2
    const-wide/16 v8, 0x0

    :goto_1
    move-wide v11, v8

    .line 216
    new-instance v4, Lcom/android/settingslib/fuelgauge/Estimate;

    const/4 v13, 0x0

    const-wide/16 v14, -0x1

    move-object v10, v4

    invoke-direct/range {v10 .. v15}, Lcom/android/settingslib/fuelgauge/Estimate;-><init>(JZJ)V

    const-string v8, "time for regular BatteryInfo"

    .line 220
    invoke-static {v3, v8, v1, v2}, Lcom/android/settings/fuelgauge/BatteryUtils;->logRuntime(Ljava/lang/String;Ljava/lang/String;J)V

    move-object/from16 v0, p0

    move-object v1, v7

    move-object/from16 v2, p1

    move-object v3, v4

    move-wide v4, v5

    move/from16 v6, p2

    .line 221
    invoke-static/range {v0 .. v6}, Lcom/android/settings/fuelgauge/BatteryInfo;->getBatteryInfo(Landroid/content/Context;Landroid/content/Intent;Landroid/os/BatteryUsageStats;Lcom/android/settingslib/fuelgauge/Estimate;JZ)Lcom/android/settings/fuelgauge/BatteryInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getBatteryInfo(Landroid/content/Context;Lcom/android/settings/fuelgauge/BatteryInfo$Callback;Landroid/os/BatteryUsageStats;Z)V
    .locals 1

    .line 161
    new-instance v0, Lcom/android/settings/fuelgauge/BatteryInfo$2;

    invoke-direct {v0, p2, p0, p3, p1}, Lcom/android/settings/fuelgauge/BatteryInfo$2;-><init>(Landroid/os/BatteryUsageStats;Landroid/content/Context;ZLcom/android/settings/fuelgauge/BatteryInfo$Callback;)V

    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    .line 180
    invoke-virtual {v0, p0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public static getBatteryInfo(Landroid/content/Context;Lcom/android/settings/fuelgauge/BatteryInfo$Callback;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 155
    invoke-static {p0, p1, v0, p2}, Lcom/android/settings/fuelgauge/BatteryInfo;->getBatteryInfo(Landroid/content/Context;Lcom/android/settings/fuelgauge/BatteryInfo$Callback;Landroid/os/BatteryUsageStats;Z)V

    return-void
.end method

.method private getStats()Landroid/os/BatteryStats;
    .locals 2

    .line 471
    new-instance v0, Lcom/android/internal/os/BatteryStatsHelper;

    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryInfo;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/internal/os/BatteryStatsHelper;-><init>(Landroid/content/Context;Z)V

    const/4 p0, 0x0

    .line 472
    invoke-virtual {v0, p0}, Lcom/android/internal/os/BatteryStatsHelper;->create(Landroid/os/Bundle;)V

    .line 473
    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    move-result-object p0

    return-object p0
.end method

.method private static updateBatteryInfoCharging(Landroid/content/Context;Landroid/content/Intent;Landroid/os/BatteryUsageStats;Lcom/android/settings/fuelgauge/BatteryInfo;)V
    .locals 9

    .line 266
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 268
    invoke-virtual {p2}, Landroid/os/BatteryUsageStats;->getChargeTimeRemainingMs()J

    move-result-wide v1

    .line 269
    invoke-static {p0}, Lcom/android/settingslib/Utils;->isSupportBatteryRemainingTime(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "batterystats"

    .line 272
    invoke-static {p2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p2

    .line 271
    invoke-static {p2}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object p2

    .line 274
    :try_start_0
    invoke-interface {p2}, Lcom/android/internal/app/IBatteryStats;->computeChargeTimeRemaining()J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    const-string v3, "BatteryInfo"

    const-string v4, "unable get charge time remaining by IBatteryStats"

    .line 276
    invoke-static {v3, v4, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    const-string p2, "status"

    const/4 v3, 0x1

    .line 280
    invoke-virtual {p1, p2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const-string v4, "asus_charger"

    const/4 v5, 0x0

    .line 282
    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 283
    iput-boolean v5, p3, Lcom/android/settings/fuelgauge/BatteryInfo;->discharging:Z

    const/4 v4, 0x0

    .line 284
    iput-object v4, p3, Lcom/android/settings/fuelgauge/BatteryInfo;->suggestionLabel:Ljava/lang/String;

    const-wide/16 v6, 0x0

    cmp-long v6, v1, v6

    const/4 v7, 0x2

    const/4 v8, 0x5

    if-lez v6, :cond_3

    if-eq p2, v8, :cond_3

    .line 287
    invoke-static {v1, v2}, Lcom/android/settingslib/utils/PowerUtil;->convertMsToUs(J)J

    move-result-wide v0

    iput-wide v0, p3, Lcom/android/settings/fuelgauge/BatteryInfo;->remainingTimeUs:J

    .line 290
    invoke-static {v0, v1}, Lcom/android/settingslib/utils/PowerUtil;->convertUsToMs(J)J

    move-result-wide v0

    long-to-double v0, v0

    .line 288
    invoke-static {p0, v0, v1, v5, v3}, Lcom/android/settingslib/utils/StringUtil;->formatElapsedTime(Landroid/content/Context;DZZ)Ljava/lang/CharSequence;

    move-result-object v0

    .line 293
    invoke-static {p2}, Lcom/android/settingslib/Utils;->isQuickCharging(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 294
    sget v1, Lcom/android/settingslib/R$string;->power_charging_duration_ac_quick_charging:I

    goto :goto_1

    .line 295
    :cond_1
    sget v1, Lcom/android/settingslib/R$string;->power_charging_duration:I

    .line 296
    :goto_1
    invoke-static {p2}, Lcom/android/settingslib/Utils;->isQuickChargingAndUpTo30W(I)Z

    move-result p2

    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    .line 297
    sget v1, Lcom/android/settingslib/R$string;->power_charging_duration_ac_hyper_charge:I

    .line 299
    :cond_2
    sget p1, Lcom/android/settingslib/R$string;->power_remaining_charging_duration_only:I

    new-array p2, v3, [Ljava/lang/Object;

    aput-object v0, p2, v5

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p3, Lcom/android/settings/fuelgauge/BatteryInfo;->remainingLabel:Ljava/lang/CharSequence;

    .line 303
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "%1$s"

    const-string p2, "^1"

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "%2$s"

    const-string p2, "^2"

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    new-array p1, v7, [Ljava/lang/CharSequence;

    iget-object p2, p3, Lcom/android/settings/fuelgauge/BatteryInfo;->batteryPercentString:Ljava/lang/String;

    aput-object p2, p1, v5

    aput-object v0, p1, v3

    .line 302
    invoke-static {p0, p1}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    iput-object p0, p3, Lcom/android/settings/fuelgauge/BatteryInfo;->chargeLabel:Ljava/lang/CharSequence;

    goto :goto_4

    .line 309
    :cond_3
    invoke-static {p2}, Lcom/android/settingslib/Utils;->isQuickCharging(I)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 310
    sget p0, Lcom/android/settingslib/R$string;->battery_info_status_quick_charging:I

    .line 311
    invoke-static {p2}, Lcom/android/settingslib/Utils;->isQuickChargingAndUpTo30W(I)Z

    move-result p2

    if-eqz p2, :cond_4

    if-eqz p1, :cond_4

    .line 312
    sget p0, Lcom/android/settingslib/R$string;->battery_info_status_hyper_charge:I

    .line 314
    :cond_4
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_5
    if-ne p2, v8, :cond_6

    .line 316
    sget p0, Lcom/android/settingslib/R$string;->battery_info_status_full:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    .line 318
    :cond_6
    sget p0, Lcom/android/settingslib/R$string;->battery_info_status_charging:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 322
    :goto_2
    iput-object v4, p3, Lcom/android/settings/fuelgauge/BatteryInfo;->remainingLabel:Ljava/lang/CharSequence;

    .line 323
    iget p1, p3, Lcom/android/settings/fuelgauge/BatteryInfo;->batteryLevel:I

    const/16 p2, 0x64

    if-ne p1, p2, :cond_7

    iget-object p0, p3, Lcom/android/settings/fuelgauge/BatteryInfo;->batteryPercentString:Ljava/lang/String;

    goto :goto_3

    .line 324
    :cond_7
    sget p1, Lcom/android/settingslib/R$string;->power_charging:I

    new-array p2, v7, [Ljava/lang/Object;

    iget-object v1, p3, Lcom/android/settings/fuelgauge/BatteryInfo;->batteryPercentString:Ljava/lang/String;

    aput-object v1, p2, v5

    .line 325
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p2, v3

    .line 324
    invoke-virtual {v0, p1, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_3
    iput-object p0, p3, Lcom/android/settings/fuelgauge/BatteryInfo;->chargeLabel:Ljava/lang/CharSequence;

    :goto_4
    return-void
.end method

.method private static updateBatteryInfoDischarging(Landroid/content/Context;ZLcom/android/settingslib/fuelgauge/Estimate;Lcom/android/settings/fuelgauge/BatteryInfo;)V
    .locals 6

    .line 331
    invoke-virtual {p2}, Lcom/android/settingslib/fuelgauge/Estimate;->getEstimateMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/settingslib/utils/PowerUtil;->convertMsToUs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-lez v2, :cond_1

    .line 333
    iput-wide v0, p3, Lcom/android/settings/fuelgauge/BatteryInfo;->remainingTimeUs:J

    .line 336
    invoke-static {v0, v1}, Lcom/android/settingslib/utils/PowerUtil;->convertUsToMs(J)J

    move-result-wide v4

    const/4 v2, 0x0

    .line 334
    invoke-static {p0, v4, v5, v3, v2}, Lcom/android/settingslib/utils/PowerUtil;->getBatteryRemainingStringFormatted(Landroid/content/Context;JLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p3, Lcom/android/settings/fuelgauge/BatteryInfo;->remainingLabel:Ljava/lang/CharSequence;

    .line 342
    invoke-static {v0, v1}, Lcom/android/settingslib/utils/PowerUtil;->convertUsToMs(J)J

    move-result-wide v3

    iget-object v5, p3, Lcom/android/settings/fuelgauge/BatteryInfo;->batteryPercentString:Ljava/lang/String;

    .line 344
    invoke-virtual {p2}, Lcom/android/settingslib/fuelgauge/Estimate;->isBasedOnUsage()Z

    move-result p2

    if-eqz p2, :cond_0

    if-nez p1, :cond_0

    const/4 v2, 0x1

    .line 340
    :cond_0
    invoke-static {p0, v3, v4, v5, v2}, Lcom/android/settingslib/utils/PowerUtil;->getBatteryRemainingStringFormatted(Landroid/content/Context;JLjava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p3, Lcom/android/settings/fuelgauge/BatteryInfo;->chargeLabel:Ljava/lang/CharSequence;

    .line 347
    invoke-static {v0, v1}, Lcom/android/settingslib/utils/PowerUtil;->convertUsToMs(J)J

    move-result-wide p1

    .line 346
    invoke-static {p0, p1, p2}, Lcom/android/settingslib/utils/PowerUtil;->getBatteryTipStringFormatted(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p3, Lcom/android/settings/fuelgauge/BatteryInfo;->suggestionLabel:Ljava/lang/String;

    goto :goto_0

    .line 349
    :cond_1
    iput-object v3, p3, Lcom/android/settings/fuelgauge/BatteryInfo;->remainingLabel:Ljava/lang/CharSequence;

    .line 350
    iput-object v3, p3, Lcom/android/settings/fuelgauge/BatteryInfo;->suggestionLabel:Ljava/lang/String;

    .line 351
    iget-object p0, p3, Lcom/android/settings/fuelgauge/BatteryInfo;->batteryPercentString:Ljava/lang/String;

    iput-object p0, p3, Lcom/android/settings/fuelgauge/BatteryInfo;->chargeLabel:Ljava/lang/CharSequence;

    :goto_0
    return-void
.end method


# virtual methods
.method public varargs bindHistory(Lcom/android/settings/widget/UsageView;[Lcom/android/settings/fuelgauge/BatteryInfo$BatteryDataParser;)V
    .locals 8

    .line 76
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 77
    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryInfo;->mContext:Landroid/content/Context;

    .line 78
    new-instance v1, Lcom/android/settings/fuelgauge/BatteryInfo$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/settings/fuelgauge/BatteryInfo$1;-><init>(Lcom/android/settings/fuelgauge/BatteryInfo;Lcom/android/settings/widget/UsageView;Landroid/content/Context;)V

    .line 137
    array-length v2, p2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    new-array v2, v2, [Lcom/android/settings/fuelgauge/BatteryInfo$BatteryDataParser;

    const/4 v4, 0x0

    move v5, v4

    .line 138
    :goto_0
    array-length v6, p2

    if-ge v5, v6, :cond_0

    .line 139
    aget-object v6, p2, v5

    aput-object v6, v2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 141
    :cond_0
    array-length p2, p2

    aput-object v1, v2, p2

    .line 142
    invoke-virtual {p0, v2}, Lcom/android/settings/fuelgauge/BatteryInfo;->parseBatteryHistory([Lcom/android/settings/fuelgauge/BatteryInfo$BatteryDataParser;)V

    .line 143
    sget p2, Lcom/android/settingslib/R$string;->charge_length_format:I

    new-array v1, v3, [Ljava/lang/Object;

    iget-wide v5, p0, Lcom/android/settings/fuelgauge/BatteryInfo;->timePeriod:J

    .line 144
    invoke-static {v0, v5, v6}, Landroid/text/format/Formatter;->formatShortElapsedTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 143
    invoke-virtual {v0, p2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 146
    iget-wide v1, p0, Lcom/android/settings/fuelgauge/BatteryInfo;->remainingTimeUs:J

    const-wide/16 v5, 0x0

    cmp-long p0, v1, v5

    if-eqz p0, :cond_1

    .line 147
    sget p0, Lcom/android/settingslib/R$string;->remaining_length_format:I

    new-array v5, v3, [Ljava/lang/Object;

    const-wide/16 v6, 0x3e8

    div-long/2addr v1, v6

    .line 148
    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatShortElapsedTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v4

    .line 147
    invoke-virtual {v0, p0, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    const-string p0, ""

    :goto_1
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/CharSequence;

    aput-object p2, v0, v4

    aput-object p0, v0, v3

    .line 150
    invoke-virtual {p1, v0}, Lcom/android/settings/widget/UsageView;->setBottomLabels([Ljava/lang/CharSequence;)V

    return-void
.end method

.method public varargs parseBatteryHistory([Lcom/android/settings/fuelgauge/BatteryInfo$BatteryDataParser;)V
    .locals 23

    move-object/from16 v0, p1

    .line 381
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/fuelgauge/BatteryInfo;->getStats()Landroid/os/BatteryStats;

    move-result-object v1

    .line 383
    invoke-virtual {v1}, Landroid/os/BatteryStats;->startIteratingHistoryLocked()Z

    move-result v2

    const/4 v3, 0x7

    const/4 v4, 0x5

    const-wide/16 v6, 0x0

    if-eqz v2, :cond_8

    .line 384
    new-instance v2, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v2}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    const/4 v8, 0x1

    move-wide v10, v6

    move-wide v12, v10

    move-wide v14, v12

    move-wide/from16 v16, v14

    move-wide/from16 v20, v16

    move/from16 v19, v8

    const/4 v9, 0x0

    const/16 v18, 0x0

    .line 385
    :goto_0
    invoke-virtual {v1, v2}, Landroid/os/BatteryStats;->getNextHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z

    move-result v22

    if-eqz v22, :cond_7

    add-int/lit8 v18, v18, 0x1

    move/from16 v22, v9

    if-eqz v19, :cond_0

    .line 389
    iget-wide v8, v2, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v20, v8

    const/16 v19, 0x0

    .line 391
    :cond_0
    iget-byte v8, v2, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    if-eq v8, v4, :cond_1

    if-ne v8, v3, :cond_5

    .line 401
    :cond_1
    iget-wide v8, v2, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    const-wide v16, 0x39ef8b000L

    add-long v14, v14, v16

    cmp-long v14, v8, v14

    if-gtz v14, :cond_2

    iget-wide v14, v2, Landroid/os/BatteryStats$HistoryItem;->time:J

    const-wide/32 v16, 0x493e0

    add-long v16, v20, v16

    cmp-long v14, v14, v16

    if-gez v14, :cond_3

    :cond_2
    move-wide v10, v6

    .line 406
    :cond_3
    iget-wide v14, v2, Landroid/os/BatteryStats$HistoryItem;->time:J

    cmp-long v16, v10, v6

    if-nez v16, :cond_4

    sub-long v10, v14, v20

    sub-long v10, v8, v10

    :cond_4
    move-wide/from16 v16, v14

    move-wide v14, v8

    .line 411
    :cond_5
    invoke-virtual {v2}, Landroid/os/BatteryStats$HistoryItem;->isDeltaData()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 413
    iget-wide v12, v2, Landroid/os/BatteryStats$HistoryItem;->time:J

    move/from16 v9, v18

    goto :goto_1

    :cond_6
    move/from16 v9, v22

    :goto_1
    const/4 v8, 0x1

    goto :goto_0

    :cond_7
    move/from16 v22, v9

    goto :goto_2

    :cond_8
    move-wide v10, v6

    move-wide v12, v10

    move-wide v14, v12

    move-wide/from16 v16, v14

    move-wide/from16 v20, v16

    const/4 v9, 0x0

    .line 417
    :goto_2
    invoke-virtual {v1}, Landroid/os/BatteryStats;->finishIteratingHistoryLocked()V

    add-long/2addr v14, v12

    sub-long v14, v14, v16

    const/4 v2, 0x0

    .line 423
    :goto_3
    array-length v8, v0

    if-ge v2, v8, :cond_9

    .line 424
    aget-object v8, v0, v2

    invoke-interface {v8, v10, v11, v14, v15}, Lcom/android/settings/fuelgauge/BatteryInfo$BatteryDataParser;->onParsingStarted(JJ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_9
    cmp-long v2, v14, v10

    if-lez v2, :cond_12

    .line 426
    invoke-virtual {v1}, Landroid/os/BatteryStats;->startIteratingHistoryLocked()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 427
    new-instance v2, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v2}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    move-wide v12, v6

    const/4 v8, 0x0

    .line 428
    :goto_4
    invoke-virtual {v1, v2}, Landroid/os/BatteryStats;->getNextHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z

    move-result v14

    if-eqz v14, :cond_12

    if-ge v8, v9, :cond_12

    .line 429
    invoke-virtual {v2}, Landroid/os/BatteryStats$HistoryItem;->isDeltaData()Z

    move-result v14

    if-eqz v14, :cond_c

    .line 430
    iget-wide v14, v2, Landroid/os/BatteryStats$HistoryItem;->time:J

    sub-long v16, v14, v16

    add-long v12, v12, v16

    sub-long v16, v12, v10

    cmp-long v18, v16, v6

    if-gez v18, :cond_a

    move-wide v5, v6

    goto :goto_5

    :cond_a
    move-wide/from16 v5, v16

    :goto_5
    const/4 v7, 0x0

    .line 436
    :goto_6
    array-length v3, v0

    if-ge v7, v3, :cond_b

    .line 437
    aget-object v3, v0, v7

    invoke-interface {v3, v5, v6, v2}, Lcom/android/settings/fuelgauge/BatteryInfo$BatteryDataParser;->onDataPoint(JLandroid/os/BatteryStats$HistoryItem;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_b
    move-wide/from16 v16, v14

    const/4 v5, 0x7

    goto :goto_b

    .line 441
    :cond_c
    iget-byte v3, v2, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v5, 0x7

    if-eq v3, v4, :cond_e

    if-ne v3, v5, :cond_d

    goto :goto_7

    :cond_d
    move-wide v6, v12

    goto :goto_9

    .line 443
    :cond_e
    :goto_7
    iget-wide v6, v2, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    cmp-long v14, v6, v10

    if-ltz v14, :cond_f

    goto :goto_8

    .line 446
    :cond_f
    iget-wide v6, v2, Landroid/os/BatteryStats$HistoryItem;->time:J

    sub-long v6, v6, v20

    add-long/2addr v6, v10

    .line 448
    :goto_8
    iget-wide v14, v2, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v16, v14

    :goto_9
    const/4 v14, 0x6

    if-eq v3, v14, :cond_11

    if-ne v3, v4, :cond_10

    sub-long/2addr v12, v6

    .line 453
    invoke-static {v12, v13}, Ljava/lang/Math;->abs(J)J

    move-result-wide v12

    const-wide/32 v14, 0x36ee80

    cmp-long v3, v12, v14

    if-lez v3, :cond_11

    :cond_10
    const/4 v3, 0x0

    .line 454
    :goto_a
    array-length v12, v0

    if-ge v3, v12, :cond_11

    .line 455
    aget-object v12, v0, v3

    invoke-interface {v12}, Lcom/android/settings/fuelgauge/BatteryInfo$BatteryDataParser;->onDataGap()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_11
    move-wide v12, v6

    :goto_b
    add-int/lit8 v8, v8, 0x1

    move v3, v5

    const-wide/16 v6, 0x0

    goto :goto_4

    .line 463
    :cond_12
    invoke-virtual {v1}, Landroid/os/BatteryStats;->finishIteratingHistoryLocked()V

    const/4 v5, 0x0

    .line 465
    :goto_c
    array-length v1, v0

    if-ge v5, v1, :cond_13

    .line 466
    aget-object v1, v0, v5

    invoke-interface {v1}, Lcom/android/settings/fuelgauge/BatteryInfo$BatteryDataParser;->onParsingDone()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    :cond_13
    return-void
.end method
