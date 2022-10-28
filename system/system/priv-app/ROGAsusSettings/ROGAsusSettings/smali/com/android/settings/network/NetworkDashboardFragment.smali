.class public Lcom/android/settings/network/NetworkDashboardFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "NetworkDashboardFragment.java"

# interfaces
.implements Lcom/android/settings/network/MobilePlanPreferenceController$MobilePlanPreferenceHost;
.implements Lcom/android/settings/wifi/WifiPrimarySwitchPreferenceController$WifiPrimarySwitchPreferenceHost;
.implements Lcom/android/settings/wifi/WifiDisconnectedDialog$WifiDisconnectedDialogListener;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# direct methods
.method public static synthetic $r8$lambda$xpbO2vkBudRVReWWWdurxy5oFcA(Lcom/android/settings/network/MobilePlanPreferenceController;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/settings/network/NetworkDashboardFragment;->lambda$onCreateDialog$0(Lcom/android/settings/network/MobilePlanPreferenceController;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 198
    new-instance v0, Lcom/android/settings/network/NetworkDashboardFragment$1;

    sget v1, Lcom/android/settings/R$xml;->network_and_internet:I

    invoke-direct {v0, v1}, Lcom/android/settings/network/NetworkDashboardFragment$1;-><init>(I)V

    sput-object v0, Lcom/android/settings/network/NetworkDashboardFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;Landroidx/fragment/app/Fragment;Lcom/android/settings/network/MobilePlanPreferenceController$MobilePlanPreferenceHost;Lcom/android/settings/wifi/WifiPrimarySwitchPreferenceController$WifiPrimarySwitchPreferenceHost;)Ljava/util/List;
    .locals 0

    .line 50
    invoke-static/range {p0 .. p5}, Lcom/android/settings/network/NetworkDashboardFragment;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;Landroidx/fragment/app/Fragment;Lcom/android/settings/network/MobilePlanPreferenceController$MobilePlanPreferenceHost;Lcom/android/settings/wifi/WifiPrimarySwitchPreferenceController$WifiPrimarySwitchPreferenceHost;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;Landroidx/fragment/app/Fragment;Lcom/android/settings/network/MobilePlanPreferenceController$MobilePlanPreferenceHost;Lcom/android/settings/wifi/WifiPrimarySwitchPreferenceController$WifiPrimarySwitchPreferenceHost;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settingslib/core/lifecycle/Lifecycle;",
            "Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;",
            "Landroidx/fragment/app/Fragment;",
            "Lcom/android/settings/network/MobilePlanPreferenceController$MobilePlanPreferenceHost;",
            "Lcom/android/settings/wifi/WifiPrimarySwitchPreferenceController$WifiPrimarySwitchPreferenceHost;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 106
    new-instance p3, Lcom/android/settings/network/MobilePlanPreferenceController;

    invoke-direct {p3, p0, p4}, Lcom/android/settings/network/MobilePlanPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/network/MobilePlanPreferenceController$MobilePlanPreferenceHost;)V

    .line 109
    invoke-static {p0}, Lcom/android/settings/Utils;->isProviderModelEnabled(Landroid/content/Context;)Z

    move-result p4

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move-object p4, v0

    goto :goto_0

    .line 111
    :cond_0
    new-instance p4, Lcom/android/settings/wifi/WifiPrimarySwitchPreferenceController;

    invoke-direct {p4, p0, p2, p5}, Lcom/android/settings/wifi/WifiPrimarySwitchPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;Lcom/android/settings/wifi/WifiPrimarySwitchPreferenceController$WifiPrimarySwitchPreferenceHost;)V

    .line 116
    :goto_0
    invoke-static {p0}, Lcom/android/settings/Utils;->isProviderModelEnabled(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 117
    new-instance v0, Lcom/android/settings/network/InternetPreferenceController;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/network/InternetPreferenceController;-><init>(Landroid/content/Context;Landroidx/lifecycle/Lifecycle;)V

    .line 120
    :cond_1
    new-instance p2, Lcom/android/settings/network/VpnPreferenceController;

    invoke-direct {p2, p0}, Lcom/android/settings/network/VpnPreferenceController;-><init>(Landroid/content/Context;)V

    .line 122
    new-instance p5, Lcom/android/settings/network/PrivateDnsPreferenceController;

    invoke-direct {p5, p0}, Lcom/android/settings/network/PrivateDnsPreferenceController;-><init>(Landroid/content/Context;)V

    if-eqz p1, :cond_3

    .line 126
    invoke-virtual {p1, p3}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    if-eqz p4, :cond_2

    .line 128
    invoke-virtual {p1, p4}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 130
    :cond_2
    invoke-virtual {p1, p2}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 131
    invoke-virtual {p1, p5}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 134
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 136
    new-instance v2, Lcom/android/settings/network/MobileNetworkSummaryController;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/network/MobileNetworkSummaryController;-><init>(Landroid/content/Context;Landroidx/lifecycle/Lifecycle;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    new-instance v2, Lcom/android/settings/network/EthernetPreferenceController;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/network/EthernetPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    new-instance v2, Lcom/android/settings/network/TetherPreferenceController;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/network/TetherPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    new-instance p2, Lcom/android/settings/network/ProxyPreferenceController;

    invoke-direct {p2, p0}, Lcom/android/settings/network/ProxyPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    invoke-interface {v1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p4, :cond_4

    .line 143
    invoke-interface {v1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    if-eqz v0, :cond_5

    .line 146
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    :cond_5
    invoke-interface {v1, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    invoke-static {p0}, Lcom/android/settings/Utils;->isProviderModelEnabled(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 150
    new-instance p2, Lcom/android/settings/network/NetworkProviderCallsSmsController;

    invoke-direct {p2, p0, p1}, Lcom/android/settings/network/NetworkProviderCallsSmsController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    :cond_6
    new-instance p1, Lcom/android/settings/network/MultiSimPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/network/MultiSimPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    new-instance p1, Lcom/android/settings/network/CallSettingsPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/network/CallSettingsPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method private static synthetic lambda$onCreateDialog$0(Lcom/android/settings/network/MobilePlanPreferenceController;Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, 0x0

    .line 180
    invoke-virtual {p0, p1}, Lcom/android/settings/network/MobilePlanPreferenceController;->setMobilePlanDialogMessage(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 6
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

    .line 99
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-object v0, p1

    move-object v3, p0

    move-object v4, p0

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Lcom/android/settings/network/NetworkDashboardFragment;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;Landroidx/fragment/app/Fragment;Lcom/android/settings/network/MobilePlanPreferenceController$MobilePlanPreferenceHost;Lcom/android/settings/wifi/WifiPrimarySwitchPreferenceController$WifiPrimarySwitchPreferenceHost;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getDialogMetricsCategory(I)I
    .locals 0

    const/4 p0, 0x1

    if-ne p0, p1, :cond_0

    const/16 p0, 0x261

    return p0

    :cond_0
    const/4 p0, 0x3

    if-ne p0, p1, :cond_1

    const/16 p0, 0x64

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public getHelpResource()I
    .locals 0

    .line 94
    sget p0, Lcom/android/settings/R$string;->help_url_network_dashboard:I

    return p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "NetworkDashboardFrag"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x2ea

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 68
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/Utils;->isProviderModelEnabled(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 69
    sget p0, Lcom/android/settings/R$xml;->network_provider_internet:I

    return p0

    .line 71
    :cond_0
    sget p0, Lcom/android/settings/R$xml;->network_and_internet:I

    return p0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 77
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 79
    invoke-static {p1}, Lcom/android/settings/Utils;->isProviderModelEnabled(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 80
    const-class p1, Lcom/android/settings/network/MultiNetworkHeaderController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/network/MultiNetworkHeaderController;

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/network/MultiNetworkHeaderController;->init(Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 82
    :cond_0
    const-class p1, Lcom/android/settings/network/AirplaneModePreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/network/AirplaneModePreferenceController;

    invoke-virtual {p1, p0}, Lcom/android/settings/network/AirplaneModePreferenceController;->setFragment(Landroidx/fragment/app/Fragment;)V

    .line 83
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object p1

    const-class v0, Lcom/android/settings/network/AllInOneTetherPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/LifecycleObserver;

    invoke-virtual {p1, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 4

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreateDialog: dialogId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkDashboardFrag"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 185
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object p0

    return-object p0

    .line 183
    :cond_0
    new-instance p1, Lcom/android/settings/wifi/WifiDisconnectedDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lcom/android/settings/wifi/WifiDisconnectedDialog;-><init>(Landroid/content/Context;Lcom/android/settings/wifi/WifiDisconnectedDialog$WifiDisconnectedDialogListener;)V

    return-object p1

    .line 174
    :cond_1
    const-class p1, Lcom/android/settings/network/MobilePlanPreferenceController;

    .line 175
    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/network/MobilePlanPreferenceController;

    .line 176
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 177
    invoke-virtual {p1}, Lcom/android/settings/network/MobilePlanPreferenceController;->getMobilePlanDialogMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 178
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 179
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string v1, "ok"

    const-string v2, "string"

    const-string v3, "android"

    invoke-virtual {p0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    new-instance v1, Lcom/android/settings/network/NetworkDashboardFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/android/settings/network/NetworkDashboardFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/network/MobilePlanPreferenceController;)V

    invoke-virtual {v0, p0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 181
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    .line 88
    invoke-super {p0, p1, p2}, Lcom/android/settings/dashboard/DashboardFragment;->onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 89
    const-class p1, Lcom/android/settings/network/AllInOneTetherPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/network/AllInOneTetherPreferenceController;

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settings/network/AllInOneTetherPreferenceController;->initEnabler(Landroidx/lifecycle/Lifecycle;)V

    return-void
.end method

.method public onTurnOffHotspot()V
    .locals 1

    .line 231
    const-class v0, Lcom/android/settings/wifi/WifiPrimarySwitchPreferenceController;

    .line 232
    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p0

    check-cast p0, Lcom/android/settings/wifi/WifiPrimarySwitchPreferenceController;

    .line 233
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiPrimarySwitchPreferenceController;->turnOffHotspot()V

    return-void
.end method

.method public onTurnOffWifi()V
    .locals 1

    .line 224
    const-class v0, Lcom/android/settings/wifi/WifiPrimarySwitchPreferenceController;

    .line 225
    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p0

    check-cast p0, Lcom/android/settings/wifi/WifiPrimarySwitchPreferenceController;

    .line 226
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiPrimarySwitchPreferenceController;->turnOffWifi()V

    return-void
.end method

.method public showMobilePlanMessageDialog()V
    .locals 1

    const/4 v0, 0x1

    .line 161
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    return-void
.end method

.method public showWifiDisconnectedDialog()V
    .locals 1

    const/4 v0, 0x3

    .line 166
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    return-void
.end method
