.class public Lcom/android/settings/asusadvancedsettings/ScreenshotSettingsDashboardFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "ScreenshotSettingsDashboardFragment.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 69
    new-instance v0, Lcom/android/settings/asusadvancedsettings/ScreenshotSettingsDashboardFragment$1;

    invoke-direct {v0}, Lcom/android/settings/asusadvancedsettings/ScreenshotSettingsDashboardFragment$1;-><init>()V

    sput-object v0, Lcom/android/settings/asusadvancedsettings/ScreenshotSettingsDashboardFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method private static buildPreferenceControllers(Landroid/content/Context;Lcom/android/settings/asusadvancedsettings/ScreenshotSettingsDashboardFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settings/asusadvancedsettings/ScreenshotSettingsDashboardFragment;",
            "Lcom/android/settingslib/core/lifecycle/Lifecycle;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 58
    new-instance v1, Lcom/android/settings/screenshot/RecentKeyController;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/settings/screenshot/RecentKeyController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    new-instance v1, Lcom/android/settings/screenshot/ScreenShotSoundController;

    const-string v2, "screenshot_sound"

    invoke-direct {v1, p0, v2}, Lcom/android/settings/screenshot/ScreenShotSoundController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    new-instance v1, Lcom/android/settings/screenshot/ScreenShotNotifyController;

    const-string v2, "screenshot_notify"

    invoke-direct {v1, p0, v2}, Lcom/android/settings/screenshot/ScreenShotNotifyController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    new-instance v1, Lcom/android/settings/screenshot/ScreenShotFormatController;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/settings/screenshot/ScreenShotFormatController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    new-instance p1, Lcom/android/settings/display/ThreeFingerScreenShotController;

    invoke-direct {p1, p0}, Lcom/android/settings/display/ThreeFingerScreenShotController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
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

    .line 52
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    invoke-static {p1, p0, v0}, Lcom/android/settings/asusadvancedsettings/ScreenshotSettingsDashboardFragment;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settings/asusadvancedsettings/ScreenshotSettingsDashboardFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "ScreenshotSettingsDashboardFragment"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 42
    sget p0, Lcom/android/settings/R$xml;->screenshot_settings:I

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 47
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method
