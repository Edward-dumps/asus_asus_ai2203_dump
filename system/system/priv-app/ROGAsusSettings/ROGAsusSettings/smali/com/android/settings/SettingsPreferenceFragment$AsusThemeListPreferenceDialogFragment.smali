.class public Lcom/android/settings/SettingsPreferenceFragment$AsusThemeListPreferenceDialogFragment;
.super Landroidx/preference/ListPreferenceDialogFragmentCompat;
.source "SettingsPreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SettingsPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AsusThemeListPreferenceDialogFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 784
    invoke-direct {p0}, Landroidx/preference/ListPreferenceDialogFragmentCompat;-><init>()V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Landroidx/preference/ListPreferenceDialogFragmentCompat;
    .locals 3

    .line 788
    new-instance v0, Lcom/android/settings/SettingsPreferenceFragment$AsusThemeListPreferenceDialogFragment;

    invoke-direct {v0}, Lcom/android/settings/SettingsPreferenceFragment$AsusThemeListPreferenceDialogFragment;-><init>()V

    .line 789
    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    const-string v2, "key"

    .line 790
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 791
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    .line 797
    invoke-super {p0, p1}, Landroidx/preference/PreferenceDialogFragmentCompat;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    .line 799
    invoke-static {}, Lcom/android/settingslib/widget/ThemeUtils;->isDownloadTheme()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 800
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/settings/theme/ThemeUtils;->tintDialog(Landroid/app/Dialog;Landroid/content/Context;)V

    :cond_0
    return-object p1
.end method
