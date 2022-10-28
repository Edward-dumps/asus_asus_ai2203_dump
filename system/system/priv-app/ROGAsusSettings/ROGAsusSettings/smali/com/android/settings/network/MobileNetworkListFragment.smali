.class public Lcom/android/settings/network/MobileNetworkListFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "MobileNetworkListFragment.java"


# static fields
.field static final KEY_PREFERENCE_CATEGORY_DOWNLOADED_SIM:Ljava/lang/String; = "provider_model_downloaded_sim_category"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 83
    new-instance v0, Lcom/android/settings/network/MobileNetworkListFragment$1;

    invoke-direct {v0}, Lcom/android/settings/network/MobileNetworkListFragment$1;-><init>()V

    sput-object v0, Lcom/android/settings/network/MobileNetworkListFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 3
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

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 66
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isProviderModelEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 67
    new-instance v1, Lcom/android/settings/network/NetworkProviderSimsCategoryController;

    const-string v2, "provider_model_sim_category"

    invoke-direct {v1, p1, v2}, Lcom/android/settings/network/NetworkProviderSimsCategoryController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Lcom/android/settings/network/NetworkProviderSimsCategoryController;->init(Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroidx/fragment/app/Fragment;)V

    .line 70
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    new-instance v1, Lcom/android/settings/network/NetworkProviderDownloadedSimsCategoryController;

    const-string v2, "provider_model_downloaded_sim_category"

    invoke-direct {v1, p1, v2}, Lcom/android/settings/network/NetworkProviderDownloadedSimsCategoryController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/android/settings/network/NetworkProviderDownloadedSimsCategoryController;->init(Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 76
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 78
    :cond_0
    new-instance p1, Lcom/android/settings/network/MobileNetworkListController;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v2

    invoke-direct {p1, v1, v2, p0}, Lcom/android/settings/network/MobileNetworkListController;-><init>(Landroid/content/Context;Landroidx/lifecycle/Lifecycle;Landroidx/fragment/app/Fragment;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-object v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "NetworkListFragment"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x65b

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 47
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/Utils;->isProviderModelEnabled(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 48
    sget p0, Lcom/android/settings/R$xml;->network_provider_sims_list:I

    goto :goto_0

    .line 49
    :cond_0
    sget p0, Lcom/android/settings/R$xml;->mobile_network_list:I

    :goto_0
    return p0
.end method
