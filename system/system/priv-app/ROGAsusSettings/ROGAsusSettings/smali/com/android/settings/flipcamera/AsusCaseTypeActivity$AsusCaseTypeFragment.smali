.class public Lcom/android/settings/flipcamera/AsusCaseTypeActivity$AsusCaseTypeFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "AsusCaseTypeActivity.java"

# interfaces
.implements Lcom/android/settings/flipcamera/AsusCaseSelfieController$OnChangeListener;
.implements Lcom/android/settings/flipcamera/AsusRhinoShieldCameraController$OnChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/flipcamera/AsusCaseTypeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AsusCaseTypeFragment"
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAsusCaseModeObserver:Landroid/database/ContentObserver;

.field private mCr:Landroid/content/ContentResolver;

.field private final sControllers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 261
    new-instance v0, Lcom/android/settings/flipcamera/AsusCaseTypeActivity$AsusCaseTypeFragment$2;

    invoke-direct {v0}, Lcom/android/settings/flipcamera/AsusCaseTypeActivity$AsusCaseTypeFragment$2;-><init>()V

    sput-object v0, Lcom/android/settings/flipcamera/AsusCaseTypeActivity$AsusCaseTypeFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 97
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/flipcamera/AsusCaseTypeActivity$AsusCaseTypeFragment;->sControllers:Ljava/util/List;

    return-void
.end method

.method private buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settingslib/core/lifecycle/Lifecycle;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 227
    iget-object v0, p0, Lcom/android/settings/flipcamera/AsusCaseTypeActivity$AsusCaseTypeFragment;->sControllers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/android/settings/flipcamera/AsusCaseTypeActivity$AsusCaseTypeFragment;->sControllers:Ljava/util/List;

    new-instance v1, Lcom/android/settings/flipcamera/AsusCaseSelfieController;

    const-string v2, "key_asus_case_selfie"

    invoke-direct {v1, p1, p2, v2}, Lcom/android/settings/flipcamera/AsusCaseSelfieController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    iget-object v0, p0, Lcom/android/settings/flipcamera/AsusCaseTypeActivity$AsusCaseTypeFragment;->sControllers:Ljava/util/List;

    new-instance v1, Lcom/android/settings/flipcamera/AsusCaseSelfieController;

    const-string v2, "key_asus_case_selfie_none"

    invoke-direct {v1, p1, p2, v2}, Lcom/android/settings/flipcamera/AsusCaseSelfieController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    iget-object v0, p0, Lcom/android/settings/flipcamera/AsusCaseTypeActivity$AsusCaseTypeFragment;->sControllers:Ljava/util/List;

    new-instance v1, Lcom/android/settings/flipcamera/AsusRhinoShieldCameraController;

    const-string v2, "key_asus_rhinoshield_camera"

    invoke-direct {v1, p1, p2, v2}, Lcom/android/settings/flipcamera/AsusRhinoShieldCameraController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    iget-object v0, p0, Lcom/android/settings/flipcamera/AsusCaseTypeActivity$AsusCaseTypeFragment;->sControllers:Ljava/util/List;

    new-instance v1, Lcom/android/settings/flipcamera/AsusRhinoShieldCameraController;

    const-string v2, "key_asus_rhinoshield_camera_none"

    invoke-direct {v1, p1, p2, v2}, Lcom/android/settings/flipcamera/AsusRhinoShieldCameraController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    :cond_0
    iget-object p2, p0, Lcom/android/settings/flipcamera/AsusCaseTypeActivity$AsusCaseTypeFragment;->sControllers:Ljava/util/List;

    new-instance v0, Lcom/android/settings/flipcamera/FlipCameraAsusCoverModeController;

    invoke-direct {v0, p1}, Lcom/android/settings/flipcamera/FlipCameraAsusCoverModeController;-><init>(Landroid/content/Context;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    iget-object p2, p0, Lcom/android/settings/flipcamera/AsusCaseTypeActivity$AsusCaseTypeFragment;->sControllers:Ljava/util/List;

    new-instance v0, Lcom/android/settings/flipcamera/FlipCameraAsusCoverCalibrateController;

    invoke-direct {v0, p1}, Lcom/android/settings/flipcamera/FlipCameraAsusCoverCalibrateController;-><init>(Landroid/content/Context;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    iget-object p0, p0, Lcom/android/settings/flipcamera/AsusCaseTypeActivity$AsusCaseTypeFragment;->sControllers:Ljava/util/List;

    return-object p0
.end method

.method public static getCaseType(Landroid/content/ContentResolver;)I
    .locals 2

    const-string v0, "asus_cover_type"

    const/4 v1, 0x1

    .line 176
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static setCaseType(Landroid/content/ContentResolver;I)V
    .locals 1

    const-string v0, "asus_cover_type"

    .line 181
    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 222
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/flipcamera/AsusCaseTypeActivity$AsusCaseTypeFragment;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "AsusCaseTypeFragment"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 248
    sget p0, Lcom/android/settings/R$xml;->asus_case_type:I

    return p0
.end method

.method public onCheckedChanged(Landroidx/preference/Preference;)V
    .locals 2

    .line 240
    iget-object p0, p0, Lcom/android/settings/flipcamera/AsusCaseTypeActivity$AsusCaseTypeFragment;->sControllers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/core/AbstractPreferenceController;

    .line 241
    instance-of v1, v0, Lcom/android/settings/flipcamera/AsusCaseSelfieController;

    if-nez v1, :cond_1

    instance-of v1, v0, Lcom/android/settings/flipcamera/AsusRhinoShieldCameraController;

    if-eqz v1, :cond_0

    .line 242
    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 123
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 124
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/flipcamera/AsusCaseTypeActivity$AsusCaseTypeFragment;->mActivity:Landroid/app/Activity;

    .line 125
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/flipcamera/AsusCaseTypeActivity$AsusCaseTypeFragment;->mCr:Landroid/content/ContentResolver;

    return-void
.end method

.method public onPause()V
    .locals 4

    .line 161
    iget-object v0, p0, Lcom/android/settings/flipcamera/AsusCaseTypeActivity$AsusCaseTypeFragment;->mCr:Landroid/content/ContentResolver;

    if-eqz v0, :cond_0

    .line 162
    iget-object v1, p0, Lcom/android/settings/flipcamera/AsusCaseTypeActivity$AsusCaseTypeFragment;->mAsusCaseModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 166
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/flipcamera/AsusCaseTypeActivity$AsusCaseTypeFragment;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/core/AbstractPreferenceController;

    .line 167
    instance-of v2, v1, Lcom/android/settings/flipcamera/AsusCaseSelfieController;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    check-cast v1, Lcom/android/settings/flipcamera/AsusCaseSelfieController;

    invoke-virtual {v1, v3}, Lcom/android/settings/flipcamera/AsusCaseSelfieController;->setOnChangeListener(Lcom/android/settings/flipcamera/AsusCaseSelfieController$OnChangeListener;)V

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    .line 168
    check-cast v1, Lcom/android/settings/flipcamera/AsusCaseSelfieController;

    invoke-virtual {v1, v3}, Lcom/android/settings/flipcamera/AsusCaseSelfieController;->setOnChangeListener(Lcom/android/settings/flipcamera/AsusCaseSelfieController$OnChangeListener;)V

    goto :goto_0

    .line 169
    :cond_3
    instance-of v2, v1, Lcom/android/settings/flipcamera/AsusRhinoShieldCameraController;

    if-eqz v2, :cond_4

    check-cast v1, Lcom/android/settings/flipcamera/AsusRhinoShieldCameraController;

    invoke-virtual {v1, v3}, Lcom/android/settings/flipcamera/AsusRhinoShieldCameraController;->setOnChangeListener(Lcom/android/settings/flipcamera/AsusRhinoShieldCameraController$OnChangeListener;)V

    goto :goto_0

    :cond_4
    if-eqz v2, :cond_1

    .line 170
    check-cast v1, Lcom/android/settings/flipcamera/AsusRhinoShieldCameraController;

    invoke-virtual {v1, v3}, Lcom/android/settings/flipcamera/AsusRhinoShieldCameraController;->setOnChangeListener(Lcom/android/settings/flipcamera/AsusRhinoShieldCameraController$OnChangeListener;)V

    goto :goto_0

    .line 172
    :cond_5
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 136
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 138
    iget-object v0, p0, Lcom/android/settings/flipcamera/AsusCaseTypeActivity$AsusCaseTypeFragment;->mAsusCaseModeObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    .line 139
    new-instance v0, Lcom/android/settings/flipcamera/AsusCaseTypeActivity$AsusCaseTypeFragment$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/flipcamera/AsusCaseTypeActivity$AsusCaseTypeFragment$1;-><init>(Lcom/android/settings/flipcamera/AsusCaseTypeActivity$AsusCaseTypeFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/flipcamera/AsusCaseTypeActivity$AsusCaseTypeFragment;->mAsusCaseModeObserver:Landroid/database/ContentObserver;

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/android/settings/flipcamera/AsusCaseTypeActivity$AsusCaseTypeFragment;->mCr:Landroid/content/ContentResolver;

    const-string v1, "asus_cover_type"

    .line 147
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings/flipcamera/AsusCaseTypeActivity$AsusCaseTypeFragment;->mAsusCaseModeObserver:Landroid/database/ContentObserver;

    .line 146
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 151
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/flipcamera/AsusCaseTypeActivity$AsusCaseTypeFragment;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/core/AbstractPreferenceController;

    .line 152
    instance-of v2, v1, Lcom/android/settings/flipcamera/AsusCaseSelfieController;

    if-eqz v2, :cond_2

    check-cast v1, Lcom/android/settings/flipcamera/AsusCaseSelfieController;

    invoke-virtual {v1, p0}, Lcom/android/settings/flipcamera/AsusCaseSelfieController;->setOnChangeListener(Lcom/android/settings/flipcamera/AsusCaseSelfieController$OnChangeListener;)V

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    .line 153
    check-cast v1, Lcom/android/settings/flipcamera/AsusCaseSelfieController;

    invoke-virtual {v1, p0}, Lcom/android/settings/flipcamera/AsusCaseSelfieController;->setOnChangeListener(Lcom/android/settings/flipcamera/AsusCaseSelfieController$OnChangeListener;)V

    goto :goto_0

    .line 154
    :cond_3
    instance-of v2, v1, Lcom/android/settings/flipcamera/AsusRhinoShieldCameraController;

    if-eqz v2, :cond_4

    check-cast v1, Lcom/android/settings/flipcamera/AsusRhinoShieldCameraController;

    invoke-virtual {v1, p0}, Lcom/android/settings/flipcamera/AsusRhinoShieldCameraController;->setOnChangeListener(Lcom/android/settings/flipcamera/AsusRhinoShieldCameraController$OnChangeListener;)V

    goto :goto_0

    :cond_4
    if-eqz v2, :cond_1

    .line 155
    check-cast v1, Lcom/android/settings/flipcamera/AsusRhinoShieldCameraController;

    invoke-virtual {v1, p0}, Lcom/android/settings/flipcamera/AsusRhinoShieldCameraController;->setOnChangeListener(Lcom/android/settings/flipcamera/AsusRhinoShieldCameraController$OnChangeListener;)V

    goto :goto_0

    :cond_5
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 130
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 131
    invoke-virtual {p0}, Lcom/android/settings/flipcamera/AsusCaseTypeActivity$AsusCaseTypeFragment;->refreshCategory()V

    return-void
.end method

.method protected refreshCategory()V
    .locals 7

    .line 185
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v1, v0, :cond_1

    .line 186
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v3, "case_type_select_category"

    invoke-virtual {v0, v3}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceGroup;

    if-eqz v0, :cond_0

    .line 187
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 188
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-static {p0, v0, v2}, Lcom/asus/commonresx/AsusResxUtils;->updateLayoutForPreferenceFragmentCompat(Landroidx/preference/PreferenceFragmentCompat;Landroid/view/View;Z)V

    .line 190
    :cond_1
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v3, "asus_cover_category"

    invoke-virtual {v0, v3}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceGroup;

    .line 191
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v3

    const-string v4, "asus_unlock_latch_category"

    invoke-virtual {v3, v4}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Landroidx/preference/PreferenceGroup;

    .line 192
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v4

    const-string v5, "case_rhinoshield_category"

    invoke-virtual {v4, v5}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Landroidx/preference/PreferenceGroup;

    .line 193
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v5

    const-string v6, "key_case_type_select"

    invoke-virtual {v5, v6}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/android/settings/widget/VideoPreferenceThreeFrame;

    if-eqz v5, :cond_2

    .line 194
    invoke-virtual {v5}, Lcom/android/settings/widget/VideoPreferenceThreeFrame;->updateBackground()V

    .line 196
    :cond_2
    iget-object v5, p0, Lcom/android/settings/flipcamera/AsusCaseTypeActivity$AsusCaseTypeFragment;->mCr:Landroid/content/ContentResolver;

    invoke-static {v5}, Lcom/android/settings/flipcamera/AsusCaseTypeActivity$AsusCaseTypeFragment;->getCaseType(Landroid/content/ContentResolver;)I

    move-result v5

    if-eqz v0, :cond_6

    if-eqz v3, :cond_6

    if-nez v4, :cond_3

    goto :goto_0

    :cond_3
    const/4 v6, 0x1

    if-eq v5, v6, :cond_5

    if-eq v5, v1, :cond_4

    .line 213
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 214
    invoke-virtual {v3, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 215
    invoke-virtual {v4, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_0

    .line 200
    :cond_4
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 201
    invoke-virtual {v3, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 202
    invoke-virtual {v4, v6}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 203
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, p0, :cond_6

    .line 204
    sget p0, Lcom/android/settings/R$layout;->asusresx_preference_category_with_first_place_material:I

    invoke-virtual {v4, p0}, Landroidx/preference/Preference;->setLayoutResource(I)V

    goto :goto_0

    .line 207
    :cond_5
    invoke-virtual {v0, v6}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 208
    invoke-virtual {v3, v6}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 209
    invoke-virtual {v4, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_6
    :goto_0
    return-void
.end method
