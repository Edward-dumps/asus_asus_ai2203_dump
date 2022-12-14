.class public Lcom/android/settings/applications/appinfo/ExtraAppInfoPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "ExtraAppInfoPreferenceController.java"


# instance fields
.field private final mExtraAppInfoFeatureProvider:Lcom/android/settings/applications/appinfo/ExtraAppInfoFeatureProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 36
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/overlay/FeatureFactory;->getExtraAppInfoFeatureProvider()Lcom/android/settings/applications/appinfo/ExtraAppInfoFeatureProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/appinfo/ExtraAppInfoPreferenceController;->mExtraAppInfoFeatureProvider:Lcom/android/settings/applications/appinfo/ExtraAppInfoFeatureProvider;

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->copy()V

    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 61
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 63
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/ExtraAppInfoPreferenceController;->mExtraAppInfoFeatureProvider:Lcom/android/settings/applications/appinfo/ExtraAppInfoFeatureProvider;

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    .line 65
    iget-object p0, p0, Lcom/android/settings/applications/appinfo/ExtraAppInfoPreferenceController;->mExtraAppInfoFeatureProvider:Lcom/android/settings/applications/appinfo/ExtraAppInfoFeatureProvider;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/android/settings/applications/appinfo/ExtraAppInfoFeatureProvider;->isEnabled(Landroid/content/Context;)Z

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/ExtraAppInfoPreferenceController;->mExtraAppInfoFeatureProvider:Lcom/android/settings/applications/appinfo/ExtraAppInfoFeatureProvider;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-interface {v0, p0}, Lcom/android/settings/applications/appinfo/ExtraAppInfoFeatureProvider;->isSupported(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x3

    :goto_0
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

.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/ExtraAppInfoPreferenceController;->mExtraAppInfoFeatureProvider:Lcom/android/settings/applications/appinfo/ExtraAppInfoFeatureProvider;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-interface {v0, p0}, Lcom/android/settings/applications/appinfo/ExtraAppInfoFeatureProvider;->getSummary(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 47
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/ExtraAppInfoPreferenceController;->mExtraAppInfoFeatureProvider:Lcom/android/settings/applications/appinfo/ExtraAppInfoFeatureProvider;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-interface {p1, p0}, Lcom/android/settings/applications/appinfo/ExtraAppInfoFeatureProvider;->launchExtraAppInfoSettings(Landroid/content/Context;)V

    const/4 p0, 0x1

    return p0

    .line 51
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->handlePreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
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

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/settings/applications/appinfo/ExtraAppInfoPreferenceController;->mExtraAppInfoFeatureProvider:Lcom/android/settings/applications/appinfo/ExtraAppInfoFeatureProvider;

    if-eqz p0, :cond_0

    .line 74
    invoke-interface {p0, p1}, Lcom/android/settings/applications/appinfo/ExtraAppInfoFeatureProvider;->setPackageName(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
