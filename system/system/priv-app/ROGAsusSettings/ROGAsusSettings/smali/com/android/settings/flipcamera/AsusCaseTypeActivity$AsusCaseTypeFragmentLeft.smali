.class public Lcom/android/settings/flipcamera/AsusCaseTypeActivity$AsusCaseTypeFragmentLeft;
.super Lcom/android/settings/flipcamera/AsusCaseTypeActivity$AsusCaseTypeFragment;
.source "AsusCaseTypeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/flipcamera/AsusCaseTypeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AsusCaseTypeFragmentLeft"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 280
    invoke-direct {p0}, Lcom/android/settings/flipcamera/AsusCaseTypeActivity$AsusCaseTypeFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected refreshCategory()V
    .locals 4

    .line 284
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    .line 285
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "case_type_select_category"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceGroup;

    const/4 v1, 0x1

    .line 286
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 287
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "asus_cover_category"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceGroup;

    .line 288
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "asus_unlock_latch_category"

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/PreferenceGroup;

    .line 289
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    const-string v3, "case_rhinoshield_category"

    invoke-virtual {v2, v3}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/PreferenceGroup;

    const/4 v3, 0x0

    .line 290
    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 291
    invoke-virtual {v1, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 292
    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 293
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    const-string v0, "key_case_type_select"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    check-cast p0, Lcom/android/settings/widget/VideoPreferenceThreeFrame;

    if-eqz p0, :cond_0

    .line 294
    invoke-virtual {p0}, Lcom/android/settings/widget/VideoPreferenceThreeFrame;->updateBackground()V

    :cond_0
    return-void
.end method
