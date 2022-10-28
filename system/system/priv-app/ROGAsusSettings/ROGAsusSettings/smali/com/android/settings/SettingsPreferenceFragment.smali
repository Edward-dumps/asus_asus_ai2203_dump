.class public abstract Lcom/android/settings/SettingsPreferenceFragment;
.super Lcom/android/settings/core/InstrumentedPreferenceFragment;
.source "SettingsPreferenceFragment.java"

# interfaces
.implements Lcom/android/settings/DialogCreatable;
.implements Lcom/android/settings/support/actionbar/HelpResourceProvider;
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/SettingsPreferenceFragment$DockBroadcastReceiver;,
        Lcom/android/settings/SettingsPreferenceFragment$SettingsObserver;,
        Lcom/android/settings/SettingsPreferenceFragment$AsusThemeListPreferenceDialogFragment;,
        Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;
    }
.end annotation


# instance fields
.field public mAdapter:Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;

.field private mAnimationAllowed:Z

.field protected mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mCurrentRootAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

.field private mDataSetObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

.field private mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

.field private mDialogFragmentForWifi:Landroidx/fragment/app/DialogFragment;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mDockBroadcastReceiver:Lcom/android/settings/SettingsPreferenceFragment$DockBroadcastReceiver;

.field private mEmptyView:Landroid/view/View;

.field private mHeader:Lcom/android/settingslib/widget/LayoutPreference;

.field private mIsDataSetObserverRegistered:Z

.field private mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field mPinnedHeaderFrameLayout:Landroid/view/ViewGroup;

.field private mPreferenceCache:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroidx/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field public mPreferenceHighlighted:Z

.field private mSettingsObserver:Lcom/android/settings/SettingsPreferenceFragment$SettingsObserver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 84
    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 99
    iput-boolean v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mIsDataSetObserverRegistered:Z

    .line 100
    new-instance v1, Lcom/android/settings/SettingsPreferenceFragment$1;

    invoke-direct {v1, p0}, Lcom/android/settings/SettingsPreferenceFragment$1;-><init>(Lcom/android/settings/SettingsPreferenceFragment;)V

    iput-object v1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mDataSetObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    .line 144
    iput-boolean v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mPreferenceHighlighted:Z

    const/4 v0, 0x0

    .line 147
    iput-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mDockBroadcastReceiver:Lcom/android/settings/SettingsPreferenceFragment$DockBroadcastReceiver;

    .line 148
    iput-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/SettingsPreferenceFragment;)Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    return-object p0
.end method

.method static synthetic access$202(Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;)Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    return-object p1
.end method

.method private addPreferenceToTop(Lcom/android/settingslib/widget/LayoutPreference;)V
    .locals 1

    const/4 v0, -0x1

    .line 398
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOrder(I)V

    .line 399
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 400
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public addPreferencesFromResource(I)V
    .locals 0

    .line 196
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->addPreferencesFromResource(I)V

    .line 197
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->checkAvailablePrefs(Landroidx/preference/PreferenceGroup;)V

    return-void
.end method

.method protected cacheRemoveAllPrefs(Landroidx/preference/PreferenceGroup;)V
    .locals 5

    .line 465
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mPreferenceCache:Landroid/util/ArrayMap;

    .line 466
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 468
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v2

    .line 469
    invoke-virtual {v2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 472
    :cond_0
    iget-object v3, p0, Lcom/android/settings/SettingsPreferenceFragment;->mPreferenceCache:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method checkAvailablePrefs(Landroidx/preference/PreferenceGroup;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 203
    :goto_0
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 204
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v2

    .line 205
    instance-of v3, v2, Lcom/android/settings/SelfAvailablePreference;

    if-eqz v3, :cond_1

    move-object v3, v2

    check-cast v3, Lcom/android/settings/SelfAvailablePreference;

    .line 206
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/settings/SelfAvailablePreference;->isAvailable(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 207
    invoke-virtual {v2, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_1

    .line 208
    :cond_1
    instance-of v3, v2, Landroidx/preference/PreferenceCategory;

    if-eqz v3, :cond_2

    .line 209
    invoke-virtual {v2}, Landroidx/preference/Preference;->getLayoutResource()I

    move-result v3

    sget v4, Lcom/android/settings/R$layout;->preference_category_no_label:I

    if-ne v3, v4, :cond_3

    .line 210
    invoke-virtual {v2}, Landroidx/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "noLabal"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1

    .line 212
    :cond_2
    instance-of v3, v2, Landroidx/preference/PreferenceGroup;

    if-eqz v3, :cond_3

    .line 213
    check-cast v2, Landroidx/preference/PreferenceGroup;

    invoke-virtual {p0, v2}, Lcom/android/settings/SettingsPreferenceFragment;->checkAvailablePrefs(Landroidx/preference/PreferenceGroup;)V

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method protected displayChanged()V
    .locals 0

    return-void
.end method

.method protected dockingRefresh()V
    .locals 0

    return-void
.end method

.method public finish()V
    .locals 2

    .line 816
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 818
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 819
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->popBackStack()V

    goto :goto_0

    .line 821
    :cond_1
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method public final finishFragment()V
    .locals 0

    .line 521
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method protected getCachedPreference(Ljava/lang/String;)Landroidx/preference/Preference;
    .locals 0

    .line 477
    iget-object p0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mPreferenceCache:Landroid/util/ArrayMap;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/preference/Preference;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method protected getContentResolver()Landroid/content/ContentResolver;
    .locals 1

    .line 530
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 532
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mContentResolver:Landroid/content/ContentResolver;

    .line 534
    :cond_0
    iget-object p0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mContentResolver:Landroid/content/ContentResolver;

    return-object p0
.end method

.method protected getDialogFragmentForWifiTether()Landroidx/fragment/app/DialogFragment;
    .locals 0

    .line 924
    iget-object p0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mDialogFragmentForWifi:Landroidx/fragment/app/DialogFragment;

    return-object p0
.end method

.method public getDialogMetricsCategory(I)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getEmptyView()Landroid/view/View;
    .locals 0

    .line 441
    iget-object p0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mEmptyView:Landroid/view/View;

    return-object p0
.end method

.method public getHeaderView()Lcom/android/settingslib/widget/LayoutPreference;
    .locals 0

    .line 382
    iget-object p0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mHeader:Lcom/android/settingslib/widget/LayoutPreference;

    return-object p0
.end method

.method public getInitialExpandedChildCount()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected getIntent()Landroid/content/Intent;
    .locals 1

    .line 826
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 829
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method protected getNextButton()Landroid/widget/Button;
    .locals 0

    .line 812
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    check-cast p0, Lcom/android/settings/ButtonBarHandler;

    invoke-interface {p0}, Lcom/android/settings/ButtonBarHandler;->getNextButton()Landroid/widget/Button;

    move-result-object p0

    return-object p0
.end method

.method protected getPackageManager()Landroid/content/pm/PackageManager;
    .locals 0

    .line 555
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    return-object p0
.end method

.method protected getSystemService(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 548
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method protected getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 541
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method protected hasNextButton()Z
    .locals 0

    .line 808
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    check-cast p0, Lcom/android/settings/ButtonBarHandler;

    invoke-interface {p0}, Lcom/android/settings/ButtonBarHandler;->hasNextButton()Z

    move-result p0

    return p0
.end method

.method public highlightPreferenceIfNeeded()V
    .locals 3

    .line 347
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 350
    :cond_0
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mAdapter:Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;

    if-eqz v0, :cond_1

    .line 351
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v2

    iget-object p0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->requestHighlight(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Lcom/google/android/material/appbar/AppBarLayout;)V

    :cond_1
    return-void
.end method

.method protected isFinishingOrDestroyed()Z
    .locals 1

    .line 919
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 920
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method protected isPreferenceExpanded(Landroidx/preference/Preference;)Z
    .locals 0

    .line 372
    iget-object p0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mAdapter:Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;

    if-eqz p0, :cond_1

    .line 373
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceGroupAdapter;->getPreferenceAdapterPosition(Landroidx/preference/Preference;)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 272
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 273
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method protected onBindPreferences()V
    .locals 0

    .line 303
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->registerObserverIfNeeded()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 153
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "android:preference_highlighted"

    .line 156
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mPreferenceHighlighted:Z

    .line 158
    :cond_0
    invoke-static {p0}, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->adjustInitialExpandedChildCount(Lcom/android/settings/SettingsPreferenceFragment;)V

    return-void
.end method

.method protected onCreateAdapter(Landroidx/preference/PreferenceScreen;)Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 3

    .line 452
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 453
    new-instance v1, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const-string v2, ":settings:fragment_args_key"

    .line 455
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-boolean v2, p0, Lcom/android/settings/SettingsPreferenceFragment;->mPreferenceHighlighted:Z

    invoke-direct {v1, p1, v0, v2}, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;-><init>(Landroidx/preference/PreferenceGroup;Ljava/lang/String;Z)V

    iput-object v1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mAdapter:Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;

    return-object v1
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreateLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .locals 2

    .line 446
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 164
    invoke-super {p0, p1, p2, p3}, Landroidx/preference/PreferenceFragmentCompat;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 165
    invoke-static {p0, p1}, Lcom/asus/commonresx/AsusResxUtils;->updateLayoutForPreferenceFragmentCompat(Landroidx/preference/PreferenceFragmentCompat;Landroid/view/View;)V

    .line 166
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/settings/SettingsPreferenceFragment;->updateCategoryForAsusRes(Landroidx/preference/PreferenceGroup;)V

    .line 168
    sget p2, Lcom/android/settings/R$id;->pinned_header:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/android/settings/SettingsPreferenceFragment;->mPinnedHeaderFrameLayout:Landroid/view/ViewGroup;

    .line 169
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    sget p3, Lcom/android/settings/R$id;->app_bar:I

    invoke-virtual {p2, p3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    iput-object p2, p0, Lcom/android/settings/SettingsPreferenceFragment;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    .line 171
    invoke-static {}, Lcom/android/settingslib/widget/ThemeUtils;->isDownloadTheme()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 172
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/settingslib/widget/ThemeUtils;->setBackgroundColor(Landroid/content/Context;Landroid/view/View;)V

    :cond_0
    return-object p1
.end method

.method protected onDataSetChanged()V
    .locals 0

    .line 377
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->highlightPreferenceIfNeeded()V

    .line 378
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->updateEmptyView()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 848
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mDockBroadcastReceiver:Lcom/android/settings/SettingsPreferenceFragment$DockBroadcastReceiver;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mDockBroadcastReceiver:Lcom/android/settings/SettingsPreferenceFragment$DockBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 849
    :cond_0
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 850
    :cond_1
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mSettingsObserver:Lcom/android/settings/SettingsPreferenceFragment$SettingsObserver;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mSettingsObserver:Lcom/android/settings/SettingsPreferenceFragment$SettingsObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_2
    const/4 v0, 0x0

    .line 851
    iput-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mSettingsObserver:Lcom/android/settings/SettingsPreferenceFragment$SettingsObserver;

    .line 853
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onDetach()V
    .locals 1

    .line 560
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isRemoving()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 561
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    .line 562
    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    const/4 v0, 0x0

    .line 563
    iput-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    .line 566
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    return-void
.end method

.method public onDialogShowing()V
    .locals 0

    return-void
.end method

.method public onDisplayAdded(I)V
    .locals 0

    .line 862
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->tryCatchDockingRefresh()V

    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 0

    .line 867
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->displayChanged()V

    return-void
.end method

.method public onDisplayPreferenceDialog(Landroidx/preference/Preference;)V
    .locals 2

    .line 627
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 629
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 632
    :cond_0
    instance-of v0, p1, Lcom/android/settings/RestrictedListPreference;

    if-eqz v0, :cond_1

    .line 634
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/RestrictedListPreference$RestrictedListPreferenceDialogFragment;->newInstance(Ljava/lang/String;)Landroidx/preference/ListPreferenceDialogFragmentCompat;

    move-result-object p1

    goto :goto_0

    .line 635
    :cond_1
    instance-of v0, p1, Lcom/android/settings/CustomListPreference;

    if-eqz v0, :cond_2

    .line 637
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/CustomListPreference$CustomListPreferenceDialogFragment;->newInstance(Ljava/lang/String;)Landroidx/preference/ListPreferenceDialogFragmentCompat;

    move-result-object p1

    goto :goto_0

    .line 638
    :cond_2
    instance-of v0, p1, Lcom/android/settingslib/CustomDialogPreferenceCompat;

    if-eqz v0, :cond_3

    .line 640
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settingslib/CustomDialogPreferenceCompat$CustomPreferenceDialogFragment;->newInstance(Ljava/lang/String;)Lcom/android/settingslib/CustomDialogPreferenceCompat$CustomPreferenceDialogFragment;

    move-result-object p1

    goto :goto_0

    .line 641
    :cond_3
    instance-of v0, p1, Lcom/android/settingslib/CustomEditTextPreferenceCompat;

    if-eqz v0, :cond_4

    .line 643
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settingslib/CustomEditTextPreferenceCompat$CustomPreferenceDialogFragment;->newInstance(Ljava/lang/String;)Lcom/android/settingslib/CustomEditTextPreferenceCompat$CustomPreferenceDialogFragment;

    move-result-object p1

    goto :goto_0

    .line 644
    :cond_4
    instance-of v0, p1, Lcom/android/settings/widget/CustomThemeListPreference;

    if-eqz v0, :cond_5

    .line 646
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/widget/CustomThemeListPreference$CustomThemeListPreferenceDialogFragment;->newInstance(Ljava/lang/String;)Landroidx/preference/ListPreferenceDialogFragmentCompat;

    move-result-object p1

    goto :goto_0

    .line 647
    :cond_5
    instance-of v0, p1, Landroidx/preference/ListPreference;

    if-eqz v0, :cond_6

    .line 648
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/SettingsPreferenceFragment$AsusThemeListPreferenceDialogFragment;->newInstance(Ljava/lang/String;)Landroidx/preference/ListPreferenceDialogFragmentCompat;

    move-result-object p1

    :goto_0
    const/4 v0, 0x0

    .line 653
    invoke-virtual {p1, p0, v0}, Landroidx/fragment/app/Fragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 654
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "dialog_preference"

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 655
    iput-object p1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mDialogFragmentForWifi:Landroidx/fragment/app/DialogFragment;

    .line 656
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDialogShowing()V

    return-void

    .line 650
    :cond_6
    invoke-super {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->onDisplayPreferenceDialog(Landroidx/preference/Preference;)V

    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0

    .line 872
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->tryCatchDockingRefresh()V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 278
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onResume()V

    .line 279
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->highlightPreferenceIfNeeded()V

    .line 281
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.DOCK_EVENT"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 282
    iget-object v1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mDockBroadcastReceiver:Lcom/android/settings/SettingsPreferenceFragment$DockBroadcastReceiver;

    if-nez v1, :cond_0

    .line 283
    new-instance v1, Lcom/android/settings/SettingsPreferenceFragment$DockBroadcastReceiver;

    invoke-direct {v1, p0}, Lcom/android/settings/SettingsPreferenceFragment$DockBroadcastReceiver;-><init>(Lcom/android/settings/SettingsPreferenceFragment;)V

    iput-object v1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mDockBroadcastReceiver:Lcom/android/settings/SettingsPreferenceFragment$DockBroadcastReceiver;

    .line 284
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/SettingsPreferenceFragment;->mDockBroadcastReceiver:Lcom/android/settings/SettingsPreferenceFragment$DockBroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    if-nez v0, :cond_1

    .line 288
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 v1, 0x0

    .line 289
    invoke-virtual {v0, p0, v1}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 292
    :cond_1
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mSettingsObserver:Lcom/android/settings/SettingsPreferenceFragment$SettingsObserver;

    if-nez v0, :cond_2

    .line 293
    new-instance v0, Lcom/android/settings/SettingsPreferenceFragment$SettingsObserver;

    new-instance v1, Lcom/android/settings/SettingsPreferenceFragment$2;

    invoke-direct {v1, p0}, Lcom/android/settings/SettingsPreferenceFragment$2;-><init>(Lcom/android/settings/SettingsPreferenceFragment;)V

    .line 297
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/android/settings/SettingsPreferenceFragment$SettingsObserver;-><init>(Lcom/android/settings/SettingsPreferenceFragment;Landroid/os/Handler;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mSettingsObserver:Lcom/android/settings/SettingsPreferenceFragment$SettingsObserver;

    :cond_2
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 263
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 265
    iget-object p0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mAdapter:Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;

    if-eqz p0, :cond_0

    .line 266
    invoke-virtual {p0}, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->isHighlightRequested()Z

    move-result p0

    const-string v0, "android:preference_highlighted"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method protected onUnbindPreferences()V
    .locals 0

    .line 308
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->unregisterObserverIfNeeded()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 180
    invoke-super {p0, p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 182
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/android/settings/utils/AsusSetupWizardUtils;->isDuringAsusSetupWizard(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 183
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 184
    instance-of p2, p0, Lcom/android/settings/core/SettingsBaseActivity;

    if-eqz p2, :cond_1

    .line 185
    sget p2, Lcom/android/settings/R$id;->app_bar:I

    invoke-virtual {p0, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/asus/commonresx/widget/AsusResxAppBarLayout;

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 187
    invoke-virtual {p2, v0, p1, v1}, Lcom/asus/commonresx/widget/AsusResxAppBarLayout;->setPersistCollapsed(ZLandroid/view/View;Z)V

    .line 189
    :cond_0
    check-cast p0, Lcom/android/settings/core/SettingsBaseActivity;

    invoke-virtual {p0}, Lcom/android/settings/core/SettingsBaseActivity;->removeFrameContentScrollingBehaviod()V

    :cond_1
    return-void
.end method

.method public registerObserverIfNeeded()V
    .locals 2

    .line 325
    iget-boolean v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mIsDataSetObserverRegistered:Z

    if-nez v0, :cond_1

    .line 326
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mCurrentRootAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_0

    .line 327
    iget-object v1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mDataSetObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 329
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mCurrentRootAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 330
    iget-object v1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mDataSetObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    const/4 v0, 0x1

    .line 331
    iput-boolean v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mIsDataSetObserverRegistered:Z

    .line 332
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDataSetChanged()V

    :cond_1
    return-void
.end method

.method protected removeCachedPrefs(Landroidx/preference/PreferenceGroup;)V
    .locals 2

    .line 481
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mPreferenceCache:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/preference/Preference;

    .line 482
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 484
    iput-object p1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mPreferenceCache:Landroid/util/ArrayMap;

    return-void
.end method

.method protected removeDialog(I)V
    .locals 1

    .line 593
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->getDialogId()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 594
    iget-object p1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    :cond_0
    const/4 p1, 0x0

    .line 596
    iput-object p1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    return-void
.end method

.method removePreference(Landroidx/preference/PreferenceGroup;Ljava/lang/String;)Z
    .locals 5

    .line 498
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 500
    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v3

    .line 501
    invoke-virtual {v3}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 503
    invoke-static {v4, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 504
    invoke-virtual {p1, v3}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    move-result p0

    return p0

    .line 507
    :cond_0
    instance-of v4, v3, Landroidx/preference/PreferenceGroup;

    if-eqz v4, :cond_1

    .line 508
    check-cast v3, Landroidx/preference/PreferenceGroup;

    invoke-virtual {p0, v3, p2}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Landroidx/preference/PreferenceGroup;Ljava/lang/String;)Z

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

    .line 493
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Landroidx/preference/PreferenceGroup;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method protected setAnimationAllowed(Z)V
    .locals 0

    .line 461
    iput-boolean p1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mAnimationAllowed:Z

    return-void
.end method

.method public setEmptyView(Landroid/view/View;)V
    .locals 2

    .line 433
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 434
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 436
    :cond_0
    iput-object p1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mEmptyView:Landroid/view/View;

    .line 437
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->updateEmptyView()V

    return-void
.end method

.method protected setHeaderView(I)V
    .locals 2

    .line 386
    new-instance v0, Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/settingslib/widget/LayoutPreference;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mHeader:Lcom/android/settingslib/widget/LayoutPreference;

    const/4 p1, 0x0

    .line 387
    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setSelectable(Z)V

    .line 388
    iget-object p1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mHeader:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-direct {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferenceToTop(Lcom/android/settingslib/widget/LayoutPreference;)V

    return-void
.end method

.method public setLoading(ZZ)V
    .locals 2

    .line 312
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/android/settings/R$id;->loading_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 313
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    xor-int/lit8 p1, p1, 0x1

    invoke-static {v0, v1, p1, p2}, Lcom/android/settings/widget/LoadingViewController;->handleLoadingContainer(Landroid/view/View;Landroid/view/View;ZZ)V

    .line 316
    invoke-static {}, Lcom/android/settingslib/widget/ThemeUtils;->isDownloadTheme()Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    .line 318
    sget p1, Lcom/android/settings/R$id;->progress:I

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    .line 319
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settingslib/widget/ThemeUtils;->getThemeColorCode(Landroid/content/Context;)I

    move-result p0

    invoke-static {p1, p0}, Lcom/android/settingslib/widget/ThemeUtils;->tintProgressBar(Landroid/widget/ProgressBar;I)V

    :cond_0
    return-void
.end method

.method protected setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0

    .line 616
    iget-object p0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz p0, :cond_0

    .line 617
    invoke-static {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->access$102(Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;Landroid/content/DialogInterface$OnDismissListener;)Landroid/content/DialogInterface$OnDismissListener;

    :cond_0
    return-void
.end method

.method public setPinnedHeaderView(I)Landroid/view/View;
    .locals 3

    .line 245
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 246
    iget-object v1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mPinnedHeaderFrameLayout:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    .line 247
    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 248
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->setPinnedHeaderView(Landroid/view/View;)V

    return-object p1
.end method

.method public setPinnedHeaderView(Landroid/view/View;)V
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mPinnedHeaderFrameLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 254
    iget-object p0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mPinnedHeaderFrameLayout:Landroid/view/ViewGroup;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public setPreferenceScreen(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 406
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->isAttached()Z

    move-result v0

    if-nez v0, :cond_0

    .line 408
    iget-boolean v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mAnimationAllowed:Z

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->setShouldUseGeneratedIds(Z)V

    .line 410
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->setPreferenceScreen(Landroidx/preference/PreferenceScreen;)V

    if-eqz p1, :cond_1

    .line 412
    iget-object p0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mHeader:Lcom/android/settingslib/widget/LayoutPreference;

    if-eqz p0, :cond_1

    .line 413
    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_1
    return-void
.end method

.method protected setResult(I)V
    .locals 1

    .line 840
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 843
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    return-void
.end method

.method protected setResult(ILandroid/content/Intent;)V
    .locals 1

    .line 833
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 836
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    return-void
.end method

.method protected showDialog(I)V
    .locals 2

    .line 572
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    const-string v0, "SettingsPreference"

    const-string v1, "Old dialog fragment not null!"

    .line 573
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    :cond_0
    invoke-static {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->newInstance(Lcom/android/settings/DialogCreatable;I)Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    .line 576
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public showPinnedHeader(Z)V
    .locals 0

    .line 258
    iget-object p0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mPinnedHeaderFrameLayout:Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method protected tryCatchDockingRefresh()V
    .locals 0

    .line 908
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->dockingRefresh()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 910
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public unregisterObserverIfNeeded()V
    .locals 2

    .line 337
    iget-boolean v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mIsDataSetObserverRegistered:Z

    if-eqz v0, :cond_1

    .line 338
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mCurrentRootAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_0

    .line 339
    iget-object v1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mDataSetObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    const/4 v0, 0x0

    .line 340
    iput-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mCurrentRootAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    :cond_0
    const/4 v0, 0x0

    .line 342
    iput-boolean v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mIsDataSetObserverRegistered:Z

    :cond_1
    return-void
.end method

.method protected updateCategoryForAsusRes(Landroidx/preference/PreferenceGroup;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 221
    :goto_0
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 222
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v1

    .line 223
    instance-of v2, v1, Landroidx/preference/PreferenceGroup;

    if-eqz v2, :cond_1

    .line 225
    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->updateCategoryIfNoLabel(Landroidx/preference/Preference;)V

    .line 227
    check-cast v1, Landroidx/preference/PreferenceGroup;

    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->updateCategoryForAsusRes(Landroidx/preference/PreferenceGroup;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected updateCategoryIfNoLabel(Landroidx/preference/Preference;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 233
    instance-of p0, p1, Landroidx/preference/PreferenceCategory;

    if-nez p0, :cond_0

    goto :goto_0

    .line 237
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "preference is "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SettingsPreference"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    invoke-virtual {p1}, Landroidx/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    const/4 v1, 0x0

    const-string v2, "noLabal"

    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 239
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "it is preference_category_no_label and value is \""

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    sget p0, Lcom/android/settings/R$layout;->preference_category_no_label:I

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setLayoutResource(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method updateEmptyView()V
    .locals 5

    .line 420
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mEmptyView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 421
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 422
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v2, 0x102003f

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 423
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    .line 424
    iget-object v3, p0, Lcom/android/settings/SettingsPreferenceFragment;->mHeader:Lcom/android/settingslib/widget/LayoutPreference;

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

    .line 425
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v4, v1

    .line 426
    :cond_3
    :goto_1
    iget-object p0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mEmptyView:Landroid/view/View;

    if-eqz v4, :cond_4

    goto :goto_2

    :cond_4
    const/16 v1, 0x8

    :goto_2
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 428
    :cond_5
    iget-object p0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    return-void
.end method
