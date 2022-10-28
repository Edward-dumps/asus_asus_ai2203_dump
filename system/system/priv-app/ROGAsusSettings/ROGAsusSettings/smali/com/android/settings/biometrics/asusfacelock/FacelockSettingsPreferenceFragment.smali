.class public Lcom/android/settings/biometrics/asusfacelock/FacelockSettingsPreferenceFragment;
.super Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;
.source "FacelockSettingsPreferenceFragment.java"

# interfaces
.implements Lcom/android/settings/DialogCreatable;
.implements Lcom/android/settings/support/actionbar/HelpResourceProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/biometrics/asusfacelock/FacelockSettingsPreferenceFragment$SettingsDialogFragment;
    }
.end annotation


# instance fields
.field public mAdapter:Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;

.field private mAnimationAllowed:Z

.field private mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mCurrentRootAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

.field private mDataSetObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

.field private mDialogFragment:Lcom/android/settings/biometrics/asusfacelock/FacelockSettingsPreferenceFragment$SettingsDialogFragment;

.field private mEmptyView:Landroid/view/View;

.field private mHeader:Lcom/android/settingslib/widget/LayoutPreference;

.field private mIsDataSetObserverRegistered:Z

.field private mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private mPinnedHeaderFrameLayout:Landroid/view/ViewGroup;

.field public mPreferenceHighlighted:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 55
    invoke-direct {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 70
    iput-boolean v0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockSettingsPreferenceFragment;->mIsDataSetObserverRegistered:Z

    .line 71
    new-instance v1, Lcom/android/settings/biometrics/asusfacelock/FacelockSettingsPreferenceFragment$1;

    invoke-direct {v1, p0}, Lcom/android/settings/biometrics/asusfacelock/FacelockSettingsPreferenceFragment$1;-><init>(Lcom/android/settings/biometrics/asusfacelock/FacelockSettingsPreferenceFragment;)V

    iput-object v1, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockSettingsPreferenceFragment;->mDataSetObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    .line 114
    iput-boolean v0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockSettingsPreferenceFragment;->mPreferenceHighlighted:Z

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/biometrics/asusfacelock/FacelockSettingsPreferenceFragment;)Lcom/android/settings/biometrics/asusfacelock/FacelockSettingsPreferenceFragment$SettingsDialogFragment;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockSettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings/biometrics/asusfacelock/FacelockSettingsPreferenceFragment$SettingsDialogFragment;

    return-object p0
.end method

.method static synthetic access$202(Lcom/android/settings/biometrics/asusfacelock/FacelockSettingsPreferenceFragment;Lcom/android/settings/biometrics/asusfacelock/FacelockSettingsPreferenceFragment$SettingsDialogFragment;)Lcom/android/settings/biometrics/asusfacelock/FacelockSettingsPreferenceFragment$SettingsDialogFragment;
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockSettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings/biometrics/asusfacelock/FacelockSettingsPreferenceFragment$SettingsDialogFragment;

    return-object p1
.end method

.method private checkAvailablePrefs(Landroidx/preference/PreferenceGroup;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 150
    :goto_0
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 151
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v1

    .line 152
    instance-of v2, v1, Lcom/android/settings/SelfAvailablePreference;

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Lcom/android/settings/SelfAvailablePreference;

    .line 153
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/settings/SelfAvailablePreference;->isAvailable(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 154
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_1

    .line 155
    :cond_1
    instance-of v2, v1, Landroidx/preference/PreferenceGroup;

    if-eqz v2, :cond_2

    .line 156
    check-cast v1, Landroidx/preference/PreferenceGroup;

    invoke-direct {p0, v1}, Lcom/android/settings/biometrics/asusfacelock/FacelockSettingsPreferenceFragment;->checkAvailablePrefs(Landroidx/preference/PreferenceGroup;)V

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public addPreferencesFromResource(I)V
    .locals 0

    .line 144
    invoke-super {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->addPreferencesFromResource(I)V

    .line 145
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/biometrics/asusfacelock/FacelockSettingsPreferenceFragment;->checkAvailablePrefs(Landroidx/preference/PreferenceGroup;)V

    return-void
.end method

.method public finish()V
    .locals 2

    .line 641
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 643
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 644
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->popBackStack()V

    goto :goto_0

    .line 646
    :cond_1
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method protected getContentResolver()Landroid/content/ContentResolver;
    .locals 1

    .line 404
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 406
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockSettingsPreferenceFragment;->mContentResolver:Landroid/content/ContentResolver;

    .line 408
    :cond_0
    iget-object p0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockSettingsPreferenceFragment;->mContentResolver:Landroid/content/ContentResolver;

    return-object p0
.end method

.method public getDialogMetricsCategory(I)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public highlightPreferenceIfNeeded()V
    .locals 3

    .line 235
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockSettingsPreferenceFragment;->mAdapter:Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;

    if-eqz v0, :cond_1

    .line 239
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v2

    iget-object p0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockSettingsPreferenceFragment;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->requestHighlight(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Lcom/google/android/material/appbar/AppBarLayout;)V

    :cond_1
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 185
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 186
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method protected onBindPreferences()V
    .locals 0

    .line 197
    invoke-virtual {p0}, Lcom/android/settings/biometrics/asusfacelock/FacelockSettingsPreferenceFragment;->registerObserverIfNeeded()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 119
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 121
    invoke-static {p0}, Lcom/android/settings/support/actionbar/HelpMenuController;->init(Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;)V

    if-eqz p1, :cond_0

    const-string v0, "android:preference_highlighted"

    .line 124
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockSettingsPreferenceFragment;->mPreferenceHighlighted:Z

    :cond_0
    return-void
.end method

.method protected onCreateAdapter(Landroidx/preference/PreferenceScreen;)Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 3

    .line 326
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 327
    new-instance v1, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const-string v2, ":settings:fragment_args_key"

    .line 329
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-boolean v2, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockSettingsPreferenceFragment;->mPreferenceHighlighted:Z

    invoke-direct {v1, p1, v0, v2}, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;-><init>(Landroidx/preference/PreferenceGroup;Ljava/lang/String;Z)V

    iput-object v1, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockSettingsPreferenceFragment;->mAdapter:Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;

    return-object v1
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreateLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .locals 2

    .line 320
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockSettingsPreferenceFragment;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    return-object v0
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 132
    invoke-super {p0, p1, p2, p3}, Landroidx/preference/PreferenceFragmentCompat;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 133
    sget p2, Lcom/android/settings/R$id;->pinned_header:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockSettingsPreferenceFragment;->mPinnedHeaderFrameLayout:Landroid/view/ViewGroup;

    .line 134
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    sget p3, Lcom/android/settings/R$id;->app_bar:I

    invoke-virtual {p2, p3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    iput-object p2, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockSettingsPreferenceFragment;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    return-object p1
.end method

.method protected onDataSetChanged()V
    .locals 0

    .line 253
    invoke-virtual {p0}, Lcom/android/settings/biometrics/asusfacelock/FacelockSettingsPreferenceFragment;->highlightPreferenceIfNeeded()V

    .line 254
    invoke-virtual {p0}, Lcom/android/settings/biometrics/asusfacelock/FacelockSettingsPreferenceFragment;->updateEmptyView()V

    return-void
.end method

.method public onDetach()V
    .locals 1

    .line 427
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isRemoving()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 428
    iget-object v0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockSettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings/biometrics/asusfacelock/FacelockSettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    .line 429
    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    const/4 v0, 0x0

    .line 430
    iput-object v0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockSettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings/biometrics/asusfacelock/FacelockSettingsPreferenceFragment$SettingsDialogFragment;

    .line 433
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    return-void
.end method

.method public onDialogShowing()V
    .locals 0

    return-void
.end method

.method public onDisplayPreferenceDialog(Landroidx/preference/Preference;)V
    .locals 2

    .line 503
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 505
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 508
    :cond_0
    instance-of v0, p1, Lcom/android/settings/RestrictedListPreference;

    if-eqz v0, :cond_1

    .line 510
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/RestrictedListPreference$RestrictedListPreferenceDialogFragment;->newInstance(Ljava/lang/String;)Landroidx/preference/ListPreferenceDialogFragmentCompat;

    move-result-object p1

    goto :goto_0

    .line 511
    :cond_1
    instance-of v0, p1, Lcom/android/settings/CustomListPreference;

    if-eqz v0, :cond_2

    .line 513
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/CustomListPreference$CustomListPreferenceDialogFragment;->newInstance(Ljava/lang/String;)Landroidx/preference/ListPreferenceDialogFragmentCompat;

    move-result-object p1

    goto :goto_0

    .line 514
    :cond_2
    instance-of v0, p1, Lcom/android/settingslib/CustomDialogPreferenceCompat;

    if-eqz v0, :cond_3

    .line 516
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settingslib/CustomDialogPreferenceCompat$CustomPreferenceDialogFragment;->newInstance(Ljava/lang/String;)Lcom/android/settingslib/CustomDialogPreferenceCompat$CustomPreferenceDialogFragment;

    move-result-object p1

    goto :goto_0

    .line 517
    :cond_3
    instance-of v0, p1, Lcom/android/settingslib/CustomEditTextPreferenceCompat;

    if-eqz v0, :cond_4

    .line 519
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settingslib/CustomEditTextPreferenceCompat$CustomPreferenceDialogFragment;->newInstance(Ljava/lang/String;)Lcom/android/settingslib/CustomEditTextPreferenceCompat$CustomPreferenceDialogFragment;

    move-result-object p1

    :goto_0
    const/4 v0, 0x0

    .line 524
    invoke-virtual {p1, p0, v0}, Landroidx/fragment/app/Fragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 525
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "dialog_preference"

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 526
    invoke-virtual {p0}, Lcom/android/settings/biometrics/asusfacelock/FacelockSettingsPreferenceFragment;->onDialogShowing()V

    return-void

    .line 521
    :cond_4
    invoke-super {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->onDisplayPreferenceDialog(Landroidx/preference/Preference;)V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 191
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onResume()V

    .line 192
    invoke-virtual {p0}, Lcom/android/settings/biometrics/asusfacelock/FacelockSettingsPreferenceFragment;->highlightPreferenceIfNeeded()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 176
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 178
    iget-object p0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockSettingsPreferenceFragment;->mAdapter:Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;

    if-eqz p0, :cond_0

    .line 179
    invoke-virtual {p0}, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->isHighlightRequested()Z

    move-result p0

    const-string v0, "android:preference_highlighted"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method protected onUnbindPreferences()V
    .locals 0

    .line 202
    invoke-virtual {p0}, Lcom/android/settings/biometrics/asusfacelock/FacelockSettingsPreferenceFragment;->unregisterObserverIfNeeded()V

    return-void
.end method

.method public registerObserverIfNeeded()V
    .locals 2

    .line 213
    iget-boolean v0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockSettingsPreferenceFragment;->mIsDataSetObserverRegistered:Z

    if-nez v0, :cond_1

    .line 214
    iget-object v0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockSettingsPreferenceFragment;->mCurrentRootAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_0

    .line 215
    iget-object v1, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockSettingsPreferenceFragment;->mDataSetObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 217
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockSettingsPreferenceFragment;->mCurrentRootAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 218
    iget-object v1, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockSettingsPreferenceFragment;->mDataSetObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    const/4 v0, 0x1

    .line 219
    iput-boolean v0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockSettingsPreferenceFragment;->mIsDataSetObserverRegistered:Z

    .line 220
    invoke-virtual {p0}, Lcom/android/settings/biometrics/asusfacelock/FacelockSettingsPreferenceFragment;->onDataSetChanged()V

    :cond_1
    return-void
.end method

.method removePreference(Landroidx/preference/PreferenceGroup;Ljava/lang/String;)Z
    .locals 5

    .line 372
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 374
    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v3

    .line 375
    invoke-virtual {v3}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 377
    invoke-static {v4, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 378
    invoke-virtual {p1, v3}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    move-result p0

    return p0

    .line 381
    :cond_0
    instance-of v4, v3, Landroidx/preference/PreferenceGroup;

    if-eqz v4, :cond_1

    .line 382
    check-cast v3, Landroidx/preference/PreferenceGroup;

    invoke-virtual {p0, v3, p2}, Lcom/android/settings/biometrics/asusfacelock/FacelockSettingsPreferenceFragment;->removePreference(Landroidx/preference/PreferenceGroup;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public removePreference(Ljava/lang/String;)Z
    .locals 1

    .line 367
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/settings/biometrics/asusfacelock/FacelockSettingsPreferenceFragment;->removePreference(Landroidx/preference/PreferenceGroup;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public setPreferenceScreen(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 280
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->isAttached()Z

    move-result v0

    if-nez v0, :cond_0

    .line 282
    iget-boolean v0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockSettingsPreferenceFragment;->mAnimationAllowed:Z

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->setShouldUseGeneratedIds(Z)V

    .line 284
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->setPreferenceScreen(Landroidx/preference/PreferenceScreen;)V

    if-eqz p1, :cond_1

    .line 286
    iget-object p0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockSettingsPreferenceFragment;->mHeader:Lcom/android/settingslib/widget/LayoutPreference;

    if-eqz p0, :cond_1

    .line 287
    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_1
    return-void
.end method

.method public unregisterObserverIfNeeded()V
    .locals 2

    .line 225
    iget-boolean v0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockSettingsPreferenceFragment;->mIsDataSetObserverRegistered:Z

    if-eqz v0, :cond_1

    .line 226
    iget-object v0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockSettingsPreferenceFragment;->mCurrentRootAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_0

    .line 227
    iget-object v1, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockSettingsPreferenceFragment;->mDataSetObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    const/4 v0, 0x0

    .line 228
    iput-object v0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockSettingsPreferenceFragment;->mCurrentRootAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    :cond_0
    const/4 v0, 0x0

    .line 230
    iput-boolean v0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockSettingsPreferenceFragment;->mIsDataSetObserverRegistered:Z

    :cond_1
    return-void
.end method

.method updateEmptyView()V
    .locals 5

    .line 294
    iget-object v0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockSettingsPreferenceFragment;->mEmptyView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 295
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 296
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v2, 0x102003f

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 297
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    .line 298
    iget-object v3, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockSettingsPreferenceFragment;->mHeader:Lcom/android/settingslib/widget/LayoutPreference;

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    move v3, v4

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    sub-int/2addr v2, v3

    if-lez v2, :cond_3

    if-eqz v0, :cond_2

    .line 299
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v4, v1

    .line 300
    :cond_3
    :goto_1
    iget-object p0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockSettingsPreferenceFragment;->mEmptyView:Landroid/view/View;

    if-eqz v4, :cond_4

    goto :goto_2

    :cond_4
    const/16 v1, 0x8

    :goto_2
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 302
    :cond_5
    iget-object p0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockSettingsPreferenceFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    return-void
.end method
