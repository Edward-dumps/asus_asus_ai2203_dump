.class public Lcom/android/settings/deviceinfo/VolumeOptionMenuController;
.super Ljava/lang/Object;
.source "VolumeOptionMenuController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnCreateOptionsMenu;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPrepareOptionsMenu;
.implements Lcom/android/settingslib/core/lifecycle/events/OnOptionsItemSelected;


# instance fields
.field private final mContext:Landroid/content/Context;

.field mForget:Landroid/view/MenuItem;

.field mFormat:Landroid/view/MenuItem;

.field mFormatAsInternal:Landroid/view/MenuItem;

.field mFormatAsPortable:Landroid/view/MenuItem;

.field private final mFragment:Landroidx/fragment/app/Fragment;

.field mFree:Landroid/view/MenuItem;

.field mMigrate:Landroid/view/MenuItem;

.field mMount:Landroid/view/MenuItem;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field mRename:Landroid/view/MenuItem;

.field private mStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

.field private final mStorageManager:Landroid/os/storage/StorageManager;

.field mUnmount:Landroid/view/MenuItem;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/fragment/app/Fragment;Lcom/android/settings/deviceinfo/storage/StorageEntry;)V
    .locals 0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mContext:Landroid/content/Context;

    .line 83
    iput-object p2, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mFragment:Landroidx/fragment/app/Fragment;

    .line 84
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 85
    const-class p2, Landroid/os/storage/StorageManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/storage/StorageManager;

    iput-object p1, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 86
    iput-object p3, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    return-void
.end method


# virtual methods
.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    .line 91
    sget p0, Lcom/android/settings/R$menu;->storage_volume:I

    invoke-virtual {p2, p0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    .line 164
    iget-object v0, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 168
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    .line 169
    sget v0, Lcom/android/settings/R$id;->storage_mount:I

    const/4 v2, 0x1

    if-ne p1, v0, :cond_2

    .line 170
    iget-object p1, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    invoke-virtual {p1}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->isUnmounted()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 171
    new-instance p1, Lcom/android/settings/deviceinfo/storage/StorageUtils$MountTask;

    iget-object v0, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->getVolumeInfo()Landroid/os/storage/VolumeInfo;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Lcom/android/settings/deviceinfo/storage/StorageUtils$MountTask;-><init>(Landroid/content/Context;Landroid/os/storage/VolumeInfo;)V

    new-array p0, v1, [Ljava/lang/Void;

    invoke-virtual {p1, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return v2

    :cond_1
    return v1

    .line 176
    :cond_2
    sget v0, Lcom/android/settings/R$id;->storage_unmount:I

    const/16 v3, 0x2a

    const-string v4, "android.os.storage.extra.VOLUME_ID"

    if-ne p1, v0, :cond_5

    .line 177
    iget-object p1, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    invoke-virtual {p1}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->isMounted()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 178
    iget-object p1, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    invoke-virtual {p1}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->isPublic()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 179
    new-instance p1, Lcom/android/settings/deviceinfo/storage/StorageUtils$UnmountTask;

    iget-object v0, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    .line 180
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->getVolumeInfo()Landroid/os/storage/VolumeInfo;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Lcom/android/settings/deviceinfo/storage/StorageUtils$UnmountTask;-><init>(Landroid/content/Context;Landroid/os/storage/VolumeInfo;)V

    new-array p0, v1, [Ljava/lang/Void;

    invoke-virtual {p1, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return v2

    .line 183
    :cond_3
    iget-object p1, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    invoke-virtual {p1}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->isPrivate()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    invoke-virtual {p1}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->isDefaultInternalStorage()Z

    move-result p1

    if-nez p1, :cond_4

    .line 184
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 185
    iget-object v0, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    iget-object p0, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class p0, Lcom/android/settings/deviceinfo/PrivateVolumeUnmount;

    .line 187
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->storage_menu_unmount:I

    .line 188
    invoke-virtual {p0, v0}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 189
    invoke-virtual {p0, v3}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 190
    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 191
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return v2

    :cond_4
    return v1

    .line 197
    :cond_5
    sget v0, Lcom/android/settings/R$id;->storage_rename:I

    if-ne p1, v0, :cond_9

    .line 198
    iget-object p1, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    invoke-virtual {p1}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->isPrivate()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    invoke-virtual {p1}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->isDefaultInternalStorage()Z

    move-result p1

    if-eqz p1, :cond_7

    :cond_6
    iget-object p1, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    .line 199
    invoke-virtual {p1}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->isPublic()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 200
    :cond_7
    iget-object p1, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mFragment:Landroidx/fragment/app/Fragment;

    iget-object p0, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->getVolumeInfo()Landroid/os/storage/VolumeInfo;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/settings/deviceinfo/storage/StorageRenameFragment;->show(Landroidx/fragment/app/Fragment;Landroid/os/storage/VolumeInfo;)V

    return v2

    :cond_8
    return v1

    .line 205
    :cond_9
    sget v0, Lcom/android/settings/R$id;->storage_format:I

    if-ne p1, v0, :cond_c

    .line 206
    iget-object p1, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    invoke-virtual {p1}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->isDiskInfoUnsupported()Z

    move-result p1

    if-nez p1, :cond_b

    iget-object p1, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    invoke-virtual {p1}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->isPublic()Z

    move-result p1

    if-eqz p1, :cond_a

    goto :goto_0

    :cond_a
    return v1

    .line 207
    :cond_b
    :goto_0
    iget-object p1, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    .line 208
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->getDiskId()Ljava/lang/String;

    move-result-object p0

    .line 207
    invoke-static {p1, p0}, Lcom/android/settings/deviceinfo/StorageWizardFormatConfirm;->showPublic(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)V

    return v2

    .line 213
    :cond_c
    sget v0, Lcom/android/settings/R$id;->storage_format_as_portable:I

    if-ne p1, v0, :cond_e

    .line 214
    iget-object p1, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    invoke-virtual {p1}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->isPrivate()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 215
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 216
    iget-object v0, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    iget-object p0, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class p0, Lcom/android/settings/deviceinfo/PrivateVolumeFormat;

    .line 218
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->storage_menu_format:I

    .line 219
    invoke-virtual {p0, v0}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 220
    invoke-virtual {p0, v3}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 221
    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 222
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return v2

    :cond_d
    return v1

    .line 227
    :cond_e
    sget v0, Lcom/android/settings/R$id;->storage_format_as_internal:I

    if-ne p1, v0, :cond_10

    .line 228
    iget-object p1, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    invoke-virtual {p1}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->isPublic()Z

    move-result p1

    if-eqz p1, :cond_f

    .line 229
    iget-object p1, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    .line 230
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->getDiskId()Ljava/lang/String;

    move-result-object p0

    .line 229
    invoke-static {p1, p0}, Lcom/android/settings/deviceinfo/StorageWizardFormatConfirm;->showPrivate(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)V

    return v2

    :cond_f
    return v1

    .line 235
    :cond_10
    sget v0, Lcom/android/settings/R$id;->storage_migrate:I

    if-ne p1, v0, :cond_12

    .line 236
    iget-object p1, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    invoke-virtual {p1}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->isPrivate()Z

    move-result p1

    if-eqz p1, :cond_11

    .line 237
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mContext:Landroid/content/Context;

    const-class v1, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 238
    iget-object v0, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 239
    iget-object p0, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return v2

    :cond_11
    return v1

    .line 244
    :cond_12
    sget v0, Lcom/android/settings/R$id;->storage_forget:I

    if-ne p1, v0, :cond_13

    .line 245
    iget-object p1, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    invoke-virtual {p1}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->isVolumeRecordMissed()Z

    move-result p1

    if-eqz p1, :cond_13

    .line 246
    iget-object p1, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    invoke-static {p1, p0}, Lcom/android/settings/deviceinfo/storage/StorageUtils;->launchForgetMissingVolumeRecordFragment(Landroid/content/Context;Lcom/android/settings/deviceinfo/storage/StorageEntry;)V

    return v2

    :cond_13
    return v1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 4

    .line 96
    sget v0, Lcom/android/settings/R$id;->storage_rename:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mRename:Landroid/view/MenuItem;

    .line 97
    sget v0, Lcom/android/settings/R$id;->storage_mount:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mMount:Landroid/view/MenuItem;

    .line 98
    sget v0, Lcom/android/settings/R$id;->storage_unmount:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mUnmount:Landroid/view/MenuItem;

    .line 99
    sget v0, Lcom/android/settings/R$id;->storage_format:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mFormat:Landroid/view/MenuItem;

    .line 100
    sget v0, Lcom/android/settings/R$id;->storage_format_as_portable:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mFormatAsPortable:Landroid/view/MenuItem;

    .line 101
    sget v0, Lcom/android/settings/R$id;->storage_format_as_internal:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mFormatAsInternal:Landroid/view/MenuItem;

    .line 102
    sget v0, Lcom/android/settings/R$id;->storage_migrate:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mMigrate:Landroid/view/MenuItem;

    .line 103
    sget v0, Lcom/android/settings/R$id;->storage_free:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mFree:Landroid/view/MenuItem;

    .line 104
    sget v0, Lcom/android/settings/R$id;->storage_forget:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mForget:Landroid/view/MenuItem;

    .line 106
    iget-object p1, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mRename:Landroid/view/MenuItem;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 107
    iget-object p1, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mMount:Landroid/view/MenuItem;

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 108
    iget-object p1, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mUnmount:Landroid/view/MenuItem;

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 109
    iget-object p1, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mFormat:Landroid/view/MenuItem;

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 110
    iget-object p1, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mFormatAsPortable:Landroid/view/MenuItem;

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 111
    iget-object p1, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mFormatAsInternal:Landroid/view/MenuItem;

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 112
    iget-object p1, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mMigrate:Landroid/view/MenuItem;

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 113
    iget-object p1, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mFree:Landroid/view/MenuItem;

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 114
    iget-object p1, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mForget:Landroid/view/MenuItem;

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 116
    iget-object p1, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    invoke-virtual {p1}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->isDiskInfoUnsupported()Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 117
    iget-object p0, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mFormat:Landroid/view/MenuItem;

    invoke-interface {p0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void

    .line 120
    :cond_0
    iget-object p1, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    invoke-virtual {p1}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->isVolumeRecordMissed()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 121
    iget-object p0, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mForget:Landroid/view/MenuItem;

    invoke-interface {p0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void

    .line 124
    :cond_1
    iget-object p1, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    invoke-virtual {p1}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->isUnmounted()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 125
    iget-object p0, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mMount:Landroid/view/MenuItem;

    invoke-interface {p0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void

    .line 128
    :cond_2
    iget-object p1, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    invoke-virtual {p1}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->isMounted()Z

    move-result p1

    if-nez p1, :cond_3

    return-void

    .line 132
    :cond_3
    iget-object p1, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    invoke-virtual {p1}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->isPrivate()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 133
    iget-object p1, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    invoke-virtual {p1}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->isDefaultInternalStorage()Z

    move-result p1

    if-nez p1, :cond_4

    .line 134
    iget-object p1, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mRename:Landroid/view/MenuItem;

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 135
    iget-object p1, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mUnmount:Landroid/view/MenuItem;

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 136
    iget-object p1, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mFormatAsPortable:Landroid/view/MenuItem;

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 140
    :cond_4
    iget-object p1, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1}, Landroid/content/pm/PackageManager;->getPrimaryStorageCurrentVolume()Landroid/os/storage/VolumeInfo;

    move-result-object p1

    .line 141
    iget-object v2, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    invoke-virtual {v2}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->getVolumeInfo()Landroid/os/storage/VolumeInfo;

    move-result-object v2

    .line 142
    iget-object p0, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mMigrate:Landroid/view/MenuItem;

    if-eqz p1, :cond_5

    .line 143
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v3

    if-ne v3, v1, :cond_5

    .line 144
    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 145
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->isMountedWritable()Z

    move-result p1

    if-eqz p1, :cond_5

    move v0, v1

    .line 142
    :cond_5
    invoke-interface {p0, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void

    .line 149
    :cond_6
    iget-object p1, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    invoke-virtual {p1}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->isPublic()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 150
    iget-object p1, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mRename:Landroid/view/MenuItem;

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 151
    iget-object p1, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mUnmount:Landroid/view/MenuItem;

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 152
    iget-object p1, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mFormat:Landroid/view/MenuItem;

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 153
    iget-object p1, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    invoke-virtual {v2}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->getDiskId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/storage/StorageManager;->findDiskById(Ljava/lang/String;)Landroid/os/storage/DiskInfo;

    move-result-object p1

    .line 154
    iget-object v2, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mFormatAsInternal:Landroid/view/MenuItem;

    if-eqz p1, :cond_7

    .line 155
    invoke-virtual {p1}, Landroid/os/storage/DiskInfo;->isAdoptable()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p0, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mContext:Landroid/content/Context;

    .line 156
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result p0

    if-eqz p0, :cond_7

    .line 157
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result p0

    if-nez p0, :cond_7

    move v0, v1

    .line 154
    :cond_7
    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_8
    return-void
.end method

.method public setSelectedStorageEntry(Lcom/android/settings/deviceinfo/storage/StorageEntry;)V
    .locals 0

    .line 255
    iput-object p1, p0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->mStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    return-void
.end method
