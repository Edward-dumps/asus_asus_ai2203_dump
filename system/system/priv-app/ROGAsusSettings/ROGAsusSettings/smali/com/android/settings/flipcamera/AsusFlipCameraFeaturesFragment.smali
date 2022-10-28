.class public Lcom/android/settings/flipcamera/AsusFlipCameraFeaturesFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "AsusFlipCameraFeaturesFragment.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private mHasInit:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 99
    new-instance v0, Lcom/android/settings/flipcamera/AsusFlipCameraFeaturesFragment$1;

    invoke-direct {v0}, Lcom/android/settings/flipcamera/AsusFlipCameraFeaturesFragment$1;-><init>()V

    sput-object v0, Lcom/android/settings/flipcamera/AsusFlipCameraFeaturesFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    .line 31
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/android/settings/flipcamera/AsusFlipCameraFeaturesFragment;->mHasInit:Ljava/lang/Boolean;

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

    .line 53
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 55
    new-instance v0, Lcom/android/settings/flipcamera/FlipCameraToolbarController;

    invoke-direct {v0, p1}, Lcom/android/settings/flipcamera/FlipCameraToolbarController;-><init>(Landroid/content/Context;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    new-instance v0, Lcom/android/settings/flipcamera/FlipCameraConfirmDialogController;

    invoke-direct {v0, p1}, Lcom/android/settings/flipcamera/FlipCameraConfirmDialogController;-><init>(Landroid/content/Context;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    new-instance v0, Lcom/android/settings/flipcamera/QuickAngleShootingController;

    invoke-direct {v0, p1}, Lcom/android/settings/flipcamera/QuickAngleShootingController;-><init>(Landroid/content/Context;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    new-instance v0, Lcom/android/settings/flipcamera/QuickAngleShootingRestoreController;

    invoke-direct {v0, p1}, Lcom/android/settings/flipcamera/QuickAngleShootingRestoreController;-><init>(Landroid/content/Context;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "AsusFlipCameraFeatures"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 69
    sget p0, Lcom/android/settings/R$xml;->asus_flip_camera_features:I

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 36
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 42
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method
