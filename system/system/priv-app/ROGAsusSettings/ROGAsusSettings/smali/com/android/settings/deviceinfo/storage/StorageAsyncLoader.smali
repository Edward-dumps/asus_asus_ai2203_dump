.class public Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;
.super Lcom/android/settingslib/utils/AsyncLoaderCompat;
.source "StorageAsyncLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$ResultHandler;,
        Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$StorageResult;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settingslib/utils/AsyncLoaderCompat<",
        "Landroid/util/SparseArray<",
        "Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$StorageResult;",
        ">;>;"
    }
.end annotation


# instance fields
.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mSeenPackages:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mStatsManager:Lcom/android/settingslib/applications/StorageStatsSource;

.field private mUserManager:Landroid/os/UserManager;

.field private mUuid:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$VYQEs_hKleBHaSXrXJEAnhbrFic(Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;->lambda$getStorageResultsForUsers$0(Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;)I

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/UserManager;Ljava/lang/String;Lcom/android/settingslib/applications/StorageStatsSource;Landroid/content/pm/PackageManager;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/android/settingslib/utils/AsyncLoaderCompat;-><init>(Landroid/content/Context;)V

    .line 66
    iput-object p2, p0, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;->mUserManager:Landroid/os/UserManager;

    .line 67
    iput-object p3, p0, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;->mUuid:Ljava/lang/String;

    .line 68
    iput-object p4, p0, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;->mStatsManager:Lcom/android/settingslib/applications/StorageStatsSource;

    .line 69
    iput-object p5, p0, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    return-void
.end method

.method private getAppsAndGamesSize(I)Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$StorageResult;
    .locals 18

    move-object/from16 v1, p0

    const-string v2, "StorageAsyncLoader"

    const-string v0, "Loading apps"

    .line 141
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v0, v1, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v3, 0x0

    move/from16 v4, p1

    .line 143
    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getInstalledApplicationsAsUser(II)Ljava/util/List;

    move-result-object v5

    .line 144
    new-instance v6, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$StorageResult;

    invoke-direct {v6}, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$StorageResult;-><init>()V

    .line 145
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v7

    .line 146
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    :goto_0
    if-ge v3, v8, :cond_5

    .line 147
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 151
    :try_start_0
    iget-object v9, v1, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;->mStatsManager:Lcom/android/settingslib/applications/StorageStatsSource;

    iget-object v10, v1, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;->mUuid:Ljava/lang/String;

    iget-object v11, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10, v11, v7}, Lcom/android/settingslib/applications/StorageStatsSource;->getStatsForPackage(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;

    move-result-object v9
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    invoke-interface {v9}, Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;->getDataBytes()J

    move-result-wide v10

    .line 159
    iget-object v12, v1, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;->mStatsManager:Lcom/android/settingslib/applications/StorageStatsSource;

    iget-object v13, v1, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;->mUuid:Ljava/lang/String;

    iget v14, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v12, v13, v14}, Lcom/android/settingslib/applications/StorageStatsSource;->getCacheQuotaBytes(Ljava/lang/String;I)J

    move-result-wide v12

    .line 160
    invoke-interface {v9}, Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;->getCacheBytes()J

    move-result-wide v14

    .line 161
    invoke-interface {v9}, Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;->getCodeBytes()J

    move-result-wide v16

    add-long v10, v10, v16

    cmp-long v16, v12, v14

    if-gez v16, :cond_0

    sub-long/2addr v10, v14

    add-long/2addr v10, v12

    .line 172
    :cond_0
    iget-object v12, v1, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;->mSeenPackages:Landroid/util/ArraySet;

    iget-object v13, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 173
    iget-wide v12, v6, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$StorageResult;->duplicateCodeSize:J

    invoke-interface {v9}, Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;->getCodeBytes()J

    move-result-wide v14

    add-long/2addr v12, v14

    iput-wide v12, v6, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$StorageResult;->duplicateCodeSize:J

    goto :goto_1

    .line 175
    :cond_1
    iget-object v9, v1, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;->mSeenPackages:Landroid/util/ArraySet;

    iget-object v12, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v12}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 178
    :goto_1
    iget v9, v0, Landroid/content/pm/ApplicationInfo;->category:I

    if-eqz v9, :cond_4

    const/4 v12, 0x1

    if-eq v9, v12, :cond_3

    const/4 v12, 0x2

    if-eq v9, v12, :cond_3

    const/4 v12, 0x3

    if-eq v9, v12, :cond_3

    .line 189
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v9, 0x2000000

    and-int/2addr v0, v9

    if-eqz v0, :cond_2

    .line 190
    iget-wide v12, v6, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$StorageResult;->gamesSize:J

    add-long/2addr v12, v10

    iput-wide v12, v6, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$StorageResult;->gamesSize:J

    goto :goto_2

    .line 193
    :cond_2
    iget-wide v12, v6, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$StorageResult;->allAppsExceptGamesSize:J

    add-long/2addr v12, v10

    iput-wide v12, v6, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$StorageResult;->allAppsExceptGamesSize:J

    goto :goto_2

    .line 185
    :cond_3
    iget-wide v12, v6, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$StorageResult;->allAppsExceptGamesSize:J

    add-long/2addr v12, v10

    iput-wide v12, v6, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$StorageResult;->allAppsExceptGamesSize:J

    goto :goto_2

    .line 180
    :cond_4
    iget-wide v12, v6, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$StorageResult;->gamesSize:J

    add-long/2addr v12, v10

    iput-wide v12, v6, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$StorageResult;->gamesSize:J

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v9, "App unexpectedly not found"

    .line 154
    invoke-static {v2, v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    const-string v0, "Loading external stats"

    .line 198
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :try_start_1
    iget-object v0, v1, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;->mStatsManager:Lcom/android/settingslib/applications/StorageStatsSource;

    iget-object v1, v1, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;->mUuid:Ljava/lang/String;

    .line 201
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    .line 200
    invoke-virtual {v0, v1, v3}, Lcom/android/settingslib/applications/StorageStatsSource;->getExternalStorageStats(Ljava/lang/String;Landroid/os/UserHandle;)Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;

    move-result-object v0

    iput-object v0, v6, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$StorageResult;->externalStats:Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    .line 203
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    const-string v0, "Obtaining result completed"

    .line 205
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6
.end method

.method private getFilesSize(ILandroid/net/Uri;Landroid/os/Bundle;)J
    .locals 5

    const-wide/16 v0, 0x0

    .line 119
    :try_start_0
    invoke-virtual {p0}, Landroidx/loader/content/Loader;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 120
    invoke-virtual {p0}, Landroidx/loader/content/Loader;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 122
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    const/4 v4, 0x0

    .line 119
    invoke-virtual {v2, p0, v4, v3}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "sum(_size)"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {p0, p2, p1, p3, v2}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p0

    if-nez p0, :cond_1

    if-eqz p0, :cond_0

    .line 137
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_0
    return-wide v0

    .line 136
    :cond_1
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 137
    :cond_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-wide v0

    :catchall_0
    move-exception p1

    .line 128
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1

    .line 124
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Not able to get Context for user ID "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "StorageAsyncLoader"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v0
.end method

.method private getStorageResultsForUsers()Landroid/util/SparseArray;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$StorageResult;",
            ">;"
        }
    .end annotation

    .line 78
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;->mSeenPackages:Landroid/util/ArraySet;

    .line 79
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 80
    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    .line 83
    sget-object v2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$$ExternalSyntheticLambda0;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 86
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 87
    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v3}, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;->getAppsAndGamesSize(I)Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$StorageResult;

    move-result-object v3

    .line 89
    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    sget-object v5, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-direct {p0, v4, v5, v6}, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;->getFilesSize(ILandroid/net/Uri;Landroid/os/Bundle;)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$StorageResult;->imagesSize:J

    .line 91
    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    sget-object v5, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v4, v5, v6}, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;->getFilesSize(ILandroid/net/Uri;Landroid/os/Bundle;)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$StorageResult;->videosSize:J

    .line 93
    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    sget-object v5, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v4, v5, v6}, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;->getFilesSize(ILandroid/net/Uri;Landroid/os/Bundle;)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$StorageResult;->audioSize:J

    .line 96
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "android:query-arg-sql-selection"

    const-string v6, "media_type!=1 AND media_type!=3 AND media_type!=2 AND mime_type IS NOT NULL"

    .line 97
    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    iget v5, v2, Landroid/content/pm/UserInfo;->id:I

    const-string v6, "external"

    .line 103
    invoke-static {v6}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 102
    invoke-direct {p0, v5, v7, v4}, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;->getFilesSize(ILandroid/net/Uri;Landroid/os/Bundle;)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$StorageResult;->documentsAndOtherSize:J

    .line 106
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const/4 v5, 0x3

    const-string v7, "android:query-arg-match-trashed"

    .line 107
    invoke-virtual {v4, v7, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 108
    iget v5, v2, Landroid/content/pm/UserInfo;->id:I

    .line 109
    invoke-static {v6}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 108
    invoke-direct {p0, v5, v6, v4}, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;->getFilesSize(ILandroid/net/Uri;Landroid/os/Bundle;)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$StorageResult;->trashSize:J

    .line 111
    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static synthetic lambda$getStorageResultsForUsers$0(Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;)I
    .locals 0

    .line 84
    iget p0, p0, Landroid/content/pm/UserInfo;->id:I

    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method


# virtual methods
.method public loadInBackground()Landroid/util/SparseArray;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$StorageResult;",
            ">;"
        }
    .end annotation

    .line 74
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;->getStorageResultsForUsers()Landroid/util/SparseArray;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 0

    .line 53
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;->loadInBackground()Landroid/util/SparseArray;

    move-result-object p0

    return-object p0
.end method

.method protected onDiscardResult(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$StorageResult;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method protected bridge synthetic onDiscardResult(Ljava/lang/Object;)V
    .locals 0

    .line 53
    check-cast p1, Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;->onDiscardResult(Landroid/util/SparseArray;)V

    return-void
.end method
