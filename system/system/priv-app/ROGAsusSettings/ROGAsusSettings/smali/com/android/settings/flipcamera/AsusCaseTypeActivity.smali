.class public Lcom/android/settings/flipcamera/AsusCaseTypeActivity;
.super Lcom/android/settings/SubSettings;
.source "AsusCaseTypeActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/flipcamera/AsusCaseTypeActivity$AsusCaseTypeFragmentLeft;,
        Lcom/android/settings/flipcamera/AsusCaseTypeActivity$AsusCaseTypeFragment;
    }
.end annotation


# instance fields
.field private isLand:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Lcom/android/settings/SubSettings;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lcom/android/settings/flipcamera/AsusCaseTypeActivity;->isLand:Z

    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 2

    .line 48
    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 49
    const-class p0, Lcom/android/settings/flipcamera/AsusCaseTypeActivity$AsusCaseTypeFragment;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v1, ":settings:show_fragment"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method protected getLayoutResourcesId()I
    .locals 0

    .line 77
    iget-boolean p0, p0, Lcom/android/settings/flipcamera/AsusCaseTypeActivity;->isLand:Z

    if-nez p0, :cond_0

    .line 78
    sget p0, Lcom/android/settings/R$layout;->settings_main_prefs:I

    return p0

    .line 80
    :cond_0
    sget p0, Lcom/android/settings/R$layout;->settings_main_prefs_two_column:I

    return p0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 0

    .line 55
    const-class p0, Lcom/android/settings/flipcamera/AsusCaseTypeActivity$AsusCaseTypeFragment;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 61
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/flipcamera/AsusCaseTypeActivity;->isLand:Z

    .line 62
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    iget-boolean p1, p0, Lcom/android/settings/flipcamera/AsusCaseTypeActivity;->isLand:Z

    if-eqz p1, :cond_1

    .line 64
    invoke-virtual {p0}, Lcom/android/settings/flipcamera/AsusCaseTypeActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, ":settings:show_fragment"

    .line 65
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 66
    invoke-virtual {p0, v0, p1}, Lcom/android/settings/SettingsActivity;->launchSettingFragment(Ljava/lang/String;Landroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 72
    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->onResume()V

    return-void
.end method

.method protected switchToFragment(Ljava/lang/String;Landroid/os/Bundle;ZILjava/lang/CharSequence;)V
    .locals 3

    .line 87
    iget-boolean v0, p0, Lcom/android/settings/flipcamera/AsusCaseTypeActivity;->isLand:Z

    if-eqz v0, :cond_0

    .line 88
    const-class v0, Lcom/android/settings/flipcamera/AsusCaseTypeActivity$AsusCaseTypeFragmentLeft;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/android/settings/Utils;->getTargetFragment(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 89
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    .line 90
    sget v2, Lcom/android/settings/R$id;->left_content:I

    invoke-virtual {v1, v2, v0}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 91
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 92
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->executePendingTransactions()Z

    .line 94
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/android/settings/SettingsActivity;->switchToFragment(Ljava/lang/String;Landroid/os/Bundle;ZILjava/lang/CharSequence;)V

    return-void
.end method
