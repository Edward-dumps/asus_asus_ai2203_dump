.class public Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "StorageItemPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settings/deviceinfo/storage/EmptyTrashFragment$OnEmptyTrashCompleteListener;


# static fields
.field static final APPS_KEY:Ljava/lang/String; = "pref_apps"

.field static final AUDIO_KEY:Ljava/lang/String; = "pref_audio"

.field static final DOCUMENTS_AND_OTHER_KEY:Ljava/lang/String; = "pref_documents_and_other"

.field static final GAMES_KEY:Ljava/lang/String; = "pref_games"

.field static final IMAGES_KEY:Ljava/lang/String; = "pref_images"

.field static final PUBLIC_STORAGE_KEY:Ljava/lang/String; = "pref_public_storage"

.field static final SYSTEM_KEY:Ljava/lang/String; = "pref_system"

.field static final TRASH_KEY:Ljava/lang/String; = "pref_trash"

.field static final VIDEOS_KEY:Ljava/lang/String; = "pref_videos"


# instance fields
.field mAppsPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

.field mAudioPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

.field final mAudioUri:Landroid/net/Uri;

.field mDocumentsAndOtherPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

.field final mDocumentsAndOtherUri:Landroid/net/Uri;

.field private final mFragment:Landroidx/fragment/app/Fragment;

.field mGamesPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

.field mImagesPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

.field final mImagesUri:Landroid/net/Uri;

.field private mIsWorkProfile:Z

.field private final mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPrivateStorageItemPreferences:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/deviceinfo/StorageItemPreference;",
            ">;"
        }
    .end annotation
.end field

.field mPublicStoragePreference:Landroidx/preference/Preference;

.field private mScreen:Landroidx/preference/PreferenceScreen;

.field private final mSvp:Lcom/android/settingslib/deviceinfo/StorageVolumeProvider;

.field mSystemPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

.field private mTotalSize:J

.field mTrashPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

.field private mUsedBytes:J

.field private mUserId:I

.field private mUserManager:Landroid/os/UserManager;

.field mVideosPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

.field final mVideosUri:Landroid/net/Uri;

.field private mVolume:Landroid/os/storage/VolumeInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/fragment/app/Fragment;Landroid/os/storage/VolumeInfo;Lcom/android/settingslib/deviceinfo/StorageVolumeProvider;Z)V
    .locals 1

    .line 145
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 146
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 147
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mUserManager:Landroid/os/UserManager;

    .line 148
    iput-object p2, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    .line 149
    iput-object p3, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mVolume:Landroid/os/storage/VolumeInfo;

    .line 150
    iput-object p4, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mSvp:Lcom/android/settingslib/deviceinfo/StorageVolumeProvider;

    .line 151
    iput-boolean p5, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mIsWorkProfile:Z

    .line 152
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    .line 153
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->getCurrentUserId()I

    move-result p2

    iput p2, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mUserId:I

    .line 155
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/android/settings/R$string;->config_images_storage_category_uri:I

    .line 156
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 155
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mImagesUri:Landroid/net/Uri;

    .line 157
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/android/settings/R$string;->config_videos_storage_category_uri:I

    .line 158
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 157
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mVideosUri:Landroid/net/Uri;

    .line 159
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/android/settings/R$string;->config_audio_storage_category_uri:I

    .line 160
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 159
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mAudioUri:Landroid/net/Uri;

    .line 161
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/settings/R$string;->config_documents_and_other_storage_category_uri:I

    .line 162
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 161
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mDocumentsAndOtherUri:Landroid/net/Uri;

    return-void
.end method

.method private getWorkAnnotatedBundle(I)Landroid/os/Bundle;
    .locals 1

    .line 468
    new-instance v0, Landroid/os/Bundle;

    add-int/lit8 p1, p1, 0x1

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(I)V

    .line 470
    iget-boolean p0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mIsWorkProfile:Z

    const-string p1, ":settings:show_fragment_tab"

    .line 469
    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method private isValidPrivateVolume()Z
    .locals 3

    .line 240
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mVolume:Landroid/os/storage/VolumeInfo;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 241
    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mVolume:Landroid/os/storage/VolumeInfo;

    .line 242
    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    iget-object p0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mVolume:Landroid/os/storage/VolumeInfo;

    .line 243
    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private isValidPublicVolume()Z
    .locals 2

    .line 249
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mVolume:Landroid/os/storage/VolumeInfo;

    if-eqz v0, :cond_2

    .line 250
    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mVolume:Landroid/os/storage/VolumeInfo;

    .line 251
    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mVolume:Landroid/os/storage/VolumeInfo;

    .line 252
    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget-object p0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mVolume:Landroid/os/storage/VolumeInfo;

    .line 253
    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private launchActivityWithUri(Landroid/net/Uri;)V
    .locals 2

    .line 432
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 433
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 434
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/os/UserHandle;

    iget p0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mUserId:I

    invoke-direct {v1, p0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private launchAppsIntent()V
    .locals 3

    const/4 v0, 0x3

    .line 438
    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->getWorkAnnotatedBundle(I)Landroid/os/Bundle;

    move-result-object v0

    .line 439
    const-class v1, Lcom/android/settings/Settings$StorageUseActivity;

    .line 440
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "classname"

    .line 439
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "volumeUuid"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getDescription()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "volumeName"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v2, Lcom/android/settings/applications/manageapplications/ManageApplications;

    .line 444
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->apps_storage:I

    .line 445
    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    .line 446
    invoke-virtual {v1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    .line 447
    invoke-virtual {v1, v2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->getMetricsCategory(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    .line 448
    invoke-virtual {v0}, Lcom/android/settings/core/SubSettingLauncher;->toIntent()Landroid/content/Intent;

    move-result-object v0

    .line 449
    iget v1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mUserId:I

    const-string v2, "android.intent.extra.USER_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 450
    iget-object p0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-static {p0, v0}, Lcom/android/settings/Utils;->launchIntent(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    return-void
.end method

.method private launchGamesIntent()V
    .locals 3

    const/4 v0, 0x1

    .line 454
    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->getWorkAnnotatedBundle(I)Landroid/os/Bundle;

    move-result-object v0

    .line 455
    const-class v1, Lcom/android/settings/Settings$GamesStorageActivity;

    .line 456
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "classname"

    .line 455
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v2, Lcom/android/settings/applications/manageapplications/ManageApplications;

    .line 458
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->game_storage_settings:I

    .line 459
    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    .line 460
    invoke-virtual {v1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    .line 461
    invoke-virtual {v1, v2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->getMetricsCategory(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    .line 462
    invoke-virtual {v0}, Lcom/android/settings/core/SubSettingLauncher;->toIntent()Landroid/content/Intent;

    move-result-object v0

    .line 463
    iget v1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mUserId:I

    const-string v2, "android.intent.extra.USER_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 464
    iget-object p0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-static {p0, v0}, Lcom/android/settings/Utils;->launchIntent(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    return-void
.end method

.method private launchPublicStorageIntent()V
    .locals 3

    .line 424
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->buildBrowseIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 428
    :cond_0
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    iget p0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mUserId:I

    invoke-direct {v2, p0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private launchTrashIntent()V
    .locals 10

    .line 475
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.VIEW_TRASH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 477
    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    iget v2, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mUserId:I

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-nez v1, :cond_1

    .line 478
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mTrashPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/StorageItemPreference;->getStorageSize()J

    move-result-wide v7

    const-wide/16 v0, 0x0

    cmp-long v0, v7, v0

    if-lez v0, :cond_0

    .line 480
    new-instance v0, Lcom/android/settings/deviceinfo/storage/EmptyTrashFragment;

    iget-object v5, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    iget v6, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mUserId:I

    move-object v4, v0

    move-object v9, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/settings/deviceinfo/storage/EmptyTrashFragment;-><init>(Landroidx/fragment/app/Fragment;IJLcom/android/settings/deviceinfo/storage/EmptyTrashFragment$OnEmptyTrashCompleteListener;)V

    .line 481
    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/storage/EmptyTrashFragment;->show()V

    goto :goto_0

    .line 483
    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->storage_trash_dialog_empty_message:I

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 484
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 487
    :cond_1
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    iget p0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mUserId:I

    invoke-direct {v2, p0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :goto_0
    return-void
.end method

.method private updatePrivateStorageCategoryPreferencesOrder()V
    .locals 4

    .line 282
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->isValidPrivateVolume()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mPrivateStorageItemPreferences:Ljava/util/List;

    if-nez v0, :cond_1

    .line 287
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mPrivateStorageItemPreferences:Ljava/util/List;

    .line 289
    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mImagesPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 290
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mPrivateStorageItemPreferences:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mVideosPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 291
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mPrivateStorageItemPreferences:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mAudioPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mPrivateStorageItemPreferences:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mAppsPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mPrivateStorageItemPreferences:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mGamesPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mPrivateStorageItemPreferences:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mDocumentsAndOtherPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 295
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mPrivateStorageItemPreferences:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mSystemPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 296
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mPrivateStorageItemPreferences:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mTrashPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 298
    :cond_1
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mImagesPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 299
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mVideosPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 300
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mAudioPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 301
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mAppsPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 302
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mGamesPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 303
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mDocumentsAndOtherPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 304
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mSystemPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 305
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mTrashPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 308
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mPrivateStorageItemPreferences:Ljava/util/List;

    sget-object v1, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController$$ExternalSyntheticLambda0;

    .line 309
    invoke-static {v1}, Ljava/util/Comparator;->comparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    move-result-object v1

    .line 308
    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/16 v0, 0xc8

    .line 311
    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mPrivateStorageItemPreferences:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/deviceinfo/StorageItemPreference;

    add-int/lit8 v3, v0, -0x1

    .line 312
    invoke-virtual {v2, v0}, Landroidx/preference/Preference;->setOrder(I)V

    .line 313
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    move v0, v3

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 354
    iput-object p1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    const-string v0, "pref_public_storage"

    .line 355
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mPublicStoragePreference:Landroidx/preference/Preference;

    const-string v0, "pref_images"

    .line 356
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/deviceinfo/StorageItemPreference;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mImagesPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    const-string v0, "pref_videos"

    .line 357
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/deviceinfo/StorageItemPreference;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mVideosPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    const-string v0, "pref_audio"

    .line 358
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/deviceinfo/StorageItemPreference;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mAudioPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    const-string v0, "pref_apps"

    .line 359
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/deviceinfo/StorageItemPreference;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mAppsPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    const-string v0, "pref_games"

    .line 360
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/deviceinfo/StorageItemPreference;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mGamesPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    const-string v0, "pref_documents_and_other"

    .line 361
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/deviceinfo/StorageItemPreference;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mDocumentsAndOtherPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    const-string v0, "pref_system"

    .line 362
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/deviceinfo/StorageItemPreference;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mSystemPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    const-string v0, "pref_trash"

    .line 363
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/deviceinfo/StorageItemPreference;

    iput-object p1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mTrashPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    return-void
.end method

.method getCurrentUserId()I
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mUserManager:Landroid/os/UserManager;

    iget-boolean p0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mIsWorkProfile:Z

    invoke-static {v0, p0}, Lcom/android/settings/Utils;->getCurrentUserId(Landroid/os/UserManager;Z)I

    move-result p0

    return p0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 5

    .line 177
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 180
    :cond_0
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x1

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v3, "pref_videos"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v2, 0x8

    goto/16 :goto_0

    :sswitch_1
    const-string v3, "pref_system"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x7

    goto :goto_0

    :sswitch_2
    const-string v3, "pref_documents_and_other"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x6

    goto :goto_0

    :sswitch_3
    const-string v3, "pref_images"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x5

    goto :goto_0

    :sswitch_4
    const-string v3, "pref_public_storage"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_5
    const-string v3, "pref_apps"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_6
    const-string v3, "pref_trash"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_7
    const-string v3, "pref_games"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    move v2, v4

    goto :goto_0

    :sswitch_8
    const-string v3, "pref_audio"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_0

    :cond_9
    move v2, v1

    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 213
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->handlePreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0

    .line 188
    :pswitch_0
    iget-object p1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mVideosUri:Landroid/net/Uri;

    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->launchActivityWithUri(Landroid/net/Uri;)V

    return v4

    .line 203
    :pswitch_1
    new-instance p1, Lcom/android/settings/deviceinfo/storage/StorageUtils$SystemInfoFragment;

    invoke-direct {p1}, Lcom/android/settings/deviceinfo/storage/StorageUtils$SystemInfoFragment;-><init>()V

    .line 204
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/Fragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 205
    iget-object p0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string v0, "SystemInfo"

    invoke-virtual {p1, p0, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return v4

    .line 200
    :pswitch_2
    iget-object p1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mDocumentsAndOtherUri:Landroid/net/Uri;

    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->launchActivityWithUri(Landroid/net/Uri;)V

    return v4

    .line 185
    :pswitch_3
    iget-object p1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mImagesUri:Landroid/net/Uri;

    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->launchActivityWithUri(Landroid/net/Uri;)V

    return v4

    .line 182
    :pswitch_4
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->launchPublicStorageIntent()V

    return v4

    .line 194
    :pswitch_5
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->launchAppsIntent()V

    return v4

    .line 208
    :pswitch_6
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->launchTrashIntent()V

    return v4

    .line 197
    :pswitch_7
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->launchGamesIntent()V

    return v4

    .line 191
    :pswitch_8
    iget-object p1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mAudioUri:Landroid/net/Uri;

    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->launchActivityWithUri(Landroid/net/Uri;)V

    return v4

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6228c546 -> :sswitch_8
        -0x61dd2e5b -> :sswitch_7
        -0x611e6de4 -> :sswitch_6
        -0x4d7d40f2 -> :sswitch_5
        -0x36b1fbbf -> :sswitch_4
        0x2a44c014 -> :sswitch_3
        0x377565c5 -> :sswitch_2
        0x3c06afcb -> :sswitch_1
        0x403cb8f4 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onEmptyTrashComplete()V
    .locals 5

    .line 493
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mTrashPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-wide/16 v1, 0x0

    .line 496
    iget-wide v3, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mTotalSize:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setStorageSize(JJ)V

    .line 497
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->updatePrivateStorageCategoryPreferencesOrder()V

    return-void
.end method

.method public onLoadFinished(Landroid/util/SparseArray;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$StorageResult;",
            ">;I)V"
        }
    .end annotation

    .line 368
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$StorageResult;

    .line 370
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mImagesPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    iget-wide v1, p2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$StorageResult;->imagesSize:J

    iget-wide v3, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mTotalSize:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setStorageSize(JJ)V

    .line 371
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mVideosPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    iget-wide v1, p2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$StorageResult;->videosSize:J

    iget-wide v3, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mTotalSize:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setStorageSize(JJ)V

    .line 372
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mAudioPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    iget-wide v1, p2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$StorageResult;->audioSize:J

    iget-wide v3, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mTotalSize:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setStorageSize(JJ)V

    .line 373
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mGamesPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    iget-wide v1, p2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$StorageResult;->gamesSize:J

    iget-wide v3, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mTotalSize:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setStorageSize(JJ)V

    .line 374
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mDocumentsAndOtherPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    iget-wide v1, p2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$StorageResult;->documentsAndOtherSize:J

    iget-wide v3, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mTotalSize:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setStorageSize(JJ)V

    .line 375
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mTrashPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    iget-wide v1, p2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$StorageResult;->trashSize:J

    iget-wide v3, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mTotalSize:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setStorageSize(JJ)V

    .line 377
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mSystemPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 381
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 382
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$StorageResult;

    .line 383
    iget-wide v4, v3, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$StorageResult;->gamesSize:J

    iget-wide v6, v3, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$StorageResult;->audioSize:J

    add-long/2addr v4, v6

    iget-wide v6, v3, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$StorageResult;->videosSize:J

    add-long/2addr v4, v6

    iget-wide v6, v3, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$StorageResult;->imagesSize:J

    add-long/2addr v4, v6

    iget-wide v6, v3, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$StorageResult;->documentsAndOtherSize:J

    add-long/2addr v4, v6

    iget-wide v6, v3, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$StorageResult;->trashSize:J

    add-long/2addr v4, v6

    iget-wide v6, v3, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$StorageResult;->allAppsExceptGamesSize:J

    add-long/2addr v4, v6

    add-long/2addr v0, v4

    .line 391
    iget-wide v3, v3, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$StorageResult;->duplicateCodeSize:J

    sub-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 394
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object p1

    .line 395
    new-instance v2, Landroid/os/StatFs;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    const-wide/32 v3, 0x40000000

    .line 397
    iget-wide v5, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mTotalSize:J

    invoke-virtual {v2}, Landroid/os/StatFs;->getTotalBytes()J

    move-result-wide v7

    sub-long/2addr v5, v7

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 398
    iget-object p1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mSystemPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    iget-wide v4, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mTotalSize:J

    invoke-virtual {p1, v2, v3, v4, v5}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setStorageSize(JJ)V

    .line 400
    iget-wide v4, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mUsedBytes:J

    sub-long/2addr v4, v0

    sub-long/2addr v4, v2

    .line 402
    iget-object p1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mAppsPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    iget-wide v6, p2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$StorageResult;->allAppsExceptGamesSize:J

    add-long/2addr v6, v4

    iget-wide v4, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mTotalSize:J

    invoke-virtual {p1, v6, v7, v4, v5}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setStorageSize(JJ)V

    .line 406
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "system size = "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", total size = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mTotalSize:J

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "StorageItemPreference"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "used size = "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mUsedBytes:J

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", attributed size = "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "apps size = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$StorageResult;->allAppsExceptGamesSize:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->updatePrivateStorageCategoryPreferencesOrder()V

    const/4 p1, 0x1

    .line 412
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->setPrivateStorageCategoryPreferencesVisibility(Z)V

    return-void
.end method

.method setPrivateStorageCategoryPreferencesVisibility(Z)V
    .locals 2

    .line 258
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    if-nez v0, :cond_0

    return-void

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mImagesPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 263
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mVideosPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 264
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mAudioPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 265
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mAppsPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 266
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mGamesPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 267
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mSystemPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 268
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mTrashPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 273
    iget-object p1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mSvp:Lcom/android/settingslib/deviceinfo/StorageVolumeProvider;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-interface {p1, v1}, Lcom/android/settingslib/deviceinfo/StorageVolumeProvider;->findEmulatedForPrivate(Landroid/os/storage/VolumeInfo;)Landroid/os/storage/VolumeInfo;

    move-result-object p1

    .line 274
    iget-object p0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mDocumentsAndOtherPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    if-eqz p1, :cond_1

    .line 275
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 274
    :cond_1
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_0

    .line 277
    :cond_2
    iget-object p0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mDocumentsAndOtherPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_0
    return-void
.end method

.method public setTotalSize(J)V
    .locals 0

    .line 420
    iput-wide p1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mTotalSize:J

    return-void
.end method

.method public setUsedSize(J)V
    .locals 0

    .line 416
    iput-wide p1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mUsedBytes:J

    return-void
.end method

.method public setVolume(Landroid/os/storage/VolumeInfo;)V
    .locals 1

    .line 225
    iput-object p1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mVolume:Landroid/os/storage/VolumeInfo;

    .line 227
    iget-object p1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mPublicStoragePreference:Landroidx/preference/Preference;

    if-eqz p1, :cond_0

    .line 228
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->isValidPublicVolume()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 233
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->isValidPrivateVolume()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 234
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->setPrivateStorageCategoryPreferencesVisibility(Z)V

    :cond_1
    return-void
.end method
