.class Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment$1;
.super Landroid/os/storage/StorageEventListener;
.source "ProfileSelectStorageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;


# direct methods
.method public static synthetic $r8$lambda$NElo6Hk9s0pnUqxkC-Uxy55n9kc(Landroid/os/storage/VolumeRecord;Lcom/android/settings/deviceinfo/storage/StorageEntry;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment$1;->lambda$onVolumeRecordChanged$1(Landroid/os/storage/VolumeRecord;Lcom/android/settings/deviceinfo/storage/StorageEntry;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$P2bJb2bgizQ2wo5vGdjLUtTbCFw(Lcom/android/settings/deviceinfo/storage/StorageEntry;Lcom/android/settings/deviceinfo/storage/StorageEntry;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment$1;->lambda$onVolumeStateChanged$0(Lcom/android/settings/deviceinfo/storage/StorageEntry;Lcom/android/settings/deviceinfo/storage/StorageEntry;)Z

    move-result p0

    return p0
.end method

.method constructor <init>(Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment$1;->this$0:Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;

    invoke-direct {p0}, Landroid/os/storage/StorageEventListener;-><init>()V

    return-void
.end method

.method private static synthetic lambda$onVolumeRecordChanged$1(Landroid/os/storage/VolumeRecord;Lcom/android/settings/deviceinfo/storage/StorageEntry;)Z
    .locals 1

    .line 139
    invoke-virtual {p1}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->isVolumeInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {p1}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->getFsUuid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Landroid/os/storage/VolumeRecord;->getFsUuid()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$onVolumeStateChanged$0(Lcom/android/settings/deviceinfo/storage/StorageEntry;Lcom/android/settings/deviceinfo/storage/StorageEntry;)Z
    .locals 0

    .line 92
    invoke-virtual {p1, p0}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public onDiskDestroyed(Landroid/os/storage/DiskInfo;)V
    .locals 1

    .line 176
    new-instance v0, Lcom/android/settings/deviceinfo/storage/StorageEntry;

    invoke-direct {v0, p1}, Lcom/android/settings/deviceinfo/storage/StorageEntry;-><init>(Landroid/os/storage/DiskInfo;)V

    .line 177
    iget-object p1, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment$1;->this$0:Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;

    invoke-static {p1}, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;->access$000(Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 178
    iget-object p1, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment$1;->this$0:Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;

    invoke-static {p1}, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;->access$100(Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;)Lcom/android/settings/deviceinfo/storage/StorageEntry;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 179
    iget-object p1, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment$1;->this$0:Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;

    .line 180
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->getDefaultInternalStorageEntry(Landroid/content/Context;)Lcom/android/settings/deviceinfo/storage/StorageEntry;

    move-result-object v0

    .line 179
    invoke-static {p1, v0}, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;->access$102(Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;Lcom/android/settings/deviceinfo/storage/StorageEntry;)Lcom/android/settings/deviceinfo/storage/StorageEntry;

    .line 182
    :cond_0
    iget-object p0, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment$1;->this$0:Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;

    invoke-static {p0}, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;->access$200(Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;)V

    :cond_1
    return-void
.end method

.method public onDiskScanned(Landroid/os/storage/DiskInfo;I)V
    .locals 0

    .line 164
    invoke-static {p1}, Lcom/android/settings/deviceinfo/storage/StorageUtils;->isDiskUnsupported(Landroid/os/storage/DiskInfo;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 167
    :cond_0
    new-instance p2, Lcom/android/settings/deviceinfo/storage/StorageEntry;

    invoke-direct {p2, p1}, Lcom/android/settings/deviceinfo/storage/StorageEntry;-><init>(Landroid/os/storage/DiskInfo;)V

    .line 168
    iget-object p1, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment$1;->this$0:Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;

    invoke-static {p1}, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;->access$000(Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 169
    iget-object p1, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment$1;->this$0:Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;

    invoke-static {p1}, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;->access$000(Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    iget-object p0, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment$1;->this$0:Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;

    invoke-static {p0}, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;->access$200(Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;)V

    :cond_1
    return-void
.end method

.method public onVolumeForgotten(Ljava/lang/String;)V
    .locals 3

    .line 151
    new-instance v0, Lcom/android/settings/deviceinfo/storage/StorageEntry;

    new-instance v1, Landroid/os/storage/VolumeRecord;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1}, Landroid/os/storage/VolumeRecord;-><init>(ILjava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/storage/StorageEntry;-><init>(Landroid/os/storage/VolumeRecord;)V

    .line 153
    iget-object p1, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment$1;->this$0:Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;

    invoke-static {p1}, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;->access$000(Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 154
    iget-object p1, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment$1;->this$0:Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;

    invoke-static {p1}, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;->access$100(Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;)Lcom/android/settings/deviceinfo/storage/StorageEntry;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 155
    iget-object p1, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment$1;->this$0:Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;

    .line 156
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->getDefaultInternalStorageEntry(Landroid/content/Context;)Lcom/android/settings/deviceinfo/storage/StorageEntry;

    move-result-object v0

    .line 155
    invoke-static {p1, v0}, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;->access$102(Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;Lcom/android/settings/deviceinfo/storage/StorageEntry;)Lcom/android/settings/deviceinfo/storage/StorageEntry;

    .line 158
    :cond_0
    iget-object p0, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment$1;->this$0:Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;

    invoke-static {p0}, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;->access$200(Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;)V

    :cond_1
    return-void
.end method

.method public onVolumeRecordChanged(Landroid/os/storage/VolumeRecord;)V
    .locals 3

    .line 120
    iget-object v0, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment$1;->this$0:Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;

    invoke-static {v0}, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;->access$300(Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;)Landroid/os/storage/StorageManager;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/settings/deviceinfo/storage/StorageUtils;->isVolumeRecordMissed(Landroid/os/storage/StorageManager;Landroid/os/storage/VolumeRecord;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    new-instance v0, Lcom/android/settings/deviceinfo/storage/StorageEntry;

    invoke-direct {v0, p1}, Lcom/android/settings/deviceinfo/storage/StorageEntry;-><init>(Landroid/os/storage/VolumeRecord;)V

    .line 125
    iget-object p1, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment$1;->this$0:Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;

    invoke-static {p1}, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;->access$000(Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 126
    iget-object p1, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment$1;->this$0:Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;

    invoke-static {p1}, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;->access$000(Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    iget-object p0, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment$1;->this$0:Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;

    invoke-static {p0}, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;->access$200(Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;)V

    goto :goto_0

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment$1;->this$0:Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;

    .line 133
    invoke-static {v0}, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;->access$300(Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;)Landroid/os/storage/StorageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/storage/VolumeRecord;->getFsUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->findVolumeByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 138
    :cond_1
    iget-object v1, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment$1;->this$0:Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;

    invoke-static {v1}, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;->access$000(Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1}, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment$1$$ExternalSyntheticLambda0;-><init>(Landroid/os/storage/VolumeRecord;)V

    invoke-interface {v1, v2}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 143
    iget-object p1, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment$1;->this$0:Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;

    invoke-static {p1}, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;->access$000(Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;)Ljava/util/List;

    move-result-object p1

    new-instance v1, Lcom/android/settings/deviceinfo/storage/StorageEntry;

    iget-object v2, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment$1;->this$0:Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/settings/deviceinfo/storage/StorageEntry;-><init>(Landroid/content/Context;Landroid/os/storage/VolumeInfo;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    iget-object p0, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment$1;->this$0:Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;

    invoke-static {p0}, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;->access$200(Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onVolumeStateChanged(Landroid/os/storage/VolumeInfo;II)V
    .locals 0

    .line 78
    invoke-static {p1}, Lcom/android/settings/deviceinfo/storage/StorageUtils;->isStorageSettingsInterestedVolume(Landroid/os/storage/VolumeInfo;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 82
    :cond_0
    new-instance p2, Lcom/android/settings/deviceinfo/storage/StorageEntry;

    iget-object p3, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment$1;->this$0:Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;

    invoke-virtual {p3}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lcom/android/settings/deviceinfo/storage/StorageEntry;-><init>(Landroid/content/Context;Landroid/os/storage/VolumeInfo;)V

    .line 83
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result p1

    if-eqz p1, :cond_3

    const/4 p3, 0x2

    if-eq p1, p3, :cond_1

    const/4 p3, 0x3

    if-eq p1, p3, :cond_1

    const/4 p3, 0x5

    if-eq p1, p3, :cond_3

    const/4 p3, 0x6

    if-eq p1, p3, :cond_1

    const/4 p3, 0x7

    if-eq p1, p3, :cond_3

    const/16 p3, 0x8

    if-eq p1, p3, :cond_3

    goto :goto_0

    .line 91
    :cond_1
    iget-object p1, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment$1;->this$0:Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;

    invoke-static {p1}, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;->access$000(Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;)Ljava/util/List;

    move-result-object p1

    new-instance p3, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment$1$$ExternalSyntheticLambda1;

    invoke-direct {p3, p2}, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment$1$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/deviceinfo/storage/StorageEntry;)V

    invoke-interface {p1, p3}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 94
    iget-object p1, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment$1;->this$0:Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;

    invoke-static {p1}, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;->access$000(Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    iget-object p1, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment$1;->this$0:Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;

    invoke-static {p1}, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;->access$100(Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;)Lcom/android/settings/deviceinfo/storage/StorageEntry;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 96
    iget-object p1, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment$1;->this$0:Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;

    invoke-static {p1, p2}, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;->access$102(Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;Lcom/android/settings/deviceinfo/storage/StorageEntry;)Lcom/android/settings/deviceinfo/storage/StorageEntry;

    .line 98
    :cond_2
    iget-object p0, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment$1;->this$0:Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;

    invoke-static {p0}, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;->access$200(Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;)V

    goto :goto_0

    .line 105
    :cond_3
    iget-object p1, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment$1;->this$0:Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;

    invoke-static {p1}, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;->access$000(Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 106
    iget-object p1, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment$1;->this$0:Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;

    invoke-static {p1}, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;->access$100(Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;)Lcom/android/settings/deviceinfo/storage/StorageEntry;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 107
    iget-object p1, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment$1;->this$0:Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;

    .line 108
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->getDefaultInternalStorageEntry(Landroid/content/Context;)Lcom/android/settings/deviceinfo/storage/StorageEntry;

    move-result-object p2

    .line 107
    invoke-static {p1, p2}, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;->access$102(Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;Lcom/android/settings/deviceinfo/storage/StorageEntry;)Lcom/android/settings/deviceinfo/storage/StorageEntry;

    .line 110
    :cond_4
    iget-object p0, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment$1;->this$0:Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;

    invoke-static {p0}, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;->access$200(Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;)V

    :cond_5
    :goto_0
    return-void
.end method
