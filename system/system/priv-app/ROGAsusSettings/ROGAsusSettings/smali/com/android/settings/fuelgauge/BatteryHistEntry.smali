.class public Lcom/android/settings/fuelgauge/BatteryHistEntry;
.super Ljava/lang/Object;
.source "BatteryHistEntry.java"


# instance fields
.field public final mAppLabel:Ljava/lang/String;

.field public final mBackgroundUsageTimeInMs:J

.field public final mBatteryHealth:I

.field public final mBatteryLevel:I

.field public final mBatteryStatus:I

.field public final mBootTimestamp:J

.field public final mConsumePower:D

.field public final mConsumerType:I

.field public final mDrainType:I

.field public final mForegroundUsageTimeInMs:J

.field public final mIsHidden:Z

.field private mIsValidEntry:Z

.field private mKey:Ljava/lang/String;

.field public final mPackageName:Ljava/lang/String;

.field public final mPercentOfTotal:D

.field public final mTimestamp:J

.field public final mTotalPower:D

.field public final mUid:J

.field public final mUserId:J

.field public final mZoneId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/ContentValues;)V
    .locals 2

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 74
    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mKey:Ljava/lang/String;

    const/4 v0, 0x1

    .line 75
    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mIsValidEntry:Z

    const-string v0, "uid"

    .line 78
    invoke-direct {p0, p1, v0}, Lcom/android/settings/fuelgauge/BatteryHistEntry;->getLong(Landroid/content/ContentValues;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mUid:J

    const-string v0, "userId"

    .line 79
    invoke-direct {p0, p1, v0}, Lcom/android/settings/fuelgauge/BatteryHistEntry;->getLong(Landroid/content/ContentValues;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mUserId:J

    const-string v0, "appLabel"

    .line 80
    invoke-direct {p0, p1, v0}, Lcom/android/settings/fuelgauge/BatteryHistEntry;->getString(Landroid/content/ContentValues;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mAppLabel:Ljava/lang/String;

    const-string v0, "packageName"

    .line 81
    invoke-direct {p0, p1, v0}, Lcom/android/settings/fuelgauge/BatteryHistEntry;->getString(Landroid/content/ContentValues;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mPackageName:Ljava/lang/String;

    const-string v0, "isHidden"

    .line 82
    invoke-direct {p0, p1, v0}, Lcom/android/settings/fuelgauge/BatteryHistEntry;->getBoolean(Landroid/content/ContentValues;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mIsHidden:Z

    const-string v0, "bootTimestamp"

    .line 83
    invoke-direct {p0, p1, v0}, Lcom/android/settings/fuelgauge/BatteryHistEntry;->getLong(Landroid/content/ContentValues;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mBootTimestamp:J

    const-string v0, "timestamp"

    .line 84
    invoke-direct {p0, p1, v0}, Lcom/android/settings/fuelgauge/BatteryHistEntry;->getLong(Landroid/content/ContentValues;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mTimestamp:J

    const-string/jumbo v0, "zoneId"

    .line 85
    invoke-direct {p0, p1, v0}, Lcom/android/settings/fuelgauge/BatteryHistEntry;->getString(Landroid/content/ContentValues;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mZoneId:Ljava/lang/String;

    const-string v0, "totalPower"

    .line 86
    invoke-direct {p0, p1, v0}, Lcom/android/settings/fuelgauge/BatteryHistEntry;->getDouble(Landroid/content/ContentValues;Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mTotalPower:D

    const-string v0, "consumePower"

    .line 87
    invoke-direct {p0, p1, v0}, Lcom/android/settings/fuelgauge/BatteryHistEntry;->getDouble(Landroid/content/ContentValues;Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mConsumePower:D

    const-string v0, "percentOfTotal"

    .line 88
    invoke-direct {p0, p1, v0}, Lcom/android/settings/fuelgauge/BatteryHistEntry;->getDouble(Landroid/content/ContentValues;Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mPercentOfTotal:D

    const-string v0, "foregroundUsageTimeInMs"

    .line 89
    invoke-direct {p0, p1, v0}, Lcom/android/settings/fuelgauge/BatteryHistEntry;->getLong(Landroid/content/ContentValues;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mForegroundUsageTimeInMs:J

    const-string v0, "backgroundUsageTimeInMs"

    .line 90
    invoke-direct {p0, p1, v0}, Lcom/android/settings/fuelgauge/BatteryHistEntry;->getLong(Landroid/content/ContentValues;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mBackgroundUsageTimeInMs:J

    const-string v0, "drainType"

    .line 91
    invoke-direct {p0, p1, v0}, Lcom/android/settings/fuelgauge/BatteryHistEntry;->getInteger(Landroid/content/ContentValues;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mDrainType:I

    const-string v0, "consumerType"

    .line 92
    invoke-direct {p0, p1, v0}, Lcom/android/settings/fuelgauge/BatteryHistEntry;->getInteger(Landroid/content/ContentValues;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mConsumerType:I

    const-string v0, "batteryLevel"

    .line 93
    invoke-direct {p0, p1, v0}, Lcom/android/settings/fuelgauge/BatteryHistEntry;->getInteger(Landroid/content/ContentValues;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mBatteryLevel:I

    const-string v0, "batteryStatus"

    .line 94
    invoke-direct {p0, p1, v0}, Lcom/android/settings/fuelgauge/BatteryHistEntry;->getInteger(Landroid/content/ContentValues;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mBatteryStatus:I

    const-string v0, "batteryHealth"

    .line 95
    invoke-direct {p0, p1, v0}, Lcom/android/settings/fuelgauge/BatteryHistEntry;->getInteger(Landroid/content/ContentValues;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mBatteryHealth:I

    return-void
.end method

.method private getBoolean(Landroid/content/ContentValues;Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 276
    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    const/4 p1, 0x0

    .line 279
    iput-boolean p1, p0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mIsValidEntry:Z

    return p1
.end method

.method private getDouble(Landroid/content/ContentValues;Ljava/lang/String;)D
    .locals 1

    if-eqz p1, :cond_0

    .line 242
    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->getAsDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    return-wide p0

    :cond_0
    const/4 p1, 0x0

    .line 245
    iput-boolean p1, p0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mIsValidEntry:Z

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method private getInteger(Landroid/content/ContentValues;Ljava/lang/String;)I
    .locals 1

    if-eqz p1, :cond_0

    .line 208
    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    const/4 p1, 0x0

    .line 211
    iput-boolean p1, p0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mIsValidEntry:Z

    return p1
.end method

.method private getLong(Landroid/content/ContentValues;Ljava/lang/String;)J
    .locals 1

    if-eqz p1, :cond_0

    .line 225
    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0

    :cond_0
    const/4 p1, 0x0

    .line 228
    iput-boolean p1, p0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mIsValidEntry:Z

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method private getString(Landroid/content/ContentValues;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    .line 259
    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 262
    iput-boolean p1, p0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mIsValidEntry:Z

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 3

    .line 170
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mKey:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 171
    iget v0, p0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mConsumerType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 176
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "S|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mDrainType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mKey:Ljava/lang/String;

    goto :goto_0

    .line 179
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "U|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mUserId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mKey:Ljava/lang/String;

    goto :goto_0

    .line 173
    :cond_2
    iget-wide v0, p0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mUid:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mKey:Ljava/lang/String;

    .line 183
    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mKey:Ljava/lang/String;

    return-object p0
.end method

.method public isAppEntry()Z
    .locals 1

    .line 160
    iget p0, p0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mConsumerType:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isUserEntry()Z
    .locals 1

    .line 155
    iget p0, p0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mConsumerType:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 188
    iget-wide v0, p0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mTimestamp:J

    const/4 v2, 0x0

    .line 189
    invoke-static {v2, v0, v1}, Lcom/android/settings/fuelgauge/ConvertUtils;->utcToLocalTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 190
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nBatteryHistEntry{"

    .line 191
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x5

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mPackageName:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mAppLabel:Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    iget-wide v7, p0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mUid:J

    .line 193
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v7, 0x2

    aput-object v4, v3, v7

    iget-wide v8, p0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mUserId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v8, 0x3

    aput-object v4, v3, v8

    iget-boolean v4, p0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mIsHidden:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v9, 0x4

    aput-object v4, v3, v9

    const-string v4, "\n\tpackage=%s|label=%s|uid=%d|userId=%d|isHidden=%b"

    .line 192
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v3, v8, [Ljava/lang/Object;

    aput-object v0, v3, v5

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mZoneId:Ljava/lang/String;

    aput-object v0, v3, v6

    iget-wide v10, p0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mBootTimestamp:J

    .line 195
    invoke-static {v10, v11}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Duration;->getSeconds()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v7

    const-string v0, "\n\ttimestamp=%s|zoneId=%s|bootTimestamp=%d"

    .line 194
    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v0, v2, [Ljava/lang/Object;

    iget-wide v2, p0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mPercentOfTotal:D

    .line 197
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v0, v5

    iget-wide v2, p0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mTotalPower:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v0, v6

    iget-wide v2, p0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mConsumePower:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v0, v7

    iget-wide v2, p0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mForegroundUsageTimeInMs:J

    .line 198
    invoke-static {v2, v3}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/Duration;->getSeconds()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v8

    iget-wide v2, p0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mBackgroundUsageTimeInMs:J

    .line 199
    invoke-static {v2, v3}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/Duration;->getSeconds()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v9

    const-string v2, "\n\tusage=%f|total=%f|consume=%f|elapsedTime=%d|%d"

    .line 196
    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v0, v7, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mDrainType:I

    .line 201
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v5

    iget v2, p0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mConsumerType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v6

    const-string v2, "\n\tdrainType=%d|consumerType=%d"

    .line 200
    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v0, v8, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mBatteryLevel:I

    .line 203
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v5

    iget v2, p0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mBatteryStatus:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v6

    iget p0, p0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mBatteryHealth:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v7

    const-string p0, "\n\tbattery=%d|status=%d|health=%d\n}"

    .line 202
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
