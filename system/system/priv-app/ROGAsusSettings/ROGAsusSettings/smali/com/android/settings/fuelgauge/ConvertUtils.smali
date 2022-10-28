.class public final Lcom/android/settings/fuelgauge/ConvertUtils;
.super Ljava/lang/Object;
.source "ConvertUtils.java"


# static fields
.field private static final EMPTY_BATTERY_HIST_ENTRY:Lcom/android/settings/fuelgauge/BatteryHistEntry;

.field private static final EMPTY_BATTERY_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settings/fuelgauge/BatteryHistEntry;",
            ">;"
        }
    .end annotation
.end field

.field static PERCENTAGE_OF_TOTAL_THRESHOLD:D

.field private static sIs24HourFormat:Z

.field static sLocale:Ljava/util/Locale;

.field static sLocaleForHour:Ljava/util/Locale;

.field static sSimpleDateFormat:Ljava/text/SimpleDateFormat;

.field static sSimpleDateFormatForHour:Ljava/text/SimpleDateFormat;

.field static sZoneId:Ljava/lang/String;

.field static sZoneIdForHour:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings/fuelgauge/ConvertUtils;->EMPTY_BATTERY_MAP:Ljava/util/Map;

    .line 47
    new-instance v0, Lcom/android/settings/fuelgauge/BatteryHistEntry;

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/settings/fuelgauge/BatteryHistEntry;-><init>(Landroid/content/ContentValues;)V

    sput-object v0, Lcom/android/settings/fuelgauge/ConvertUtils;->EMPTY_BATTERY_HIST_ENTRY:Lcom/android/settings/fuelgauge/BatteryHistEntry;

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 58
    sput-wide v0, Lcom/android/settings/fuelgauge/ConvertUtils;->PERCENTAGE_OF_TOTAL_THRESHOLD:D

    return-void
.end method

.method private static getDiffValue(DDD)D
    .locals 3

    cmpl-double v0, p2, p0

    const-wide/16 v1, 0x0

    if-lez v0, :cond_0

    sub-double p0, p2, p0

    goto :goto_0

    :cond_0
    move-wide p0, v1

    :goto_0
    cmpl-double v0, p4, p2

    if-lez v0, :cond_1

    sub-double v1, p4, p2

    :cond_1
    add-double/2addr p0, v1

    return-wide p0
.end method

.method private static getDiffValue(JJJ)J
    .locals 3

    cmp-long v0, p2, p0

    const-wide/16 v1, 0x0

    if-lez v0, :cond_0

    sub-long p0, p2, p0

    goto :goto_0

    :cond_0
    move-wide p0, v1

    :goto_0
    cmp-long v0, p4, p2

    if-lez v0, :cond_1

    sub-long v1, p4, p2

    :cond_1
    add-long/2addr p0, v1

    return-wide p0
.end method

.method public static getIndexedUsageMap(Landroid/content/Context;I[JLjava/util/Map;Z)Ljava/util/Map;
    .locals 37
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I[J",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settings/fuelgauge/BatteryHistEntry;",
            ">;>;Z)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/BatteryDiffEntry;",
            ">;>;"
        }
    .end annotation

    move-object/from16 v0, p3

    if-eqz v0, :cond_b

    .line 178
    invoke-interface/range {p3 .. p3}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_7

    .line 181
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    :goto_0
    move/from16 v3, p1

    if-ge v2, v3, :cond_9

    mul-int/lit8 v4, v2, 0x2

    .line 188
    aget-wide v5, p2, v4

    .line 189
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    add-int/lit8 v6, v4, 0x1

    .line 190
    aget-wide v6, p2, v6

    .line 191
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    add-int/lit8 v4, v4, 0x2

    .line 192
    aget-wide v7, p2, v4

    .line 193
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 195
    sget-object v7, Lcom/android/settings/fuelgauge/ConvertUtils;->EMPTY_BATTERY_MAP:Ljava/util/Map;

    .line 196
    invoke-interface {v0, v5, v7}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .line 198
    invoke-interface {v0, v6, v7}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    .line 200
    invoke-interface {v0, v4, v7}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 204
    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_8

    .line 205
    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_8

    .line 206
    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    goto/16 :goto_5

    .line 212
    :cond_1
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 213
    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 214
    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 215
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 218
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 220
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v1, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const-wide/16 v11, 0x0

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 224
    sget-object v14, Lcom/android/settings/fuelgauge/ConvertUtils;->EMPTY_BATTERY_HIST_ENTRY:Lcom/android/settings/fuelgauge/BatteryHistEntry;

    .line 225
    invoke-interface {v5, v13, v14}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/settings/fuelgauge/BatteryHistEntry;

    .line 227
    invoke-interface {v6, v13, v14}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v9, v16

    check-cast v9, Lcom/android/settings/fuelgauge/BatteryHistEntry;

    .line 229
    invoke-interface {v4, v13, v14}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/settings/fuelgauge/BatteryHistEntry;

    .line 231
    iget-wide v13, v15, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mForegroundUsageTimeInMs:J

    move-object/from16 v16, v4

    iget-wide v3, v9, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mForegroundUsageTimeInMs:J

    move-object/from16 v23, v5

    move-object/from16 v24, v6

    iget-wide v5, v10, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mForegroundUsageTimeInMs:J

    move-wide/from16 v17, v13

    move-wide/from16 v19, v3

    move-wide/from16 v21, v5

    .line 232
    invoke-static/range {v17 .. v22}, Lcom/android/settings/fuelgauge/ConvertUtils;->getDiffValue(JJJ)J

    move-result-wide v3

    .line 236
    iget-wide v5, v15, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mBackgroundUsageTimeInMs:J

    iget-wide v13, v9, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mBackgroundUsageTimeInMs:J

    move-object/from16 v25, v1

    iget-wide v0, v10, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mBackgroundUsageTimeInMs:J

    move-wide/from16 v17, v5

    move-wide/from16 v19, v13

    move-wide/from16 v21, v0

    .line 237
    invoke-static/range {v17 .. v22}, Lcom/android/settings/fuelgauge/ConvertUtils;->getDiffValue(JJJ)J

    move-result-wide v0

    .line 241
    iget-wide v5, v15, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mConsumePower:D

    iget-wide v13, v9, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mConsumePower:D

    move-object/from16 v27, v7

    move-object/from16 v26, v8

    iget-wide v7, v10, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mConsumePower:D

    move-wide/from16 v17, v5

    move-wide/from16 v19, v13

    move-wide/from16 v21, v7

    .line 242
    invoke-static/range {v17 .. v22}, Lcom/android/settings/fuelgauge/ConvertUtils;->getDiffValue(DDD)D

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v13, v3, v7

    if-nez v13, :cond_2

    cmp-long v7, v0, v7

    if-nez v7, :cond_2

    const-wide/16 v7, 0x0

    cmpl-double v13, v5, v7

    if-nez v13, :cond_3

    goto :goto_2

    :cond_2
    const-wide/16 v7, 0x0

    .line 253
    :cond_3
    invoke-static {v15, v9, v10}, Lcom/android/settings/fuelgauge/ConvertUtils;->selectBatteryHistEntry(Lcom/android/settings/fuelgauge/BatteryHistEntry;Lcom/android/settings/fuelgauge/BatteryHistEntry;Lcom/android/settings/fuelgauge/BatteryHistEntry;)Lcom/android/settings/fuelgauge/BatteryHistEntry;

    move-result-object v36

    if-nez v36, :cond_4

    :goto_2
    move/from16 v3, p1

    move-object/from16 v0, p3

    move-object/from16 v4, v16

    move-object/from16 v5, v23

    move-object/from16 v6, v24

    move-object/from16 v1, v25

    move-object/from16 v8, v26

    :goto_3
    move-object/from16 v7, v27

    goto/16 :goto_1

    :cond_4
    add-long v9, v3, v0

    long-to-float v9, v9

    const v10, 0x4adbba00    # 7200000.0f

    cmpl-float v13, v9, v10

    if-lez v13, :cond_5

    div-float/2addr v10, v9

    long-to-float v3, v3

    mul-float/2addr v3, v10

    .line 270
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-long v3, v3

    long-to-float v0, v0

    mul-float/2addr v0, v10

    .line 272
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-long v0, v0

    float-to-double v9, v10

    mul-double/2addr v5, v9

    :cond_5
    move-wide/from16 v32, v0

    move-wide/from16 v30, v3

    move-wide/from16 v34, v5

    add-double v11, v11, v34

    .line 276
    new-instance v0, Lcom/android/settings/fuelgauge/BatteryDiffEntry;

    move-object/from16 v28, v0

    move-object/from16 v29, p0

    invoke-direct/range {v28 .. v36}, Lcom/android/settings/fuelgauge/BatteryDiffEntry;-><init>(Landroid/content/Context;JJDLcom/android/settings/fuelgauge/BatteryHistEntry;)V

    move-object/from16 v1, v26

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v3, p1

    move-object/from16 v0, p3

    move-object v8, v1

    move-object/from16 v4, v16

    move-object/from16 v5, v23

    move-object/from16 v6, v24

    move-object/from16 v1, v25

    goto :goto_3

    :cond_6
    move-object/from16 v25, v1

    move-object v1, v8

    .line 285
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/fuelgauge/BatteryDiffEntry;

    .line 286
    invoke-virtual {v1, v11, v12}, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->setTotalConsumePower(D)V

    goto :goto_4

    :cond_7
    move-object/from16 v3, v25

    goto :goto_6

    :cond_8
    :goto_5
    move-object/from16 v25, v1

    .line 207
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v3, v25

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_6
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p3

    move-object v1, v3

    goto/16 :goto_0

    :cond_9
    move-object v3, v1

    const/4 v0, -0x1

    .line 289
    invoke-static {v0, v3}, Lcom/android/settings/fuelgauge/ConvertUtils;->insert24HoursData(ILjava/util/Map;)V

    if-eqz p4, :cond_a

    .line 291
    invoke-static {v3}, Lcom/android/settings/fuelgauge/ConvertUtils;->purgeLowPercentageAndFakeData(Ljava/util/Map;)V

    :cond_a
    return-object v3

    .line 179
    :cond_b
    :goto_7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method static getLocale(Landroid/content/Context;)Ljava/util/Locale;
    .locals 1

    if-nez p0, :cond_0

    .line 368
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    return-object p0

    .line 371
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 372
    invoke-virtual {p0}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object p0

    goto :goto_0

    .line 373
    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static insert24HoursData(ILjava/util/Map;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/BatteryDiffEntry;",
            ">;>;)V"
        }
    .end annotation

    .line 299
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 302
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-wide/16 v2, 0x0

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 303
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/fuelgauge/BatteryDiffEntry;

    .line 304
    iget-object v6, v5, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->mBatteryHistEntry:Lcom/android/settings/fuelgauge/BatteryHistEntry;

    invoke-virtual {v6}, Lcom/android/settings/fuelgauge/BatteryHistEntry;->getKey()Ljava/lang/String;

    move-result-object v6

    .line 305
    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settings/fuelgauge/BatteryDiffEntry;

    if-nez v7, :cond_1

    .line 308
    invoke-virtual {v5}, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->clone()Lcom/android/settings/fuelgauge/BatteryDiffEntry;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 311
    :cond_1
    iget-wide v8, v7, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->mForegroundUsageTimeInMs:J

    iget-wide v10, v5, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->mForegroundUsageTimeInMs:J

    add-long/2addr v8, v10

    iput-wide v8, v7, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->mForegroundUsageTimeInMs:J

    .line 313
    iget-wide v8, v7, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->mBackgroundUsageTimeInMs:J

    iget-wide v10, v5, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->mBackgroundUsageTimeInMs:J

    add-long/2addr v8, v10

    iput-wide v8, v7, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->mBackgroundUsageTimeInMs:J

    .line 315
    iget-wide v8, v7, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->mConsumePower:D

    iget-wide v10, v5, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->mConsumePower:D

    add-double/2addr v8, v10

    iput-wide v8, v7, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->mConsumePower:D

    .line 317
    :goto_1
    iget-wide v5, v5, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->mConsumePower:D

    add-double/2addr v2, v5

    goto :goto_0

    .line 320
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 322
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/fuelgauge/BatteryDiffEntry;

    .line 323
    invoke-virtual {v4, v2, v3}, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->setTotalConsumePower(D)V

    goto :goto_2

    .line 325
    :cond_3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static purgeLowPercentageAndFakeData(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/BatteryDiffEntry;",
            ">;>;)V"
        }
    .end annotation

    .line 331
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 332
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 333
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 334
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/fuelgauge/BatteryDiffEntry;

    .line 335
    invoke-virtual {v1}, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->getPercentOfTotal()D

    move-result-wide v2

    sget-wide v4, Lcom/android/settings/fuelgauge/ConvertUtils;->PERCENTAGE_OF_TOTAL_THRESHOLD:D

    cmpg-double v2, v2, v4

    if-ltz v2, :cond_2

    .line 336
    invoke-virtual {v1}, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "fake_package"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 337
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_3
    return-void
.end method

.method private static selectBatteryHistEntry(Lcom/android/settings/fuelgauge/BatteryHistEntry;Lcom/android/settings/fuelgauge/BatteryHistEntry;Lcom/android/settings/fuelgauge/BatteryHistEntry;)Lcom/android/settings/fuelgauge/BatteryHistEntry;
    .locals 1

    if-eqz p0, :cond_0

    .line 355
    sget-object v0, Lcom/android/settings/fuelgauge/ConvertUtils;->EMPTY_BATTERY_HIST_ENTRY:Lcom/android/settings/fuelgauge/BatteryHistEntry;

    if-eq p0, v0, :cond_0

    return-object p0

    :cond_0
    if-eqz p1, :cond_1

    .line 357
    sget-object p0, Lcom/android/settings/fuelgauge/ConvertUtils;->EMPTY_BATTERY_HIST_ENTRY:Lcom/android/settings/fuelgauge/BatteryHistEntry;

    if-eq p1, p0, :cond_1

    return-object p1

    :cond_1
    if-eqz p2, :cond_2

    .line 360
    sget-object p0, Lcom/android/settings/fuelgauge/ConvertUtils;->EMPTY_BATTERY_HIST_ENTRY:Lcom/android/settings/fuelgauge/BatteryHistEntry;

    if-eq p2, p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    return-object p2
.end method

.method public static utcToLocalTime(Landroid/content/Context;J)Ljava/lang/String;
    .locals 2

    .line 139
    invoke-static {p0}, Lcom/android/settings/fuelgauge/ConvertUtils;->getLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object p0

    .line 140
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    .line 141
    sget-object v1, Lcom/android/settings/fuelgauge/ConvertUtils;->sZoneId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/settings/fuelgauge/ConvertUtils;->sLocale:Ljava/util/Locale;

    .line 142
    invoke-virtual {p0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/settings/fuelgauge/ConvertUtils;->sSimpleDateFormat:Ljava/text/SimpleDateFormat;

    if-nez v1, :cond_1

    .line 144
    :cond_0
    sput-object p0, Lcom/android/settings/fuelgauge/ConvertUtils;->sLocale:Ljava/util/Locale;

    .line 145
    sput-object v0, Lcom/android/settings/fuelgauge/ConvertUtils;->sZoneId:Ljava/lang/String;

    .line 146
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MMM dd,yyyy HH:mm:ss"

    invoke-direct {v0, v1, p0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/android/settings/fuelgauge/ConvertUtils;->sSimpleDateFormat:Ljava/text/SimpleDateFormat;

    .line 149
    :cond_1
    sget-object p0, Lcom/android/settings/fuelgauge/ConvertUtils;->sSimpleDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static utcToLocalTimeHour(Landroid/content/Context;JZ)Ljava/lang/String;
    .locals 2

    .line 155
    invoke-static {p0}, Lcom/android/settings/fuelgauge/ConvertUtils;->getLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object p0

    .line 156
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    .line 157
    sget-object v1, Lcom/android/settings/fuelgauge/ConvertUtils;->sZoneIdForHour:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/settings/fuelgauge/ConvertUtils;->sLocaleForHour:Ljava/util/Locale;

    .line 158
    invoke-virtual {p0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/android/settings/fuelgauge/ConvertUtils;->sIs24HourFormat:Z

    if-ne v1, p3, :cond_0

    sget-object v1, Lcom/android/settings/fuelgauge/ConvertUtils;->sSimpleDateFormatForHour:Ljava/text/SimpleDateFormat;

    if-nez v1, :cond_2

    .line 161
    :cond_0
    sput-object p0, Lcom/android/settings/fuelgauge/ConvertUtils;->sLocaleForHour:Ljava/util/Locale;

    .line 162
    sput-object v0, Lcom/android/settings/fuelgauge/ConvertUtils;->sZoneIdForHour:Ljava/lang/String;

    .line 163
    sput-boolean p3, Lcom/android/settings/fuelgauge/ConvertUtils;->sIs24HourFormat:Z

    .line 164
    new-instance p3, Ljava/text/SimpleDateFormat;

    .line 165
    sget-boolean v0, Lcom/android/settings/fuelgauge/ConvertUtils;->sIs24HourFormat:Z

    if-eqz v0, :cond_1

    const-string v0, "HH"

    goto :goto_0

    :cond_1
    const-string v0, "h"

    :goto_0
    invoke-direct {p3, v0, p0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object p3, Lcom/android/settings/fuelgauge/ConvertUtils;->sSimpleDateFormatForHour:Ljava/text/SimpleDateFormat;

    .line 167
    :cond_2
    sget-object p3, Lcom/android/settings/fuelgauge/ConvertUtils;->sSimpleDateFormatForHour:Ljava/text/SimpleDateFormat;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p3, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    .line 168
    invoke-virtual {p1, p0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
