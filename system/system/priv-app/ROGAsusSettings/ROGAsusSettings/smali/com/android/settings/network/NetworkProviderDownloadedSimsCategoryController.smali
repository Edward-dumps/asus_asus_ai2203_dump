.class public Lcom/android/settings/network/NetworkProviderDownloadedSimsCategoryController;
.super Lcom/android/settings/widget/PreferenceCategoryController;
.source "NetworkProviderDownloadedSimsCategoryController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;


# static fields
.field private static final KEY_PREFERENCE_CATEGORY_DOWNLOADED_SIM:Ljava/lang/String; = "provider_model_downloaded_sim_category"


# instance fields
.field private mNetworkProviderDownloadedSimListController:Lcom/android/settings/network/NetworkProviderDownloadedSimListController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/android/settings/widget/PreferenceCategoryController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->copy()V

    return-void
.end method

.method protected createDownloadedSimListController(Lcom/android/settingslib/core/lifecycle/Lifecycle;)Lcom/android/settings/network/NetworkProviderDownloadedSimListController;
    .locals 1

    .line 31
    new-instance v0, Lcom/android/settings/network/NetworkProviderDownloadedSimListController;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/network/NetworkProviderDownloadedSimListController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    return-object v0
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    .line 46
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "provider_model_downloaded_sim_category"

    .line 47
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    .line 49
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 50
    iget-object p0, p0, Lcom/android/settings/network/NetworkProviderDownloadedSimsCategoryController;->mNetworkProviderDownloadedSimListController:Lcom/android/settings/network/NetworkProviderDownloadedSimListController;

    invoke-virtual {p0, p1}, Lcom/android/settings/network/NetworkProviderDownloadedSimListController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/android/settings/network/NetworkProviderDownloadedSimsCategoryController;->mNetworkProviderDownloadedSimListController:Lcom/android/settings/network/NetworkProviderDownloadedSimListController;

    if-eqz p0, :cond_1

    .line 37
    invoke-virtual {p0}, Lcom/android/settings/network/NetworkProviderDownloadedSimListController;->isAvailable()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x2

    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/settings/slices/SliceBackgroundWorker;",
            ">;"
        }
    .end annotation

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getBackgroundWorkerClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public init(Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lcom/android/settings/network/NetworkProviderDownloadedSimsCategoryController;->createDownloadedSimListController(Lcom/android/settingslib/core/lifecycle/Lifecycle;)Lcom/android/settings/network/NetworkProviderDownloadedSimListController;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/NetworkProviderDownloadedSimsCategoryController;->mNetworkProviderDownloadedSimListController:Lcom/android/settings/network/NetworkProviderDownloadedSimListController;

    return-void
.end method

.method public bridge synthetic isCopyableSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isCopyableSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isPublicSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isSliceable()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
