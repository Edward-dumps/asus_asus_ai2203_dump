.class public Lcom/android/settings/accelerateapps/OptiFlexUtil;
.super Ljava/lang/Object;
.source "OptiFlexUtil.java"


# static fields
.field private static final DEBUG:Z

.field private static mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mMaxListSize:I

.field private static final mMaxListSizeArray:[I

.field private static final mMaxListSizePropArray:[Ljava/lang/String;

.field private static mMaxListSizeUpdated:Z

.field private static final mTotalRamRangeArray:[I

.field public static sSharePrefChecked:Z


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 25
    sget-boolean v0, Lcom/android/settings/accelerateapps/AccelerateAppsController;->DEBUG:Z

    sput-boolean v0, Lcom/android/settings/accelerateapps/OptiFlexUtil;->DEBUG:Z

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settings/accelerateapps/OptiFlexUtil;->mList:Ljava/util/List;

    const/4 v0, 0x0

    .line 37
    sput-boolean v0, Lcom/android/settings/accelerateapps/OptiFlexUtil;->sSharePrefChecked:Z

    const/4 v1, 0x6

    new-array v2, v1, [I

    .line 83
    fill-array-data v2, :array_0

    sput-object v2, Lcom/android/settings/accelerateapps/OptiFlexUtil;->mTotalRamRangeArray:[I

    const-string v3, "persist.sys.optiflex.maxlist.0gb"

    const-string v4, "persist.sys.optiflex.maxlist.4gb"

    const-string v5, "persist.sys.optiflex.maxlist.4gb"

    const-string v6, "persist.sys.optiflex.maxlist.6gb"

    const-string v7, "persist.sys.optiflex.maxlist.8gb"

    const-string v8, "persist.sys.optiflex.maxlist.12gb"

    .line 92
    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/settings/accelerateapps/OptiFlexUtil;->mMaxListSizePropArray:[Ljava/lang/String;

    new-array v1, v1, [I

    .line 101
    fill-array-data v1, :array_1

    sput-object v1, Lcom/android/settings/accelerateapps/OptiFlexUtil;->mMaxListSizeArray:[I

    .line 134
    sput v0, Lcom/android/settings/accelerateapps/OptiFlexUtil;->mMaxListSize:I

    .line 135
    sput-boolean v0, Lcom/android/settings/accelerateapps/OptiFlexUtil;->mMaxListSizeUpdated:Z

    return-void

    :array_0
    .array-data 4
        0x0
        0x4
        0x5
        0x6
        0x7
        0x8
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3
        0x3
        0xa
        0xf
        0x14
    .end array-data
.end method

.method public static getDefaultList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 40
    sget-object v0, Lcom/android/settings/accelerateapps/OptiFlexUtil;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const-string v0, "ro.build.asus.sku"

    const-string v1, "WW"

    .line 42
    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CN"

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x4

    const-string v1, "jp.naver.line.android"

    const-string v2, "com.android.chrome"

    const-string v3, "com.facebook.katana"

    const-string v4, "com.google.android.gm"

    .line 47
    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    .line 53
    invoke-static {}, Lcom/android/settings/accelerateapps/OptiFlexUtil;->getMaxListSize()I

    move-result v2

    if-le v2, v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_2

    .line 56
    sget-object v3, Lcom/android/settings/accelerateapps/OptiFlexUtil;->mList:Ljava/util/List;

    aget-object v4, v1, v2

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 59
    :cond_2
    invoke-static {}, Lcom/android/settings/accelerateapps/OptiFlexUtil;->getRamRange()I

    move-result v0

    const/4 v1, 0x6

    if-lt v0, v1, :cond_3

    .line 60
    sget-object v0, Lcom/android/settings/accelerateapps/OptiFlexUtil;->mList:Ljava/util/List;

    const-string v1, "com.google.android.youtube"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    :cond_3
    :goto_2
    sget-object v0, Lcom/android/settings/accelerateapps/OptiFlexUtil;->mList:Ljava/util/List;

    return-object v0
.end method

.method public static getLastAutoListFromSettings(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 227
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "optids"

    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 229
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ","

    .line 231
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 232
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 233
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getMaxListSize()I
    .locals 5

    .line 138
    sget-boolean v0, Lcom/android/settings/accelerateapps/OptiFlexUtil;->mMaxListSizeUpdated:Z

    if-eqz v0, :cond_0

    .line 139
    sget v0, Lcom/android/settings/accelerateapps/OptiFlexUtil;->mMaxListSize:I

    return v0

    :cond_0
    const/4 v0, -0x1

    .line 142
    invoke-static {}, Lcom/android/settings/accelerateapps/OptiFlexUtil;->getRamRange()I

    move-result v1

    const/4 v2, 0x0

    .line 143
    :goto_0
    sget-object v3, Lcom/android/settings/accelerateapps/OptiFlexUtil;->mTotalRamRangeArray:[I

    array-length v4, v3

    if-ge v2, v4, :cond_2

    .line 144
    aget v4, v3, v2

    if-ne v4, v1, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-ltz v0, :cond_3

    .line 149
    array-length v2, v3

    if-ge v0, v2, :cond_3

    .line 150
    sget-object v1, Lcom/android/settings/accelerateapps/OptiFlexUtil;->mMaxListSizePropArray:[Ljava/lang/String;

    aget-object v1, v1, v0

    sget-object v2, Lcom/android/settings/accelerateapps/OptiFlexUtil;->mMaxListSizeArray:[I

    aget v0, v2, v0

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/settings/accelerateapps/OptiFlexUtil;->mMaxListSize:I

    goto :goto_2

    .line 152
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateMaxListSizeAndFreeRamBound not correct index = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", ramRange = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OptiFlexUtil"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    const/4 v0, 0x1

    .line 154
    sput-boolean v0, Lcom/android/settings/accelerateapps/OptiFlexUtil;->mMaxListSizeUpdated:Z

    .line 155
    sget v0, Lcom/android/settings/accelerateapps/OptiFlexUtil;->mMaxListSize:I

    return v0
.end method

.method public static getOptiFlexUid(ILjava/lang/String;)I
    .locals 7

    const/4 v0, 0x1

    new-array v1, v0, [I

    const v2, 0x17318

    const/4 v3, 0x0

    aput v2, v1, v3

    const-string v2, "com.asus.gamecenter"

    .line 203
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    :goto_0
    if-ge v3, v0, :cond_3

    .line 208
    aget-object v4, v2, v3

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const v4, 0x186a0

    .line 209
    rem-int v5, p0, v4

    const/16 v6, 0x2710

    if-lt v5, v6, :cond_0

    const/16 v6, 0x4e1f

    if-le v5, v6, :cond_2

    .line 211
    :cond_0
    div-int v4, p0, v4

    const/16 v5, 0x935

    if-ne v4, v5, :cond_1

    .line 213
    aget p0, v1, v3

    const p1, 0xe0c7f20

    add-int/2addr p0, p1

    return p0

    :cond_1
    if-nez v4, :cond_2

    .line 215
    aget p0, v1, v3

    return p0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return p0
.end method

.method public static getOptiFlexUid(Landroid/content/pm/ResolveInfo;)I
    .locals 1

    .line 196
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 197
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 198
    invoke-static {v0, p0}, Lcom/android/settings/accelerateapps/OptiFlexUtil;->getOptiFlexUid(ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static getRamRange()I
    .locals 9

    .line 112
    invoke-static {}, Landroid/os/Process;->getTotalMemory()J

    move-result-wide v0

    .line 113
    sget-boolean v2, Lcom/android/settings/accelerateapps/OptiFlexUtil;->DEBUG:Z

    const-string v3, "OptiFlexUtil"

    const-wide/16 v4, 0x400

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ramSize(bytes)="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ", ramSize(MB)="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v6, v0, v4

    div-long/2addr v6, v4

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-wide v6, 0xc0000000L

    cmp-long v2, v0, v6

    const/4 v6, 0x0

    if-gez v2, :cond_1

    return v6

    :cond_1
    const-wide v7, 0x100000000L

    if-ltz v2, :cond_2

    cmp-long v2, v0, v7

    if-gez v2, :cond_2

    const/4 v0, 0x4

    return v0

    :cond_2
    cmp-long v2, v0, v7

    const-wide v7, 0x140000000L

    if-ltz v2, :cond_3

    cmp-long v2, v0, v7

    if-gez v2, :cond_3

    const/4 v0, 0x5

    return v0

    :cond_3
    cmp-long v2, v0, v7

    const-wide v7, 0x1c0000000L

    if-ltz v2, :cond_4

    cmp-long v2, v0, v7

    if-gez v2, :cond_4

    const/4 v0, 0x6

    return v0

    :cond_4
    cmp-long v2, v0, v7

    const-wide v7, 0x240000000L

    if-ltz v2, :cond_5

    cmp-long v2, v0, v7

    if-gez v2, :cond_5

    const/4 v0, 0x7

    return v0

    :cond_5
    cmp-long v2, v0, v7

    if-ltz v2, :cond_6

    const/16 v0, 0x8

    return v0

    .line 127
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "no correct ram range , ramSize = "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "("

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long/2addr v0, v4

    div-long/2addr v0, v4

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " mb)"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6
.end method

.method public static isSupportOptiFlex()Z
    .locals 4

    .line 160
    invoke-static {}, Lcom/android/settings/accelerateapps/OptiFlexUtil;->getMaxListSize()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 161
    :goto_0
    sget-boolean v3, Landroid/os/Build$FEATURES;->ENABLE_OPTIFLEX:Z

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    return v1
.end method

.method public static queryResovleInfo(Ljava/util/List;Ljava/util/List;ILandroid/content/pm/PackageManager;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Landroid/content/pm/PackageManager;",
            ")V"
        }
    .end annotation

    .line 165
    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 167
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 169
    :try_start_0
    invoke-virtual {p3, v0, p2}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v0

    .line 170
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "OptiFlexUtil"

    const-string v1, "pm name not found"

    .line 173
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static queryResovleInfoByUid(Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 179
    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 181
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, -0x1

    .line 184
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 186
    :catch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "wrong uid str = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "OptiFlexUtil"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static updateAutoModeEnabledFromPieSettings(Landroid/content/Context;)V
    .locals 5

    .line 238
    sget-boolean v0, Lcom/android/settings/accelerateapps/OptiFlexUtil;->sSharePrefChecked:Z

    if-nez v0, :cond_1

    .line 240
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "optiflex_auto_selected"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v2, :cond_0

    const-string v0, "OptiFlexAutoEnabled"

    const/4 v2, 0x0

    const-string v4, "OptiFlex"

    .line 247
    invoke-virtual {p0, v4, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 249
    invoke-interface {v2, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 251
    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 255
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v1, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 258
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 261
    :cond_0
    sput-boolean v3, Lcom/android/settings/accelerateapps/OptiFlexUtil;->sSharePrefChecked:Z

    :cond_1
    return-void
.end method
