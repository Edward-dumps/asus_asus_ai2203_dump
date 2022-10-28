.class public Lcom/android/settings/CustomThemeListPreference$CustomThemeListPreferenceDialogFragment;
.super Landroidx/preference/ListPreferenceDialogFragmentCompat;
.source "CustomThemeListPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/CustomThemeListPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomThemeListPreferenceDialogFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Landroidx/preference/ListPreferenceDialogFragmentCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    .line 43
    invoke-super {p0, p1}, Landroidx/preference/PreferenceDialogFragmentCompat;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    .line 45
    invoke-static {}, Lcom/android/settingslib/widget/ThemeUtils;->isDownloadTheme()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/settings/theme/ThemeUtils;->tintDialog(Landroid/app/Dialog;Landroid/content/Context;)V

    :cond_0
    return-object p1
.end method
