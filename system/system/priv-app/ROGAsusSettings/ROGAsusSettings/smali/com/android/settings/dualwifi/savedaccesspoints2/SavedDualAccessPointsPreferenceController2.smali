.class public Lcom/android/settings/dualwifi/savedaccesspoints2/SavedDualAccessPointsPreferenceController2;
.super Lcom/android/settings/core/BasePreferenceController;
.source "SavedDualAccessPointsPreferenceController2.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field mDualWifiEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mHost:Lcom/android/settings/dualwifi/savedaccesspoints2/SavedDualAccessPointsWifiSettings2;

.field private mPreferenceGroup:Landroidx/preference/PreferenceGroup;


# direct methods
.method public static synthetic $r8$lambda$E3fPmO27QmRmoUCjETpIMMiNff8(Ljava/lang/String;Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/dualwifi/savedaccesspoints2/SavedDualAccessPointsPreferenceController2;->lambda$updatePreference$0(Ljava/lang/String;Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 26
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/dualwifi/savedaccesspoints2/SavedDualAccessPointsPreferenceController2;->mDualWifiEntries:Ljava/util/List;

    return-void
.end method

.method private static synthetic lambda$updatePreference$0(Ljava/lang/String;Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;)Z
    .locals 0

    .line 82
    invoke-virtual {p1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private updatePreference()V
    .locals 8

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 78
    iget-object v1, p0, Lcom/android/settings/dualwifi/savedaccesspoints2/SavedDualAccessPointsPreferenceController2;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 80
    iget-object v3, p0, Lcom/android/settings/dualwifi/savedaccesspoints2/SavedDualAccessPointsPreferenceController2;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v3, v2}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 81
    iget-object v4, p0, Lcom/android/settings/dualwifi/savedaccesspoints2/SavedDualAccessPointsPreferenceController2;->mDualWifiEntries:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lcom/android/settings/dualwifi/savedaccesspoints2/SavedDualAccessPointsPreferenceController2$$ExternalSyntheticLambda0;

    invoke-direct {v5, v3}, Lcom/android/settings/dualwifi/savedaccesspoints2/SavedDualAccessPointsPreferenceController2$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v4

    .line 82
    invoke-interface {v4}, Ljava/util/stream/Stream;->count()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 83
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 86
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 87
    iget-object v2, p0, Lcom/android/settings/dualwifi/savedaccesspoints2/SavedDualAccessPointsPreferenceController2;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    .line 88
    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    .line 87
    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_1

    .line 92
    :cond_2
    iget-object v0, p0, Lcom/android/settings/dualwifi/savedaccesspoints2/SavedDualAccessPointsPreferenceController2;->mDualWifiEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    .line 93
    iget-object v2, p0, Lcom/android/settings/dualwifi/savedaccesspoints2/SavedDualAccessPointsPreferenceController2;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    if-nez v2, :cond_3

    .line 94
    new-instance v2, Lcom/android/settings/dualwifi/settingslib/DualWifiEntryPreference;

    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v1}, Lcom/android/settings/dualwifi/settingslib/DualWifiEntryPreference;-><init>(Landroid/content/Context;Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;)V

    .line 95
    invoke-virtual {v1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 96
    invoke-virtual {v2, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 98
    iget-object v1, p0, Lcom/android/settings/dualwifi/savedaccesspoints2/SavedDualAccessPointsPreferenceController2;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_2

    :cond_4
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

    .line 48
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/android/settings/dualwifi/savedaccesspoints2/SavedDualAccessPointsPreferenceController2;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    .line 49
    invoke-direct {p0}, Lcom/android/settings/dualwifi/savedaccesspoints2/SavedDualAccessPointsPreferenceController2;->updatePreference()V

    .line 50
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method displayPreference(Landroidx/preference/PreferenceScreen;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/preference/PreferenceScreen;",
            "Ljava/util/List<",
            "Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 54
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 57
    :cond_0
    iput-object p2, p0, Lcom/android/settings/dualwifi/savedaccesspoints2/SavedDualAccessPointsPreferenceController2;->mDualWifiEntries:Ljava/util/List;

    goto :goto_1

    .line 55
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/android/settings/dualwifi/savedaccesspoints2/SavedDualAccessPointsPreferenceController2;->mDualWifiEntries:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 60
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/settings/dualwifi/savedaccesspoints2/SavedDualAccessPointsPreferenceController2;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/android/settings/dualwifi/savedaccesspoints2/SavedDualAccessPointsPreferenceController2;->mDualWifiEntries:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

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

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 1

    .line 65
    iget-object p0, p0, Lcom/android/settings/dualwifi/savedaccesspoints2/SavedDualAccessPointsPreferenceController2;->mHost:Lcom/android/settings/dualwifi/savedaccesspoints2/SavedDualAccessPointsWifiSettings2;

    if-eqz p0, :cond_0

    .line 66
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/android/settings/dualwifi/savedaccesspoints2/SavedDualAccessPointsWifiSettings2;->showDualWifiPage(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setHost(Lcom/android/settings/dualwifi/savedaccesspoints2/SavedDualAccessPointsWifiSettings2;)Lcom/android/settings/dualwifi/savedaccesspoints2/SavedDualAccessPointsPreferenceController2;
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/android/settings/dualwifi/savedaccesspoints2/SavedDualAccessPointsPreferenceController2;->mHost:Lcom/android/settings/dualwifi/savedaccesspoints2/SavedDualAccessPointsWifiSettings2;

    return-object p0
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
