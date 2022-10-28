.class public Lcom/android/settings/deviceinfo/storage/StorageUtils;
.super Ljava/lang/Object;
.source "StorageUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/storage/StorageUtils$SystemInfoFragment;,
        Lcom/android/settings/deviceinfo/storage/StorageUtils$MountTask;,
        Lcom/android/settings/deviceinfo/storage/StorageUtils$UnmountTask;
    }
.end annotation


# direct methods
.method public static synthetic $r8$lambda$1WeNAKuqxdtej4Ha9Ot0CtY0y38(Landroid/os/storage/DiskInfo;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/settings/deviceinfo/storage/StorageUtils;->lambda$getAllStorageEntries$2(Landroid/os/storage/DiskInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$8lx_k0zHYH1BOju74_zXZQI5T1c(Landroid/os/storage/VolumeRecord;)Lcom/android/settings/deviceinfo/storage/StorageEntry;
    .locals 0

    invoke-static {p0}, Lcom/android/settings/deviceinfo/storage/StorageUtils;->lambda$getAllStorageEntries$5(Landroid/os/storage/VolumeRecord;)Lcom/android/settings/deviceinfo/storage/StorageEntry;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$9p2xU3ZAZMUV_KNB1gXoAVM5TFk(Landroid/os/storage/DiskInfo;)Lcom/android/settings/deviceinfo/storage/StorageEntry;
    .locals 0

    invoke-static {p0}, Lcom/android/settings/deviceinfo/storage/StorageUtils;->lambda$getAllStorageEntries$3(Landroid/os/storage/DiskInfo;)Lcom/android/settings/deviceinfo/storage/StorageEntry;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Ah1M0DgRZXIAmeT5a6lQLYZ6E2A(Landroid/os/storage/StorageManager;Landroid/os/storage/VolumeRecord;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/deviceinfo/storage/StorageUtils;->lambda$getAllStorageEntries$4(Landroid/os/storage/StorageManager;Landroid/os/storage/VolumeRecord;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Bf0vLRmiSmm3MH67KlFFfPjOwQU(Landroid/os/storage/VolumeInfo;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/settings/deviceinfo/storage/StorageUtils;->lambda$getAllStorageEntries$0(Landroid/os/storage/VolumeInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$EtdvYnN2WL7zHvmIY4KcTbxP2is(Landroid/content/Context;Landroid/os/storage/VolumeInfo;)Lcom/android/settings/deviceinfo/storage/StorageEntry;
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/deviceinfo/storage/StorageUtils;->lambda$getAllStorageEntries$1(Landroid/content/Context;Landroid/os/storage/VolumeInfo;)Lcom/android/settings/deviceinfo/storage/StorageEntry;

    move-result-object p0

    return-object p0
.end method

.method public static getAllStorageEntries(Landroid/content/Context;Landroid/os/storage/StorageManager;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/storage/StorageManager;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settings/deviceinfo/storage/StorageEntry;",
            ">;"
        }
    .end annotation

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 58
    invoke-virtual {p1}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lcom/android/settings/deviceinfo/storage/StorageUtils$$ExternalSyntheticLambda5;->INSTANCE:Lcom/android/settings/deviceinfo/storage/StorageUtils$$ExternalSyntheticLambda5;

    .line 59
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/settings/deviceinfo/storage/StorageUtils$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/settings/deviceinfo/storage/StorageUtils$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;)V

    .line 60
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 61
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    .line 58
    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 62
    invoke-virtual {p1}, Landroid/os/storage/StorageManager;->getDisks()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v1, Lcom/android/settings/deviceinfo/storage/StorageUtils$$ExternalSyntheticLambda4;->INSTANCE:Lcom/android/settings/deviceinfo/storage/StorageUtils$$ExternalSyntheticLambda4;

    .line 63
    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v1, Lcom/android/settings/deviceinfo/storage/StorageUtils$$ExternalSyntheticLambda1;->INSTANCE:Lcom/android/settings/deviceinfo/storage/StorageUtils$$ExternalSyntheticLambda1;

    .line 64
    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 65
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    .line 62
    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 66
    invoke-virtual {p1}, Landroid/os/storage/StorageManager;->getVolumeRecords()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lcom/android/settings/deviceinfo/storage/StorageUtils$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1}, Lcom/android/settings/deviceinfo/storage/StorageUtils$$ExternalSyntheticLambda3;-><init>(Landroid/os/storage/StorageManager;)V

    .line 67
    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    sget-object p1, Lcom/android/settings/deviceinfo/storage/StorageUtils$$ExternalSyntheticLambda2;->INSTANCE:Lcom/android/settings/deviceinfo/storage/StorageUtils$$ExternalSyntheticLambda2;

    .line 68
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 69
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    .line 66
    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public static getStorageSizeLabel(Landroid/content/Context;J)Ljava/lang/String;
    .locals 3

    .line 123
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1}, Landroid/text/format/Formatter;->formatBytes(Landroid/content/res/Resources;JI)Landroid/text/format/Formatter$BytesResult;

    move-result-object p1

    .line 125
    sget p2, Lcom/android/settings/R$string;->storage_size_large:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/CharSequence;

    iget-object v0, p1, Landroid/text/format/Formatter$BytesResult;->value:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, p2, v2

    iget-object p1, p1, Landroid/text/format/Formatter$BytesResult;->units:Ljava/lang/String;

    aput-object p1, p2, v1

    invoke-static {p0, p2}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    .line 126
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isDiskUnsupported(Landroid/os/storage/DiskInfo;)Z
    .locals 4

    .line 101
    iget v0, p0, Landroid/os/storage/DiskInfo;->volumeCount:I

    if-nez v0, :cond_0

    iget-wide v0, p0, Landroid/os/storage/DiskInfo;->size:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isStorageSettingsInterestedVolume(Landroid/os/storage/VolumeInfo;)Z
    .locals 2

    .line 77
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

.method public static isVolumeRecordMissed(Landroid/os/storage/StorageManager;Landroid/os/storage/VolumeRecord;)Z
    .locals 2

    .line 93
    invoke-virtual {p1}, Landroid/os/storage/VolumeRecord;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 94
    invoke-virtual {p1}, Landroid/os/storage/VolumeRecord;->getFsUuid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/storage/StorageManager;->findVolumeByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private static synthetic lambda$getAllStorageEntries$0(Landroid/os/storage/VolumeInfo;)Z
    .locals 0

    .line 59
    invoke-static {p0}, Lcom/android/settings/deviceinfo/storage/StorageUtils;->isStorageSettingsInterestedVolume(Landroid/os/storage/VolumeInfo;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$getAllStorageEntries$1(Landroid/content/Context;Landroid/os/storage/VolumeInfo;)Lcom/android/settings/deviceinfo/storage/StorageEntry;
    .locals 1

    .line 60
    new-instance v0, Lcom/android/settings/deviceinfo/storage/StorageEntry;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/deviceinfo/storage/StorageEntry;-><init>(Landroid/content/Context;Landroid/os/storage/VolumeInfo;)V

    return-object v0
.end method

.method private static synthetic lambda$getAllStorageEntries$2(Landroid/os/storage/DiskInfo;)Z
    .locals 0

    .line 63
    invoke-static {p0}, Lcom/android/settings/deviceinfo/storage/StorageUtils;->isDiskUnsupported(Landroid/os/storage/DiskInfo;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$getAllStorageEntries$3(Landroid/os/storage/DiskInfo;)Lcom/android/settings/deviceinfo/storage/StorageEntry;
    .locals 1

    .line 64
    new-instance v0, Lcom/android/settings/deviceinfo/storage/StorageEntry;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/storage/StorageEntry;-><init>(Landroid/os/storage/DiskInfo;)V

    return-object v0
.end method

.method private static synthetic lambda$getAllStorageEntries$4(Landroid/os/storage/StorageManager;Landroid/os/storage/VolumeRecord;)Z
    .locals 0

    .line 67
    invoke-static {p0, p1}, Lcom/android/settings/deviceinfo/storage/StorageUtils;->isVolumeRecordMissed(Landroid/os/storage/StorageManager;Landroid/os/storage/VolumeRecord;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$getAllStorageEntries$5(Landroid/os/storage/VolumeRecord;)Lcom/android/settings/deviceinfo/storage/StorageEntry;
    .locals 1

    .line 68
    new-instance v0, Lcom/android/settings/deviceinfo/storage/StorageEntry;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/storage/StorageEntry;-><init>(Landroid/os/storage/VolumeRecord;)V

    return-object v0
.end method

.method public static launchForgetMissingVolumeRecordFragment(Landroid/content/Context;Lcom/android/settings/deviceinfo/storage/StorageEntry;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 107
    invoke-virtual {p1}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->isVolumeRecordMissed()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 111
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 112
    invoke-virtual {p1}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->getFsUuid()Ljava/lang/String;

    move-result-object p1

    const-string v1, "android.os.storage.extra.FS_UUID"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    new-instance p1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-direct {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class p0, Lcom/android/settings/deviceinfo/PrivateVolumeForget;

    .line 114
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->storage_menu_forget:I

    .line 115
    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    const/16 p1, 0x2e9

    .line 116
    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 117
    invoke-virtual {p0, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 118
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    :cond_1
    :goto_0
    return-void
.end method
