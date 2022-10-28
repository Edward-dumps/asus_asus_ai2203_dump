.class public Lcom/android/settings/DisplaySettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "DisplaySettings.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 120
    new-instance v0, Lcom/android/settings/DisplaySettings$1;

    sget v1, Lcom/android/settings/R$xml;->display_settings_v2:I

    invoke-direct {v0, v1}, Lcom/android/settings/DisplaySettings$1;-><init>(I)V

    sput-object v0, Lcom/android/settings/DisplaySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;
    .locals 0

    .line 54
    invoke-static {p0, p1}, Lcom/android/settings/DisplaySettings;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;
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

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 93
    new-instance v1, Lcom/android/settings/display/CameraGesturePreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/display/CameraGesturePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    new-instance v1, Lcom/android/settings/display/LiftToWakePreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/display/LiftToWakePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    new-instance v1, Lcom/android/settings/display/ScreenSaverPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/display/ScreenSaverPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    new-instance v1, Lcom/android/settings/display/TapToWakePreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/display/TapToWakePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    new-instance v1, Lcom/android/settings/display/VrDisplayPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/display/VrDisplayPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    new-instance v1, Lcom/android/settings/display/ShowOperatorNamePreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/display/ShowOperatorNamePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    new-instance v1, Lcom/android/settings/display/ThemePreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/display/ThemePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    new-instance v1, Lcom/android/settings/display/BrightnessLevelPreferenceController;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/display/BrightnessLevelPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    new-instance v1, Lcom/android/settings/display/ScreenColorModeController;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/display/ScreenColorModeController;-><init>(Landroid/content/Context;Landroidx/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    new-instance v1, Lcom/android/settings/display/ScreenTimeoutPreferenceController;

    const-string v2, "screen_timeout"

    invoke-direct {v1, p0, v2, p1}, Lcom/android/settings/display/ScreenTimeoutPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Landroidx/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    new-instance v1, Lcom/android/settings/display/BrightnessBoosterPreferenceController;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/display/BrightnessBoosterPreferenceController;-><init>(Landroid/content/Context;Landroidx/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    new-instance v1, Lcom/android/settings/display/AsusDCDimmingPreferenceController;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/display/AsusDCDimmingPreferenceController;-><init>(Landroid/content/Context;Landroidx/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    new-instance v1, Lcom/android/settings/display/SmartReadingPreferenceController;

    const-string v2, "smart_reading"

    invoke-direct {v1, p0, v2}, Lcom/android/settings/display/SmartReadingPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    new-instance v1, Lcom/android/settings/display/FrameRatePreferenceController;

    const-string v2, "frame_rate"

    invoke-direct {v1, p0, v2, p1}, Lcom/android/settings/display/FrameRatePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Landroidx/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    new-instance v1, Lcom/android/settings/display/AnimationSpeedPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/display/AnimationSpeedPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    new-instance v1, Lcom/android/settings/display/AppAspectRatioPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/display/AppAspectRatioPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    new-instance v1, Lcom/android/settings/display/PowerKeyController;

    invoke-direct {v1, p0}, Lcom/android/settings/display/PowerKeyController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    new-instance v1, Lcom/android/settings/display/AsusAlwaysOnPreferenceController;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/display/AsusAlwaysOnPreferenceController;-><init>(Landroid/content/Context;Landroidx/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    new-instance v1, Lcom/android/settings/display/VisualEnhancementPreferenceController;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/display/VisualEnhancementPreferenceController;-><init>(Landroid/content/Context;Landroidx/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    new-instance v1, Lcom/android/settings/display/QuickSettingLayoutPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/display/QuickSettingLayoutPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    new-instance v1, Lcom/android/settings/notification/PulseNotificationPreferenceController;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/notification/PulseNotificationPreferenceController;-><init>(Landroid/content/Context;Landroidx/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
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

    .line 82
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/settings/DisplaySettings;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getHelpResource()I
    .locals 0

    .line 87
    sget p0, Lcom/android/settings/R$string;->help_uri_display:I

    return p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "DisplaySettings"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x2e

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 72
    sget p0, Lcom/android/settings/R$xml;->display_settings_v2:I

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 77
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method
