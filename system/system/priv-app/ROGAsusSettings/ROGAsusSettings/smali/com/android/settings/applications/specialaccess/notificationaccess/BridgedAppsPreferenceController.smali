.class public Lcom/android/settings/applications/specialaccess/notificationaccess/BridgedAppsPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "BridgedAppsPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/applications/ApplicationsState$Callbacks;
.implements Lcom/android/settings/applications/AppStateBaseBridge$Callback;


# instance fields
.field private mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

.field private mCn:Landroid/content/ComponentName;

.field private mFilter:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

.field private mNlf:Landroid/service/notification/NotificationListenerFilter;

.field private mNm:Lcom/android/settings/notification/NotificationBackend;

.field private mScreen:Landroidx/preference/PreferenceScreen;

.field private mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

.field private mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private removeUselessPrefs(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 196
    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/BridgedAppsPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    if-lez v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 200
    iget-object v1, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/BridgedAppsPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v1

    .line 201
    invoke-virtual {v1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 202
    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 203
    iget-object v2, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/BridgedAppsPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public bridge synthetic copy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->copy()V

    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/BridgedAppsPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    const/4 p0, 0x0

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

.method public onAllSizesComputed()V
    .locals 0

    return-void
.end method

.method public onExtraInfoUpdated()V
    .locals 0

    .line 100
    invoke-virtual {p0}, Lcom/android/settings/applications/specialaccess/notificationaccess/BridgedAppsPreferenceController;->rebuild()V

    return-void
.end method

.method public onLauncherInfoChanged()V
    .locals 0

    return-void
.end method

.method public onLoadEntriesCompleted()V
    .locals 0

    .line 166
    invoke-virtual {p0}, Lcom/android/settings/applications/specialaccess/notificationaccess/BridgedAppsPreferenceController;->rebuild()V

    return-void
.end method

.method public onPackageIconChanged()V
    .locals 0

    .line 148
    invoke-virtual {p0}, Lcom/android/settings/applications/specialaccess/notificationaccess/BridgedAppsPreferenceController;->rebuild()V

    return-void
.end method

.method public onPackageListChanged()V
    .locals 0

    .line 110
    invoke-virtual {p0}, Lcom/android/settings/applications/specialaccess/notificationaccess/BridgedAppsPreferenceController;->rebuild()V

    return-void
.end method

.method public onPackageSizeChanged(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    .line 170
    instance-of v0, p1, Landroidx/preference/CheckBoxPreference;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 171
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 172
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 173
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    const/4 v3, 0x1

    add-int/2addr p1, v3

    .line 172
    invoke-virtual {v2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 174
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne p2, v2, :cond_0

    move v1, v3

    .line 175
    :cond_0
    iget-object p2, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/BridgedAppsPreferenceController;->mNm:Lcom/android/settings/notification/NotificationBackend;

    iget-object v2, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/BridgedAppsPreferenceController;->mCn:Landroid/content/ComponentName;

    iget v4, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/BridgedAppsPreferenceController;->mUserId:I

    invoke-virtual {p2, v2, v4}, Lcom/android/settings/notification/NotificationBackend;->getListenerFilter(Landroid/content/ComponentName;I)Landroid/service/notification/NotificationListenerFilter;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/BridgedAppsPreferenceController;->mNlf:Landroid/service/notification/NotificationListenerFilter;

    if-eqz v1, :cond_1

    .line 177
    new-instance v1, Landroid/content/pm/VersionedPackage;

    invoke-direct {v1, v0, p1}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p2, v1}, Landroid/service/notification/NotificationListenerFilter;->removePackage(Landroid/content/pm/VersionedPackage;)V

    goto :goto_0

    .line 179
    :cond_1
    new-instance v1, Landroid/content/pm/VersionedPackage;

    invoke-direct {v1, v0, p1}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p2, v1}, Landroid/service/notification/NotificationListenerFilter;->addPackage(Landroid/content/pm/VersionedPackage;)V

    .line 181
    :goto_0
    iget-object p1, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/BridgedAppsPreferenceController;->mNm:Lcom/android/settings/notification/NotificationBackend;

    iget-object p2, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/BridgedAppsPreferenceController;->mCn:Landroid/content/ComponentName;

    iget v0, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/BridgedAppsPreferenceController;->mUserId:I

    iget-object p0, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/BridgedAppsPreferenceController;->mNlf:Landroid/service/notification/NotificationListenerFilter;

    invoke-virtual {p1, p2, v0, p0}, Lcom/android/settings/notification/NotificationBackend;->setListenerFilter(Landroid/content/ComponentName;ILandroid/service/notification/NotificationListenerFilter;)V

    return v3

    :cond_2
    return v1
.end method

.method public onRebuildComplete(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/BridgedAppsPreferenceController;->mNm:Lcom/android/settings/notification/NotificationBackend;

    iget-object v1, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/BridgedAppsPreferenceController;->mCn:Landroid/content/ComponentName;

    iget v2, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/BridgedAppsPreferenceController;->mUserId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/notification/NotificationBackend;->getListenerFilter(Landroid/content/ComponentName;I)Landroid/service/notification/NotificationListenerFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/BridgedAppsPreferenceController;->mNlf:Landroid/service/notification/NotificationListenerFilter;

    .line 121
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 123
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 125
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 126
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 127
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 128
    iget-object v5, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/BridgedAppsPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v5, v4}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v5

    check-cast v5, Landroidx/preference/CheckBoxPreference;

    if-nez v5, :cond_1

    .line 130
    new-instance v5, Landroidx/preference/CheckBoxPreference;

    iget-object v6, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/BridgedAppsPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v6}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroidx/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 131
    iget-object v6, v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 132
    iget-object v6, v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 133
    invoke-virtual {v5, v4}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 134
    iget-object v4, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/BridgedAppsPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v4, v5}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 136
    :cond_1
    invoke-virtual {v5, v2}, Landroidx/preference/Preference;->setOrder(I)V

    .line 137
    iget-object v4, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/BridgedAppsPreferenceController;->mNlf:Landroid/service/notification/NotificationListenerFilter;

    new-instance v6, Landroid/content/pm/VersionedPackage;

    iget-object v3, v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {v6, v7, v3}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v4, v6}, Landroid/service/notification/NotificationListenerFilter;->isPackageAllowed(Landroid/content/pm/VersionedPackage;)Z

    move-result v3

    invoke-virtual {v5, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 139
    new-instance v3, Lcom/android/settings/applications/specialaccess/notificationaccess/BridgedAppsPreferenceController$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/android/settings/applications/specialaccess/notificationaccess/BridgedAppsPreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/applications/specialaccess/notificationaccess/BridgedAppsPreferenceController;)V

    invoke-virtual {v5, v3}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 143
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/settings/applications/specialaccess/notificationaccess/BridgedAppsPreferenceController;->removeUselessPrefs(Ljava/util/Set;)V

    return-void
.end method

.method public onRunningStateChanged(Z)V
    .locals 0

    return-void
.end method

.method public rebuild()V
    .locals 3

    .line 188
    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/BridgedAppsPreferenceController;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    iget-object v1, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/BridgedAppsPreferenceController;->mFilter:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    sget-object v2, Lcom/android/settingslib/applications/ApplicationsState;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    invoke-virtual {v0, v1, v2}, Lcom/android/settingslib/applications/ApplicationsState$Session;->rebuild(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;Ljava/util/Comparator;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 191
    invoke-virtual {p0, v0}, Lcom/android/settings/applications/specialaccess/notificationaccess/BridgedAppsPreferenceController;->onRebuildComplete(Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method public setAppState(Lcom/android/settingslib/applications/ApplicationsState;)Lcom/android/settings/applications/specialaccess/notificationaccess/BridgedAppsPreferenceController;
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/BridgedAppsPreferenceController;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    return-object p0
.end method

.method public setCn(Landroid/content/ComponentName;)Lcom/android/settings/applications/specialaccess/notificationaccess/BridgedAppsPreferenceController;
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/BridgedAppsPreferenceController;->mCn:Landroid/content/ComponentName;

    return-object p0
.end method

.method public setFilter(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;)Lcom/android/settings/applications/specialaccess/notificationaccess/BridgedAppsPreferenceController;
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/BridgedAppsPreferenceController;->mFilter:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    return-object p0
.end method

.method public setNm(Lcom/android/settings/notification/NotificationBackend;)Lcom/android/settings/applications/specialaccess/notificationaccess/BridgedAppsPreferenceController;
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/BridgedAppsPreferenceController;->mNm:Lcom/android/settings/notification/NotificationBackend;

    return-object p0
.end method

.method public setSession(Lcom/android/settingslib/core/lifecycle/Lifecycle;)Lcom/android/settings/applications/specialaccess/notificationaccess/BridgedAppsPreferenceController;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/BridgedAppsPreferenceController;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-virtual {v0, p0, p1}, Lcom/android/settingslib/applications/ApplicationsState;->newSession(Lcom/android/settingslib/applications/ApplicationsState$Callbacks;Landroidx/lifecycle/Lifecycle;)Lcom/android/settingslib/applications/ApplicationsState$Session;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/BridgedAppsPreferenceController;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    return-object p0
.end method

.method public setUserId(I)Lcom/android/settings/applications/specialaccess/notificationaccess/BridgedAppsPreferenceController;
    .locals 0

    .line 68
    iput p1, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/BridgedAppsPreferenceController;->mUserId:I

    return-object p0
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
