.class public Lcom/android/settings/deviceinfo/StorageVolumePreference;
.super Landroidx/preference/Preference;
.source "StorageVolumePreference.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mColorTintList:Landroid/content/res/ColorStateList;

.field private final mStorageManager:Landroid/os/storage/StorageManager;

.field private final mUnmountListener:Landroid/view/View$OnClickListener;

.field private mUsedPercent:I

.field private final mVolume:Landroid/os/storage/VolumeInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    const-class v0, Lcom/android/settings/deviceinfo/StorageVolumePreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/deviceinfo/StorageVolumePreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/storage/VolumeInfo;J)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 59
    invoke-direct/range {p0 .. p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    .line 54
    iput v0, v1, Lcom/android/settings/deviceinfo/StorageVolumePreference;->mUsedPercent:I

    .line 156
    new-instance v4, Lcom/android/settings/deviceinfo/StorageVolumePreference$1;

    invoke-direct {v4, v1}, Lcom/android/settings/deviceinfo/StorageVolumePreference$1;-><init>(Lcom/android/settings/deviceinfo/StorageVolumePreference;)V

    iput-object v4, v1, Lcom/android/settings/deviceinfo/StorageVolumePreference;->mUnmountListener:Landroid/view/View$OnClickListener;

    .line 61
    const-class v4, Landroid/os/storage/StorageManager;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/storage/StorageManager;

    iput-object v4, v1, Lcom/android/settings/deviceinfo/StorageVolumePreference;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 62
    iput-object v3, v1, Lcom/android/settings/deviceinfo/StorageVolumePreference;->mVolume:Landroid/os/storage/VolumeInfo;

    const v5, 0x1010429

    .line 63
    invoke-static {v2, v5}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v5

    iput-object v5, v1, Lcom/android/settings/deviceinfo/StorageVolumePreference;->mColorTintList:Landroid/content/res/ColorStateList;

    .line 65
    sget v5, Lcom/android/settings/R$layout;->storage_volume:I

    invoke-virtual {v1, v5}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 67
    invoke-virtual/range {p2 .. p2}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v4, v3}, Landroid/os/storage/StorageManager;->getBestVolumeDescription(Landroid/os/storage/VolumeInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 72
    invoke-virtual/range {p2 .. p2}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "private"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_0

    .line 73
    sget v4, Lcom/android/settings/R$drawable;->ic_storage:I

    invoke-virtual {v2, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move v7, v5

    goto :goto_0

    .line 75
    :cond_0
    sget v4, Lcom/android/settings/R$drawable;->ic_sim_sd:I

    invoke-virtual {v2, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move v7, v6

    .line 79
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 81
    invoke-virtual/range {p2 .. p2}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v7

    .line 85
    invoke-virtual/range {p2 .. p2}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v0

    const-wide/16 v8, 0x0

    if-ne v0, v6, :cond_2

    .line 86
    const-class v0, Landroid/app/usage/StorageStatsManager;

    .line 87
    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/StorageStatsManager;

    .line 89
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/app/usage/StorageStatsManager;->getTotalBytes(Ljava/lang/String;)J

    move-result-wide v10
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    const-wide v12, 0xe8d4a51000L

    cmp-long v12, v10, v12

    if-ltz v12, :cond_1

    .line 91
    :try_start_1
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v12

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v10
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    add-long/2addr v12, v10

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_1
    move-wide v12, v10

    .line 93
    :goto_1
    :try_start_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/app/usage/StorageStatsManager;->getFreeBytes(Ljava/lang/String;)J

    move-result-wide v10
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    sub-long v14, v12, v10

    goto :goto_4

    :catch_1
    move-exception v0

    move-wide v10, v12

    goto :goto_2

    :catch_2
    move-exception v0

    move-wide/from16 v10, p3

    .line 96
    :goto_2
    sget-object v12, Lcom/android/settings/deviceinfo/StorageVolumePreference;->TAG:Ljava/lang/String;

    invoke-static {v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-wide v14, v8

    move-wide v12, v10

    move-wide v10, v14

    goto :goto_4

    :cond_2
    cmp-long v0, p3, v8

    if-gtz v0, :cond_3

    .line 102
    invoke-virtual {v7}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v10

    goto :goto_3

    :cond_3
    move-wide/from16 v10, p3

    .line 104
    :goto_3
    invoke-virtual {v7}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v12

    sub-long v14, v10, v12

    move-wide/from16 v16, v10

    move-wide v10, v12

    move-wide/from16 v12, v16

    .line 108
    :goto_4
    invoke-static {v2, v14, v15}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 110
    invoke-static {v12, v13}, Lcom/android/settingslib/deviceinfo/StorageMeasurement;->roundStorageSize(J)J

    move-result-wide v8

    invoke-static {v2, v8, v9}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    .line 111
    sget v9, Lcom/android/settings/R$string;->storage_volume_summary:I

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v5

    const/4 v5, 0x1

    aput-object v8, v6, v5

    invoke-virtual {v2, v9, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const-wide/16 v5, 0x0

    cmp-long v0, v12, v5

    if-lez v0, :cond_4

    const-wide/16 v5, 0x64

    mul-long/2addr v14, v5

    .line 113
    div-long/2addr v14, v12

    long-to-int v0, v14

    iput v0, v1, Lcom/android/settings/deviceinfo/StorageVolumePreference;->mUsedPercent:I

    .line 116
    :cond_4
    iget-object v0, v1, Lcom/android/settings/deviceinfo/StorageVolumePreference;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v7}, Landroid/os/storage/StorageManager;->getStorageLowBytes(Ljava/io/File;)J

    move-result-wide v5

    cmp-long v0, v10, v5

    if-gez v0, :cond_7

    const v0, 0x1010543

    .line 117
    invoke-static {v2, v0}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/StorageVolumePreference;->mColorTintList:Landroid/content/res/ColorStateList;

    .line 118
    sget v0, Lcom/android/settings/R$drawable;->ic_warning_24dp:I

    invoke-virtual {v2, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 119
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 120
    iget-object v2, v1, Lcom/android/settings/deviceinfo/StorageVolumePreference;->mColorTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    move-object v4, v0

    goto :goto_5

    .line 124
    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/storage/VolumeInfo;->getStateDescription()I

    move-result v5

    invoke-virtual {v1, v5}, Landroidx/preference/Preference;->setSummary(I)V

    .line 125
    invoke-virtual/range {p2 .. p2}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v5

    const/4 v6, 0x6

    if-ne v5, v6, :cond_6

    if-eqz v7, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "ext_media_status_unsupported"

    const-string v7, "string"

    const-string v8, "android"

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 126
    :cond_6
    iput v0, v1, Lcom/android/settings/deviceinfo/StorageVolumePreference;->mUsedPercent:I

    .line 129
    :cond_7
    :goto_5
    invoke-virtual {v1, v4}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 131
    invoke-virtual/range {p2 .. p2}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v0

    if-nez v0, :cond_8

    .line 132
    invoke-virtual/range {p2 .. p2}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 133
    sget v0, Lcom/android/settings/R$layout;->preference_storage_action:I

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setWidgetLayoutResource(I)V

    :cond_8
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/deviceinfo/StorageVolumePreference;)Landroid/os/storage/VolumeInfo;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreference;->mVolume:Landroid/os/storage/VolumeInfo;

    return-object p0
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 3

    .line 139
    sget v0, Lcom/android/settings/R$id;->unmount:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 141
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreference;->mUnmountListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const v0, 0x102000d

    .line 144
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 145
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreference;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreference;->mUsedPercent:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    const/4 v1, 0x0

    .line 146
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 147
    iget v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreference;->mUsedPercent:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 148
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreference;->mColorTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    .line 150
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 153
    :goto_0
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    return-void
.end method
