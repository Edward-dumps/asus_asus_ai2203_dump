.class public Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;
.super Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment;
.source "ProfileSelectStorageFragment.java"


# instance fields
.field private mFragments:[Landroidx/fragment/app/Fragment;

.field private mOptionMenuController:Lcom/android/settings/deviceinfo/VolumeOptionMenuController;

.field private mSelectedStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

.field private final mStorageEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/deviceinfo/storage/StorageEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mStorageEventListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mStorageSelectionController:Lcom/android/settings/deviceinfo/storage/StorageSelectionPreferenceController;

.field private mStorageUsageProgressBarController:Lcom/android/settings/deviceinfo/storage/StorageUsageProgressBarPreferenceController;


# direct methods
.method public static synthetic $r8$lambda$aMo-4msp5usjnN1Z3A1_TrEHGQw(Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;Lcom/android/settings/deviceinfo/storage/StorageEntry;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;->lambda$onAttach$0(Lcom/android/settings/deviceinfo/storage/StorageEntry;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment;-><init>()V

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;->mStorageEntries:Ljava/util/List;

    .line 75
    new-instance v0, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment$1;-><init>(Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;)V

    iput-object v0, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;->mStorageEventListener:Landroid/os/storage/StorageEventListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;)Ljava/util/List;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;->mStorageEntries:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;)Lcom/android/settings/deviceinfo/storage/StorageEntry;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;->mSelectedStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    return-object p0
.end method

.method static synthetic access$102(Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;Lcom/android/settings/deviceinfo/storage/StorageEntry;)Lcom/android/settings/deviceinfo/storage/StorageEntry;
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;->mSelectedStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;->refreshUi()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;)Landroid/os/storage/StorageManager;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;->mStorageManager:Landroid/os/storage/StorageManager;

    return-object p0
.end method

.method private synthetic lambda$onAttach$0(Lcom/android/settings/deviceinfo/storage/StorageEntry;)V
    .locals 1

    .line 258
    iput-object p1, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;->mSelectedStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    .line 259
    invoke-direct {p0}, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;->refreshUi()V

    .line 261
    invoke-virtual {p1}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->isDiskInfoUnsupported()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->isUnmountable()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 264
    :cond_0
    invoke-virtual {p1}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->isVolumeRecordMissed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 265
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/settings/deviceinfo/storage/StorageUtils;->launchForgetMissingVolumeRecordFragment(Landroid/content/Context;Lcom/android/settings/deviceinfo/storage/StorageEntry;)V

    goto :goto_1

    .line 262
    :cond_1
    :goto_0
    sget v0, Lcom/android/settings/R$string;->storage_dialog_unmountable:I

    .line 263
    invoke-virtual {p1}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->getDiskId()Ljava/lang/String;

    move-result-object p1

    .line 262
    invoke-static {p0, v0, p1}, Lcom/android/settings/deviceinfo/storage/DiskInitFragment;->show(Landroidx/fragment/app/Fragment;ILjava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private refreshUi()V
    .locals 5

    .line 216
    iget-object v0, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;->mStorageSelectionController:Lcom/android/settings/deviceinfo/storage/StorageSelectionPreferenceController;

    iget-object v1, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;->mStorageEntries:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/storage/StorageSelectionPreferenceController;->setStorageEntries(Ljava/util/List;)V

    .line 217
    iget-object v0, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;->mStorageSelectionController:Lcom/android/settings/deviceinfo/storage/StorageSelectionPreferenceController;

    iget-object v1, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;->mSelectedStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/storage/StorageSelectionPreferenceController;->setSelectedStorageEntry(Lcom/android/settings/deviceinfo/storage/StorageEntry;)V

    .line 218
    iget-object v0, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;->mStorageUsageProgressBarController:Lcom/android/settings/deviceinfo/storage/StorageUsageProgressBarPreferenceController;

    iget-object v1, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;->mSelectedStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/storage/StorageUsageProgressBarPreferenceController;->setSelectedStorageEntry(Lcom/android/settings/deviceinfo/storage/StorageEntry;)V

    .line 220
    invoke-virtual {p0}, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;->getFragments()[Landroidx/fragment/app/Fragment;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 221
    instance-of v4, v3, Lcom/android/settings/deviceinfo/StorageCategoryFragment;

    if-eqz v4, :cond_0

    .line 224
    check-cast v3, Lcom/android/settings/deviceinfo/StorageCategoryFragment;

    iget-object v4, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;->mSelectedStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    invoke-virtual {v3, v4}, Lcom/android/settings/deviceinfo/StorageCategoryFragment;->refreshUi(Lcom/android/settings/deviceinfo/storage/StorageEntry;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 222
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Wrong fragment type to refreshUi"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 227
    :cond_1
    iget-object v0, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;->mOptionMenuController:Lcom/android/settings/deviceinfo/VolumeOptionMenuController;

    iget-object v1, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;->mSelectedStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->setSelectedStorageEntry(Lcom/android/settings/deviceinfo/storage/StorageEntry;)V

    .line 228
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void
.end method


# virtual methods
.method public getFragments()[Landroidx/fragment/app/Fragment;
    .locals 5

    .line 189
    iget-object v0, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;->mFragments:[Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    return-object v0

    .line 193
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "profile"

    const/4 v2, 0x2

    .line 194
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 195
    new-instance v3, Lcom/android/settings/deviceinfo/StorageCategoryFragment;

    invoke-direct {v3}, Lcom/android/settings/deviceinfo/StorageCategoryFragment;-><init>()V

    .line 196
    invoke-virtual {v3, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 198
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v4, 0x1

    .line 199
    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 200
    new-instance v1, Lcom/android/settings/deviceinfo/StorageCategoryFragment;

    invoke-direct {v1}, Lcom/android/settings/deviceinfo/StorageCategoryFragment;-><init>()V

    .line 201
    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    new-array v0, v2, [Landroidx/fragment/app/Fragment;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    aput-object v3, v0, v4

    .line 203
    iput-object v0, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;->mFragments:[Landroidx/fragment/app/Fragment;

    return-object v0
.end method

.method public getHelpResource()I
    .locals 0

    .line 304
    sget p0, Lcom/android/settings/R$string;->help_url_storage_dashboard:I

    return p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "ProfileSelStorageFrag"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x2e9

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 212
    sget p0, Lcom/android/settings/R$xml;->storage_dashboard_header_fragment:I

    return p0
.end method

.method initializeOptionsMenu(Landroid/app/Activity;)V
    .locals 2

    .line 273
    new-instance v0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;

    iget-object v1, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;->mSelectedStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    invoke-direct {v0, p1, p0, v1}, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;-><init>(Landroid/content/Context;Landroidx/fragment/app/Fragment;Lcom/android/settings/deviceinfo/storage/StorageEntry;)V

    iput-object v0, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;->mOptionMenuController:Lcom/android/settings/deviceinfo/VolumeOptionMenuController;

    .line 275
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;->mOptionMenuController:Lcom/android/settings/deviceinfo/VolumeOptionMenuController;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    const/4 v0, 0x1

    .line 276
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    .line 277
    invoke-virtual {p1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 253
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 254
    const-class p1, Lcom/android/settings/deviceinfo/storage/AutomaticStorageManagementSwitchPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/deviceinfo/storage/AutomaticStorageManagementSwitchPreferenceController;

    .line 255
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 254
    invoke-virtual {p1, v0}, Lcom/android/settings/deviceinfo/storage/AutomaticStorageManagementSwitchPreferenceController;->setFragmentManager(Landroidx/fragment/app/FragmentManager;)Lcom/android/settings/deviceinfo/storage/AutomaticStorageManagementSwitchPreferenceController;

    .line 256
    const-class p1, Lcom/android/settings/deviceinfo/storage/StorageSelectionPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/deviceinfo/storage/StorageSelectionPreferenceController;

    iput-object p1, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;->mStorageSelectionController:Lcom/android/settings/deviceinfo/storage/StorageSelectionPreferenceController;

    .line 257
    new-instance v0, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;)V

    invoke-virtual {p1, v0}, Lcom/android/settings/deviceinfo/storage/StorageSelectionPreferenceController;->setOnItemSelectedListener(Lcom/android/settings/deviceinfo/storage/StorageSelectionPreferenceController$OnItemSelectedListener;)V

    .line 268
    const-class p1, Lcom/android/settings/deviceinfo/storage/StorageUsageProgressBarPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/deviceinfo/storage/StorageUsageProgressBarPreferenceController;

    iput-object p1, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;->mStorageUsageProgressBarController:Lcom/android/settings/deviceinfo/storage/StorageUsageProgressBarPreferenceController;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 233
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 235
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 236
    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    iput-object v1, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez p1, :cond_1

    .line 240
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/settings/Utils;->maybeInitializeVolume(Landroid/os/storage/StorageManager;Landroid/os/Bundle;)Landroid/os/storage/VolumeInfo;

    move-result-object p1

    if-nez p1, :cond_0

    .line 242
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->getDefaultInternalStorageEntry(Landroid/content/Context;)Lcom/android/settings/deviceinfo/storage/StorageEntry;

    move-result-object p1

    goto :goto_0

    .line 243
    :cond_0
    new-instance v1, Lcom/android/settings/deviceinfo/storage/StorageEntry;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/android/settings/deviceinfo/storage/StorageEntry;-><init>(Landroid/content/Context;Landroid/os/storage/VolumeInfo;)V

    move-object p1, v1

    :goto_0
    iput-object p1, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;->mSelectedStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    goto :goto_1

    :cond_1
    const-string v1, "selected_storage_entry_key"

    .line 245
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/android/settings/deviceinfo/storage/StorageEntry;

    iput-object p1, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;->mSelectedStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    .line 248
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;->initializeOptionsMenu(Landroid/app/Activity;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 292
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    .line 293
    iget-object v0, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object p0, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;->mStorageEventListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, p0}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 282
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 284
    iget-object v0, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;->mStorageEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 285
    iget-object v0, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;->mStorageEntries:Ljava/util/List;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-static {v1, v2}, Lcom/android/settings/deviceinfo/storage/StorageUtils;->getAllStorageEntries(Landroid/content/Context;Landroid/os/storage/StorageManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 286
    invoke-direct {p0}, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;->refreshUi()V

    .line 287
    iget-object v0, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object p0, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;->mStorageEventListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, p0}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 298
    iget-object v0, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectStorageFragment;->mSelectedStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    const-string v1, "selected_storage_entry_key"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 299
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
