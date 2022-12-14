.class public Lcom/android/settings/location/RecentLocationAccessSeeAllPreferenceController;
.super Lcom/android/settings/location/LocationBasePreferenceController;
.source "RecentLocationAccessSeeAllPreferenceController.java"


# instance fields
.field private mCategoryAllRecentLocationAccess:Landroidx/preference/PreferenceScreen;

.field private mPreference:Landroidx/preference/Preference;

.field private final mRecentLocationAccesses:Lcom/android/settingslib/location/RecentLocationAccesses;

.field private mShowSystem:Z

.field private mType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/android/settings/location/LocationBasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 41
    iput-boolean p2, p0, Lcom/android/settings/location/RecentLocationAccessSeeAllPreferenceController;->mShowSystem:Z

    const/4 p2, 0x3

    .line 43
    iput p2, p0, Lcom/android/settings/location/RecentLocationAccessSeeAllPreferenceController;->mType:I

    .line 47
    new-instance p2, Lcom/android/settingslib/location/RecentLocationAccesses;

    invoke-direct {p2, p1}, Lcom/android/settingslib/location/RecentLocationAccesses;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/location/RecentLocationAccessSeeAllPreferenceController;->mRecentLocationAccesses:Lcom/android/settingslib/location/RecentLocationAccesses;

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

    .line 57
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 58
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceScreen;

    iput-object p1, p0, Lcom/android/settings/location/RecentLocationAccessSeeAllPreferenceController;->mCategoryAllRecentLocationAccess:Landroidx/preference/PreferenceScreen;

    return-void
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

.method public onLocationModeChanged(IZ)V
    .locals 0

    .line 52
    iget-object p2, p0, Lcom/android/settings/location/RecentLocationAccessSeeAllPreferenceController;->mCategoryAllRecentLocationAccess:Landroidx/preference/PreferenceScreen;

    iget-object p0, p0, Lcom/android/settings/location/LocationBasePreferenceController;->mLocationEnabler:Lcom/android/settings/location/LocationEnabler;

    invoke-virtual {p0, p1}, Lcom/android/settings/location/LocationEnabler;->isEnabled(I)Z

    move-result p0

    invoke-virtual {p2, p0}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method public setProfileType(I)V
    .locals 0

    .line 98
    iput p1, p0, Lcom/android/settings/location/RecentLocationAccessSeeAllPreferenceController;->mType:I

    return-void
.end method

.method public setShowSystem(Z)V
    .locals 0

    .line 105
    iput-boolean p1, p0, Lcom/android/settings/location/RecentLocationAccessSeeAllPreferenceController;->mShowSystem:Z

    .line 106
    iget-object p1, p0, Lcom/android/settings/location/RecentLocationAccessSeeAllPreferenceController;->mPreference:Landroidx/preference/Preference;

    if-eqz p1, :cond_0

    .line 107
    invoke-virtual {p0, p1}, Lcom/android/settings/location/RecentLocationAccessSeeAllPreferenceController;->updateState(Landroidx/preference/Preference;)V

    :cond_0
    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 5

    .line 63
    iget-object v0, p0, Lcom/android/settings/location/RecentLocationAccessSeeAllPreferenceController;->mCategoryAllRecentLocationAccess:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 64
    iput-object p1, p0, Lcom/android/settings/location/RecentLocationAccessSeeAllPreferenceController;->mPreference:Landroidx/preference/Preference;

    .line 66
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    .line 68
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 69
    iget-object v2, p0, Lcom/android/settings/location/RecentLocationAccessSeeAllPreferenceController;->mRecentLocationAccesses:Lcom/android/settingslib/location/RecentLocationAccesses;

    iget-boolean v3, p0, Lcom/android/settings/location/RecentLocationAccessSeeAllPreferenceController;->mShowSystem:Z

    invoke-virtual {v2, v3}, Lcom/android/settingslib/location/RecentLocationAccesses;->getAppListSorted(Z)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/location/RecentLocationAccesses$Access;

    .line 71
    iget v4, p0, Lcom/android/settings/location/RecentLocationAccessSeeAllPreferenceController;->mType:I

    invoke-static {v0, v3, v4}, Lcom/android/settings/location/RecentLocationAccessPreferenceController;->isRequestMatchesProfileType(Landroid/os/UserManager;Lcom/android/settingslib/location/RecentLocationAccesses$Access;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 72
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 76
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 78
    new-instance p1, Lcom/android/settingslib/widget/AppPreference;

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/android/settingslib/widget/AppPreference;-><init>(Landroid/content/Context;)V

    .line 79
    sget v0, Lcom/android/settings/R$string;->location_no_recent_apps:I

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(I)V

    const/4 v0, 0x0

    .line 80
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSelectable(Z)V

    .line 81
    iget-object p0, p0, Lcom/android/settings/location/RecentLocationAccessSeeAllPreferenceController;->mCategoryAllRecentLocationAccess:Landroidx/preference/PreferenceScreen;

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_2

    .line 83
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/location/RecentLocationAccesses$Access;

    .line 85
    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/location/LocationBasePreferenceController;->mFragment:Lcom/android/settings/dashboard/DashboardFragment;

    .line 84
    invoke-static {v2, v1, v3}, Lcom/android/settings/location/RecentLocationAccessPreferenceController;->createAppPreference(Landroid/content/Context;Lcom/android/settingslib/location/RecentLocationAccesses$Access;Lcom/android/settings/dashboard/DashboardFragment;)Lcom/android/settingslib/widget/AppPreference;

    move-result-object v1

    .line 87
    iget-object v2, p0, Lcom/android/settings/location/RecentLocationAccessSeeAllPreferenceController;->mCategoryAllRecentLocationAccess:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
