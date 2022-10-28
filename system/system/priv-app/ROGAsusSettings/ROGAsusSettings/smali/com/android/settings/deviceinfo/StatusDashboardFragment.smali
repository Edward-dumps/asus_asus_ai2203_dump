.class public Lcom/android/settings/deviceinfo/StatusDashboardFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "StatusDashboardFragment.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 89
    new-instance v0, Lcom/android/settings/deviceinfo/StatusDashboardFragment$1;

    invoke-direct {v0}, Lcom/android/settings/deviceinfo/StatusDashboardFragment$1;-><init>()V

    sput-object v0, Lcom/android/settings/deviceinfo/StatusDashboardFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected buildPreferenceControllers(Landroid/content/Context;Lcom/android/settings/deviceinfo/StatusDashboardFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settings/deviceinfo/StatusDashboardFragment;",
            "Lcom/android/settingslib/core/lifecycle/Lifecycle;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 74
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 75
    new-instance p2, Lcom/android/settings/deviceinfo/BatteryStatusController;

    invoke-direct {p2, p1, p3}, Lcom/android/settings/deviceinfo/BatteryStatusController;-><init>(Landroid/content/Context;Landroidx/lifecycle/Lifecycle;)V

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    new-instance p2, Lcom/android/settings/deviceinfo/BatteryLevelController;

    invoke-direct {p2, p1, p3}, Lcom/android/settings/deviceinfo/BatteryLevelController;-><init>(Landroid/content/Context;Landroidx/lifecycle/Lifecycle;)V

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    new-instance p2, Lcom/android/settings/deviceinfo/simstatus/AsusSimStatusPreferenceController;

    const-string v0, "sim_status"

    invoke-direct {p2, p1, v0}, Lcom/android/settings/deviceinfo/simstatus/AsusSimStatusPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    new-instance p2, Lcom/android/settings/deviceinfo/IpAddressPreferenceController;

    invoke-direct {p2, p1, p3}, Lcom/android/settings/deviceinfo/IpAddressPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    new-instance p2, Lcom/android/settings/deviceinfo/WifiMacAddressPreferenceController;

    invoke-direct {p2, p1, p3}, Lcom/android/settings/deviceinfo/WifiMacAddressPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    new-instance p2, Lcom/android/settings/deviceinfo/BluetoothAddressPreferenceController;

    invoke-direct {p2, p1, p3}, Lcom/android/settings/deviceinfo/BluetoothAddressPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    new-instance p2, Lcom/android/settings/deviceinfo/SerialNumberPreferenceController;

    invoke-direct {p2, p1}, Lcom/android/settings/deviceinfo/SerialNumberPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    new-instance p2, Lcom/android/settings/deviceinfo/UptimePreferenceController;

    invoke-direct {p2, p1, p3}, Lcom/android/settings/deviceinfo/UptimePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

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

    .line 68
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {p0, p1, p0, v0}, Lcom/android/settings/deviceinfo/StatusDashboardFragment;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settings/deviceinfo/StatusDashboardFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "StatusDashboardFragment"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x2e8

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 58
    sget p0, Lcom/android/settings/R$xml;->device_info_status:I

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 63
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method
