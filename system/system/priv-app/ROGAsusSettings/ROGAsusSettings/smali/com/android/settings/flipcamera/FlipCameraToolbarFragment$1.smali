.class Lcom/android/settings/flipcamera/FlipCameraToolbarFragment$1;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "FlipCameraToolbarFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/flipcamera/FlipCameraToolbarFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 125
    invoke-direct {p0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 135
    invoke-super {p0, p1}, Lcom/android/settings/search/BaseSearchIndexProvider;->getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    .line 136
    invoke-static {p1}, Lcom/android/settings/flipcamera/AsusFlipCameraFeaturesController;->isPackageExist(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "toolbar_swipe_gesture"

    .line 137
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p1, "toolbar_tap_icon"

    .line 138
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p1, "flipcamera_toolbar_settings"

    .line 139
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method public getXmlResourcesToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List<",
            "Landroid/provider/SearchIndexableResource;",
            ">;"
        }
    .end annotation

    .line 129
    new-instance p0, Landroid/provider/SearchIndexableResource;

    invoke-direct {p0, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 130
    sget p1, Lcom/android/settings/R$xml;->asus_flipcamera_toolbar_settings:I

    iput p1, p0, Landroid/provider/SearchIndexableResource;->xmlResId:I

    const/4 p1, 0x1

    new-array p1, p1, [Landroid/provider/SearchIndexableResource;

    const/4 p2, 0x0

    aput-object p0, p1, p2

    .line 131
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
