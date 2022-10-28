.class public Lcom/android/settings/deviceinfo/StorageSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "StorageSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/StorageSettings$DiskInitFragment;,
        Lcom/android/settings/deviceinfo/StorageSettings$VolumeUnmountedFragment;,
        Lcom/android/settings/deviceinfo/StorageSettings$UnmountTask;,
        Lcom/android/settings/deviceinfo/StorageSettings$MountTask;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

.field private static sTotalInternalStorage:J


# instance fields
.field private mExternalCategory:Landroidx/preference/PreferenceCategory;

.field private mHasLaunchedPrivateVolumeSettings:Z

.field private mInternalCategory:Landroidx/preference/PreferenceCategory;

.field private mInternalSummary:Lcom/android/settings/deviceinfo/StorageSummaryPreference;

.field private final mStorageListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 565
    new-instance v0, Lcom/android/settings/deviceinfo/StorageSettings$2;

    invoke-direct {v0}, Lcom/android/settings/deviceinfo/StorageSettings$2;-><init>()V

    sput-object v0, Lcom/android/settings/deviceinfo/StorageSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 74
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 99
    iput-boolean v0, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mHasLaunchedPrivateVolumeSettings:Z

    .line 136
    new-instance v0, Lcom/android/settings/deviceinfo/StorageSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/StorageSettings$1;-><init>(Lcom/android/settings/deviceinfo/StorageSettings;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    return-void
.end method

.method static synthetic access$000(Landroid/os/storage/VolumeInfo;)Z
    .locals 0

    .line 74
    invoke-static {p0}, Lcom/android/settings/deviceinfo/StorageSettings;->isInteresting(Landroid/os/storage/VolumeInfo;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/android/settings/deviceinfo/StorageSettings;)V
    .locals 0

    .line 74
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageSettings;->refresh()V

    return-void
.end method

.method static handlePublicVolumeClick(Landroid/content/Context;Landroid/os/storage/VolumeInfo;)Z
    .locals 3

    .line 355
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->buildBrowseIntent()Landroid/content/Intent;

    move-result-object v0

    .line 356
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 357
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return v2

    .line 360
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 361
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v1, "android.os.storage.extra.VOLUME_ID"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    new-instance p1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-direct {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;

    .line 363
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    const/4 p1, -0x1

    .line 364
    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    const/16 p1, 0x2a

    .line 365
    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 366
    invoke-virtual {p0, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 367
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return v2
.end method

.method static handleStubVolumeClick(Landroid/content/Context;Landroid/os/storage/VolumeInfo;)Z
    .locals 1

    .line 345
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->buildBrowseIntent()Landroid/content/Intent;

    move-result-object v0

    .line 346
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    .line 347
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static isInteresting(Landroid/os/storage/VolumeInfo;)Z
    .locals 2

    .line 151
    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    if-eq p0, v0, :cond_0

    const/4 v1, 0x5

    if-eq p0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method

.method private declared-synchronized refresh()V
    .locals 14

    monitor-enter p0

    .line 162
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    .line 164
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 165
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mInternalCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 166
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mExternalCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 168
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mInternalCategory:Landroidx/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mInternalSummary:Lcom/android/settings/deviceinfo/StorageSummaryPreference;

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 170
    new-instance v1, Lcom/android/settingslib/deviceinfo/StorageManagerVolumeProvider;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-direct {v1, v2}, Lcom/android/settingslib/deviceinfo/StorageManagerVolumeProvider;-><init>(Landroid/os/storage/StorageManager;)V

    .line 171
    invoke-static {v1}, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;->getPrivateStorageInfo(Lcom/android/settingslib/deviceinfo/StorageVolumeProvider;)Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;

    move-result-object v1

    .line 172
    iget-wide v2, v1, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;->totalBytes:J

    .line 173
    iget-wide v4, v1, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;->freeBytes:J

    sub-long v4, v2, v4

    .line 175
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v1}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object v1

    .line 176
    invoke-static {}, Landroid/os/storage/VolumeInfo;->getDescriptionComparator()Ljava/util/Comparator;

    move-result-object v6

    invoke-static {v1, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 178
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const-wide/16 v7, 0x0

    const/4 v9, 0x1

    if-eqz v6, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/storage/VolumeInfo;

    .line 179
    invoke-virtual {v6}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v10

    if-ne v10, v9, :cond_2

    .line 181
    invoke-virtual {v6}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v9

    const/4 v10, 0x6

    if-ne v9, v10, :cond_1

    .line 182
    iget-object v9, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mInternalCategory:Landroidx/preference/PreferenceCategory;

    new-instance v10, Lcom/android/settings/deviceinfo/StorageVolumePreference;

    invoke-direct {v10, v0, v6, v7, v8}, Lcom/android/settings/deviceinfo/StorageVolumePreference;-><init>(Landroid/content/Context;Landroid/os/storage/VolumeInfo;J)V

    invoke-virtual {v9, v10}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    .line 185
    :cond_1
    sget-wide v7, Lcom/android/settings/deviceinfo/StorageSettings;->sTotalInternalStorage:J

    invoke-static {v6, v7, v8}, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;->getTotalSize(Landroid/os/storage/VolumeInfo;J)J

    move-result-wide v7

    .line 187
    iget-object v9, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mInternalCategory:Landroidx/preference/PreferenceCategory;

    new-instance v10, Lcom/android/settings/deviceinfo/StorageVolumePreference;

    invoke-direct {v10, v0, v6, v7, v8}, Lcom/android/settings/deviceinfo/StorageVolumePreference;-><init>(Landroid/content/Context;Landroid/os/storage/VolumeInfo;J)V

    invoke-virtual {v9, v10}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    .line 190
    :cond_2
    invoke-virtual {v6}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v9

    if-eqz v9, :cond_3

    .line 191
    invoke-virtual {v6}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v9

    const/4 v10, 0x5

    if-ne v9, v10, :cond_0

    .line 192
    :cond_3
    iget-object v9, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mExternalCategory:Landroidx/preference/PreferenceCategory;

    new-instance v10, Lcom/android/settings/deviceinfo/StorageVolumePreference;

    invoke-direct {v10, v0, v6, v7, v8}, Lcom/android/settings/deviceinfo/StorageVolumePreference;-><init>(Landroid/content/Context;Landroid/os/storage/VolumeInfo;J)V

    invoke-virtual {v9, v10}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    .line 198
    :cond_4
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v1}, Landroid/os/storage/StorageManager;->getVolumeRecords()Ljava/util/List;

    move-result-object v1

    .line 199
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/storage/VolumeRecord;

    .line 200
    invoke-virtual {v6}, Landroid/os/storage/VolumeRecord;->getType()I

    move-result v10

    if-ne v10, v9, :cond_5

    iget-object v10, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 201
    invoke-virtual {v6}, Landroid/os/storage/VolumeRecord;->getFsUuid()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/os/storage/StorageManager;->findVolumeByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v10

    if-nez v10, :cond_5

    .line 203
    new-instance v10, Landroidx/preference/Preference;

    invoke-direct {v10, v0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 204
    invoke-virtual {v6}, Landroid/os/storage/VolumeRecord;->getFsUuid()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 205
    invoke-virtual {v6}, Landroid/os/storage/VolumeRecord;->getNickname()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v6}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 206
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v11, "ext_media_status_missing"

    const-string v12, "string"

    const-string v13, "android"

    invoke-virtual {v6, v11, v12, v13}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v10, v6}, Landroidx/preference/Preference;->setSummary(I)V

    .line 207
    sget v6, Lcom/android/settings/R$drawable;->ic_sim_sd:I

    invoke-virtual {v10, v6}, Landroidx/preference/Preference;->setIcon(I)V

    .line 208
    iget-object v6, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mInternalCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v6, v10}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_1

    .line 213
    :cond_6
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v1}, Landroid/os/storage/StorageManager;->getDisks()Ljava/util/List;

    move-result-object v1

    .line 214
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/storage/DiskInfo;

    .line 215
    iget v10, v6, Landroid/os/storage/DiskInfo;->volumeCount:I

    if-nez v10, :cond_7

    iget-wide v10, v6, Landroid/os/storage/DiskInfo;->size:J

    cmp-long v10, v10, v7

    if-lez v10, :cond_7

    .line 216
    new-instance v10, Landroidx/preference/Preference;

    invoke-direct {v10, v0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 217
    invoke-virtual {v6}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 218
    invoke-virtual {v6}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v6}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 219
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v11, "ext_media_status_unsupported"

    const-string v12, "string"

    const-string v13, "android"

    invoke-virtual {v6, v11, v12, v13}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v10, v6}, Landroidx/preference/Preference;->setSummary(I)V

    .line 220
    sget v6, Lcom/android/settings/R$drawable;->ic_sim_sd:I

    invoke-virtual {v10, v6}, Landroidx/preference/Preference;->setIcon(I)V

    .line 221
    iget-object v6, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mExternalCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v6, v10}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_2

    .line 225
    :cond_8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v6, 0x0

    invoke-static {v1, v4, v5, v6}, Landroid/text/format/Formatter;->formatBytes(Landroid/content/res/Resources;JI)Landroid/text/format/Formatter$BytesResult;

    move-result-object v1

    .line 226
    invoke-static {v2, v3}, Lcom/android/settingslib/deviceinfo/StorageMeasurement;->roundStorageSize(J)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 227
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mInternalSummary:Lcom/android/settings/deviceinfo/StorageSummaryPreference;

    sget v3, Lcom/android/settings/R$string;->storage_size_large:I

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/CharSequence;

    iget-object v7, v1, Landroid/text/format/Formatter$BytesResult;->value:Ljava/lang/String;

    aput-object v7, v5, v6

    iget-object v1, v1, Landroid/text/format/Formatter$BytesResult;->units:Ljava/lang/String;

    aput-object v1, v5, v9

    invoke-static {v3, v5}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 231
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mInternalSummary:Lcom/android/settings/deviceinfo/StorageSummaryPreference;

    sget v2, Lcom/android/settings/R$string;->storage_volume_used_total:I

    new-array v3, v9, [Ljava/lang/Object;

    aput-object v0, v3, v6

    invoke-virtual {p0, v2, v3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 232
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mInternalCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    if-lez v0, :cond_9

    .line 233
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mInternalCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 235
    :cond_9
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mExternalCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    if-lez v0, :cond_a

    .line 236
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mExternalCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 239
    :cond_a
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mInternalCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    if-ne v0, v4, :cond_b

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mExternalCategory:Landroidx/preference/PreferenceCategory;

    .line 240
    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_b

    .line 242
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mHasLaunchedPrivateVolumeSettings:Z

    if-nez v0, :cond_b

    .line 243
    iput-boolean v9, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mHasLaunchedPrivateVolumeSettings:Z

    .line 244
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "android.os.storage.extra.VOLUME_ID"

    const-string v2, "private"

    .line 245
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v2, Lcom/android/settings/deviceinfo/StorageDashboardFragment;

    .line 247
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    .line 248
    invoke-virtual {v1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->storage_settings:I

    .line 249
    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    .line 250
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageSettings;->getMetricsCategory()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    .line 251
    invoke-virtual {v0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    .line 252
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    :cond_b
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public getHelpResource()I
    .locals 0

    .line 108
    sget p0, Lcom/android/settings/R$string;->help_uri_storage:I

    return p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x2a

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 113
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 115
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 117
    const-class v0, Landroid/os/storage/StorageManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/storage/StorageManager;

    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 119
    sget-wide v0, Lcom/android/settings/deviceinfo/StorageSettings;->sTotalInternalStorage:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 120
    invoke-virtual {p1}, Landroid/os/storage/StorageManager;->getPrimaryStorageSize()J

    move-result-wide v0

    sput-wide v0, Lcom/android/settings/deviceinfo/StorageSettings;->sTotalInternalStorage:J

    .line 123
    :cond_0
    sget-wide v0, Lcom/android/settings/deviceinfo/StorageSettings;->sTotalInternalStorage:J

    const-wide v2, 0xe8d4a51000L

    cmp-long p1, v0, v2

    if-ltz p1, :cond_1

    .line 124
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v0

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v2

    add-long/2addr v0, v2

    sput-wide v0, Lcom/android/settings/deviceinfo/StorageSettings;->sTotalInternalStorage:J

    .line 126
    :cond_1
    sget p1, Lcom/android/settings/R$xml;->device_info_storage:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    const-string p1, "storage_internal"

    .line 128
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mInternalCategory:Landroidx/preference/PreferenceCategory;

    const-string p1, "storage_external"

    .line 129
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mExternalCategory:Landroidx/preference/PreferenceCategory;

    .line 131
    new-instance p1, Lcom/android/settings/deviceinfo/StorageSummaryPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/settings/deviceinfo/StorageSummaryPreference;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mInternalSummary:Lcom/android/settings/deviceinfo/StorageSummaryPreference;

    const/4 p1, 0x1

    .line 133
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 266
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    .line 267
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object p0, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, p0}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 5

    .line 272
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 273
    instance-of p1, p1, Lcom/android/settings/deviceinfo/StorageVolumePreference;

    const/4 v1, 0x1

    if-eqz p1, :cond_8

    .line 275
    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {p1, v0}, Landroid/os/storage/StorageManager;->findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 281
    :cond_0
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v2

    if-nez v2, :cond_1

    .line 282
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/settings/deviceinfo/StorageSettings$VolumeUnmountedFragment;->show(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    return v1

    .line 284
    :cond_1
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v2

    const/4 v3, 0x6

    const-string v4, "private"

    if-ne v2, v3, :cond_3

    .line 285
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget v0, Lcom/android/settings/R$string;->storage_dialog_unsupported:I

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getDiskId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/android/settings/deviceinfo/StorageSettings$DiskInitFragment;->show(Landroidx/fragment/app/Fragment;ILjava/lang/String;)V

    goto :goto_0

    .line 286
    :cond_2
    sget v0, Lcom/android/settings/R$string;->storage_dialog_unmountable:I

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getDiskId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/android/settings/deviceinfo/StorageSettings$DiskInitFragment;->show(Landroidx/fragment/app/Fragment;ILjava/lang/String;)V

    :goto_0
    return v1

    .line 290
    :cond_3
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v2

    if-ne v2, v1, :cond_5

    .line 291
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 292
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.os.storage.extra.VOLUME_ID"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 295
    new-instance p1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p1, v2}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v2, Lcom/android/settings/deviceinfo/StorageDashboardFragment;

    .line 296
    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    sget v2, Lcom/android/settings/R$string;->storage_settings:I

    .line 297
    invoke-virtual {p1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    .line 298
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageSettings;->getMetricsCategory()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 299
    invoke-virtual {p0, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 300
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    goto :goto_1

    .line 304
    :cond_4
    sget-wide v2, Lcom/android/settings/deviceinfo/StorageSettings;->sTotalInternalStorage:J

    invoke-static {p1, v2, v3}, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;->getTotalSize(Landroid/os/storage/VolumeInfo;J)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->setVolumeSize(Landroid/os/Bundle;J)V

    .line 306
    new-instance p1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p1, v2}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v2, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;

    .line 307
    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    const/4 v2, -0x1

    .line 308
    invoke-virtual {p1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    .line 309
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageSettings;->getMetricsCategory()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 310
    invoke-virtual {p0, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 311
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    :goto_1
    return v1

    .line 316
    :cond_5
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v1

    if-nez v1, :cond_6

    .line 317
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/settings/deviceinfo/StorageSettings;->handlePublicVolumeClick(Landroid/content/Context;Landroid/os/storage/VolumeInfo;)Z

    move-result p0

    return p0

    .line 318
    :cond_6
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_7

    .line 319
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/settings/deviceinfo/StorageSettings;->handleStubVolumeClick(Landroid/content/Context;Landroid/os/storage/VolumeInfo;)Z

    move-result p0

    return p0

    :cond_7
    return v0

    :cond_8
    const-string p1, "disk:"

    .line 322
    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 324
    sget p1, Lcom/android/settings/R$string;->storage_dialog_unsupported:I

    invoke-static {p0, p1, v0}, Lcom/android/settings/deviceinfo/StorageSettings$DiskInitFragment;->show(Landroidx/fragment/app/Fragment;ILjava/lang/String;)V

    return v1

    .line 329
    :cond_9
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "android.os.storage.extra.FS_UUID"

    .line 330
    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v2, Lcom/android/settings/deviceinfo/PrivateVolumeForget;

    .line 332
    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    sget v2, Lcom/android/settings/R$string;->storage_menu_forget:I

    .line 333
    invoke-virtual {v0, v2}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    .line 334
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageSettings;->getMetricsCategory()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 335
    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 336
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return v1
.end method

.method public onResume()V
    .locals 2

    .line 259
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 260
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 261
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageSettings;->refresh()V

    return-void
.end method
