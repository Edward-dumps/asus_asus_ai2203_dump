.class public Lcom/android/settings/flipcamera/FlipCameraToolbarFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "FlipCameraToolbarFragment.java"

# interfaces
.implements Lcom/asus/commonresx/widget/OnMainSwitchChangeListener;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 124
    new-instance v0, Lcom/android/settings/flipcamera/FlipCameraToolbarFragment$1;

    invoke-direct {v0}, Lcom/android/settings/flipcamera/FlipCameraToolbarFragment$1;-><init>()V

    sput-object v0, Lcom/android/settings/flipcamera/FlipCameraToolbarFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method private static buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;
    .locals 2
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

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 119
    new-instance v1, Lcom/android/settings/flipcamera/FlipCameraToolbarTapIconController;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/flipcamera/FlipCameraToolbarTapIconController;-><init>(Landroid/content/Context;Landroidx/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    new-instance v1, Lcom/android/settings/flipcamera/FlipCameraToolbarSwipeGestureController;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/flipcamera/FlipCameraToolbarSwipeGestureController;-><init>(Landroid/content/Context;Landroidx/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private getSwitchState()Z
    .locals 2

    .line 102
    iget-object p0, p0, Lcom/android/settings/flipcamera/FlipCameraToolbarFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "flip_camera_toolbar_enable"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 0
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

    .line 108
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/settings/flipcamera/FlipCameraToolbarFragment;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "FlipCameraToolbarFragment"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 82
    sget p0, Lcom/android/settings/R$xml;->asus_flipcamera_toolbar_settings:I

    return p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 87
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 89
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/settings/SettingsActivity;

    .line 90
    invoke-virtual {p1}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SettingsMainSwitchBar;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/flipcamera/FlipCameraToolbarFragment;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    .line 91
    invoke-virtual {p1, p0}, Lcom/asus/commonresx/widget/MainSwitchBar;->addOnSwitchChangeListener(Lcom/asus/commonresx/widget/OnMainSwitchChangeListener;)V

    .line 92
    iget-object p1, p0, Lcom/android/settings/flipcamera/FlipCameraToolbarFragment;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p1}, Lcom/asus/commonresx/widget/MainSwitchBar;->show()V

    .line 93
    iget-object p1, p0, Lcom/android/settings/flipcamera/FlipCameraToolbarFragment;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-direct {p0}, Lcom/android/settings/flipcamera/FlipCameraToolbarFragment;->getSwitchState()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 71
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 72
    iput-object p1, p0, Lcom/android/settings/flipcamera/FlipCameraToolbarFragment;->mContext:Landroid/content/Context;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 64
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 65
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    .line 66
    sget p1, Lcom/android/settings/R$string;->asus_advanced_settings_flip_camera_toolbar_title:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/android/settings/flipcamera/FlipCameraToolbarFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "flip_camera_toolbar_enable"

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method
