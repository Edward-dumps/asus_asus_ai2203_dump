.class Lcom/android/settings/asusadvancedsettings/AsusAdvancedSettingsDashboardFragment$2;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "AsusAdvancedSettingsDashboardFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/asusadvancedsettings/AsusAdvancedSettingsDashboardFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 169
    invoke-direct {p0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 1
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

    .line 183
    invoke-super {p0, p1}, Lcom/android/settings/search/BaseSearchIndexProvider;->getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    .line 184
    invoke-static {p1}, Lcom/android/settings/asusadvancedsettings/OneHandModeSettingsController;->isOneHandCtrlEnable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "gesture_one_handed"

    .line 185
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    :cond_0
    invoke-static {p1}, Lcom/android/settings/flipcamera/AsusFlipCameraFeaturesController;->isPackageExist(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "flip_camera_features"

    .line 188
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
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

    .line 173
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 175
    new-instance p2, Landroid/provider/SearchIndexableResource;

    invoke-direct {p2, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 176
    sget p1, Lcom/android/settings/R$xml;->asus_advanced_settings:I

    iput p1, p2, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 177
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method
