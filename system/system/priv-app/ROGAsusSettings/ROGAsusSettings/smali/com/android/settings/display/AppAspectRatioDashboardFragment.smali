.class public Lcom/android/settings/display/AppAspectRatioDashboardFragment;
.super Lcom/android/settings/core/InstrumentedFragment;
.source "AppAspectRatioDashboardFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/display/AppAspectRatioDashboardFragment$ApplicationsAdapter;,
        Lcom/android/settings/display/AppAspectRatioDashboardFragment$AppViewHolder;,
        Lcom/android/settings/display/AppAspectRatioDashboardFragment$AspectRatioFilter;
    }
.end annotation


# static fields
.field private static final APP_FILTER_ALL:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

.field private static final APP_FILTER_WITHOUT_HOME:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

.field private static final ASPECT_RATIO_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field private static final OPTIMIZED_MARK:Ljava/lang/Object;


# instance fields
.field private mApplications:Lcom/android/settings/display/AppAspectRatioDashboardFragment$ApplicationsAdapter;

.field private mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

.field private mEmptyView:Landroid/view/View;

.field private mFilter:Lcom/android/settings/applications/manageapplications/AppFilterItem;

.field private mListContainer:Landroid/view/View;

.field private mLoadingContainer:Landroid/view/View;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mRootView:Landroid/view/View;

.field private mSortOrder:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 61
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings/display/AppAspectRatioDashboardFragment;->OPTIMIZED_MARK:Ljava/lang/Object;

    .line 63
    new-instance v0, Lcom/android/settings/display/AppAspectRatioDashboardFragment$1;

    invoke-direct {v0}, Lcom/android/settings/display/AppAspectRatioDashboardFragment$1;-><init>()V

    sput-object v0, Lcom/android/settings/display/AppAspectRatioDashboardFragment;->APP_FILTER_WITHOUT_HOME:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 80
    new-instance v0, Lcom/android/settings/display/AppAspectRatioDashboardFragment$2;

    invoke-direct {v0}, Lcom/android/settings/display/AppAspectRatioDashboardFragment$2;-><init>()V

    sput-object v0, Lcom/android/settings/display/AppAspectRatioDashboardFragment;->APP_FILTER_ALL:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 113
    new-instance v0, Lcom/android/settings/display/AppAspectRatioDashboardFragment$3;

    invoke-direct {v0}, Lcom/android/settings/display/AppAspectRatioDashboardFragment$3;-><init>()V

    sput-object v0, Lcom/android/settings/display/AppAspectRatioDashboardFragment;->ASPECT_RATIO_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedFragment;-><init>()V

    .line 159
    sget v0, Lcom/android/settings/R$id;->sort_order_alpha:I

    iput v0, p0, Lcom/android/settings/display/AppAspectRatioDashboardFragment;->mSortOrder:I

    return-void
.end method

.method static synthetic access$100()Ljava/lang/Object;
    .locals 1

    .line 51
    sget-object v0, Lcom/android/settings/display/AppAspectRatioDashboardFragment;->OPTIMIZED_MARK:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Ljava/lang/String;)Z
    .locals 0

    .line 51
    invoke-static {p0}, Lcom/android/settings/display/AppAspectRatioDashboardFragment;->canScale(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/android/settings/display/AppAspectRatioDashboardFragment;)Landroid/view/View;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/settings/display/AppAspectRatioDashboardFragment;->mLoadingContainer:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/settings/display/AppAspectRatioDashboardFragment;)Landroid/view/View;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/settings/display/AppAspectRatioDashboardFragment;->mListContainer:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/settings/display/AppAspectRatioDashboardFragment;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/settings/display/AppAspectRatioDashboardFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$602(Lcom/android/settings/display/AppAspectRatioDashboardFragment;I)I
    .locals 0

    .line 51
    iput p1, p0, Lcom/android/settings/display/AppAspectRatioDashboardFragment;->mSortOrder:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/settings/display/AppAspectRatioDashboardFragment;)Landroid/view/View;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/settings/display/AppAspectRatioDashboardFragment;->mEmptyView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$800()Ljava/util/Comparator;
    .locals 1

    .line 51
    sget-object v0, Lcom/android/settings/display/AppAspectRatioDashboardFragment;->ASPECT_RATIO_COMPARATOR:Ljava/util/Comparator;

    return-object v0
.end method

.method private static canScale(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_1

    const-string v0, "android"

    .line 552
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.android"

    .line 553
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.asus"

    .line 554
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x2e

    return p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8

    .line 656
    iget-object v0, p0, Lcom/android/settings/display/AppAspectRatioDashboardFragment;->mApplications:Lcom/android/settings/display/AppAspectRatioDashboardFragment$ApplicationsAdapter;

    if-nez v0, :cond_0

    return-void

    .line 660
    :cond_0
    iget-object v0, p0, Lcom/android/settings/display/AppAspectRatioDashboardFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    const-string p0, "AppAspectRatio"

    const-string p1, "Cannot find position for child, skipping onClick handling"

    .line 662
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 666
    :cond_1
    iget-object v0, p0, Lcom/android/settings/display/AppAspectRatioDashboardFragment;->mApplications:Lcom/android/settings/display/AppAspectRatioDashboardFragment$ApplicationsAdapter;

    invoke-virtual {v0}, Lcom/android/settings/display/AppAspectRatioDashboardFragment$ApplicationsAdapter;->getItemCount()I

    move-result v0

    if-le v0, p1, :cond_7

    .line 667
    iget-object v0, p0, Lcom/android/settings/display/AppAspectRatioDashboardFragment;->mApplications:Lcom/android/settings/display/AppAspectRatioDashboardFragment$ApplicationsAdapter;

    invoke-virtual {v0, p1}, Lcom/android/settings/display/AppAspectRatioDashboardFragment$ApplicationsAdapter;->getAppEntry(I)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object v0

    .line 668
    iget-object v1, p0, Lcom/android/settings/display/AppAspectRatioDashboardFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    check-cast p1, Lcom/android/settings/display/AppAspectRatioDashboardFragment$AppViewHolder;

    .line 670
    invoke-virtual {p1}, Lcom/android/settings/display/AppAspectRatioDashboardFragment$AppViewHolder;->isFullscreen()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 671
    iget-object v2, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 672
    sget-object v3, Lcom/android/settings/display/AppAspectRatioDashboardFragment;->OPTIMIZED_MARK:Ljava/lang/Object;

    iget-object v4, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 673
    sget v4, Lcom/android/settings/R$string;->app_aspect_ratio_optimized:I

    invoke-virtual {p1, v4}, Lcom/android/settings/display/AppAspectRatioDashboardFragment$AppViewHolder;->setSummary(I)V

    goto :goto_0

    .line 675
    :cond_2
    sget v4, Lcom/android/settings/R$string;->app_aspect_ratio_not_fillscreen:I

    invoke-virtual {p1, v4}, Lcom/android/settings/display/AppAspectRatioDashboardFragment$AppViewHolder;->setSummary(I)V

    :goto_0
    const/4 v4, 0x0

    const/high16 v5, -0x40800000    # -1.0f

    if-eqz v1, :cond_3

    move v6, v4

    goto :goto_1

    :cond_3
    move v6, v5

    .line 680
    :goto_1
    iget-object p0, p0, Lcom/android/settings/display/AppAspectRatioDashboardFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v7, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v7, v6, v2}, Landroid/content/pm/PackageManager;->setOverrideMaxAspect(Ljava/lang/String;FI)V

    .line 681
    iget-object p0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    invoke-virtual {v3, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 682
    iget-object p0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    const v5, 0x3fee147b    # 1.86f

    .line 683
    :goto_2
    iput v5, p0, Landroid/content/pm/ApplicationInfo;->overrideMaxAspect:F

    goto :goto_4

    .line 685
    :cond_5
    iget-object p0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    move v4, v5

    .line 686
    :goto_3
    iput v4, p0, Landroid/content/pm/ApplicationInfo;->overrideMaxAspect:F

    .line 688
    :goto_4
    invoke-virtual {p1, v1}, Lcom/android/settings/display/AppAspectRatioDashboardFragment$AppViewHolder;->setFullscreen(Z)V

    :cond_7
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 562
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 563
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    .line 564
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 565
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settingslib/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/android/settingslib/applications/ApplicationsState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/display/AppAspectRatioDashboardFragment;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    .line 566
    new-instance v0, Lcom/android/settings/applications/manageapplications/AppFilterItem;

    new-instance v1, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;

    sget-object v2, Lcom/android/settings/display/AppAspectRatioDashboardFragment;->APP_FILTER_WITHOUT_HOME:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    sget-object v3, Lcom/android/settings/display/AppAspectRatioDashboardFragment;->APP_FILTER_ALL:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    invoke-direct {v1, v2, v3}, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;Lcom/android/settingslib/applications/ApplicationsState$AppFilter;)V

    sget v2, Lcom/android/settings/R$string;->filter_all_apps:I

    const/4 v3, 0x4

    invoke-direct {v0, v1, v3, v2}, Lcom/android/settings/applications/manageapplications/AppFilterItem;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;II)V

    iput-object v0, p0, Lcom/android/settings/display/AppAspectRatioDashboardFragment;->mFilter:Lcom/android/settings/applications/manageapplications/AppFilterItem;

    .line 572
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/display/AppAspectRatioDashboardFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 573
    sget p0, Lcom/android/settings/R$string;->app_aspect_ratio_title:I

    invoke-virtual {p1, p0}, Landroid/app/Activity;->setTitle(I)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .line 578
    sget v0, Lcom/android/settings/R$layout;->asus_app_aspect_ratio:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/display/AppAspectRatioDashboardFragment;->mRootView:Landroid/view/View;

    .line 580
    sget v0, Lcom/android/settings/R$id;->loading_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/display/AppAspectRatioDashboardFragment;->mLoadingContainer:Landroid/view/View;

    const/4 v0, 0x0

    .line 581
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 583
    iget-object p1, p0, Lcom/android/settings/display/AppAspectRatioDashboardFragment;->mRootView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->list_container:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/display/AppAspectRatioDashboardFragment;->mListContainer:Landroid/view/View;

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    const v3, 0x1020004

    .line 586
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/display/AppAspectRatioDashboardFragment;->mEmptyView:Landroid/view/View;

    .line 588
    new-instance p1, Lcom/android/settings/display/AppAspectRatioDashboardFragment$ApplicationsAdapter;

    iget-object v3, p0, Lcom/android/settings/display/AppAspectRatioDashboardFragment;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v4, p0, Lcom/android/settings/display/AppAspectRatioDashboardFragment;->mFilter:Lcom/android/settings/applications/manageapplications/AppFilterItem;

    invoke-direct {p1, v3, p0, v4, p3}, Lcom/android/settings/display/AppAspectRatioDashboardFragment$ApplicationsAdapter;-><init>(Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/display/AppAspectRatioDashboardFragment;Lcom/android/settings/applications/manageapplications/AppFilterItem;Landroid/os/Bundle;)V

    iput-object p1, p0, Lcom/android/settings/display/AppAspectRatioDashboardFragment;->mApplications:Lcom/android/settings/display/AppAspectRatioDashboardFragment$ApplicationsAdapter;

    if-eqz p3, :cond_0

    const-string v3, "hasEntries"

    .line 592
    invoke-virtual {p3, v3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p3

    .line 591
    invoke-static {p1, p3}, Lcom/android/settings/display/AppAspectRatioDashboardFragment$ApplicationsAdapter;->access$902(Lcom/android/settings/display/AppAspectRatioDashboardFragment$ApplicationsAdapter;Z)Z

    .line 595
    :cond_0
    iget-object p1, p0, Lcom/android/settings/display/AppAspectRatioDashboardFragment;->mListContainer:Landroid/view/View;

    sget p3, Lcom/android/settings/R$id;->apps_list:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/android/settings/display/AppAspectRatioDashboardFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 596
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 597
    iget-object p1, p0, Lcom/android/settings/display/AppAspectRatioDashboardFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 598
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p3, v1, v2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 597
    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 599
    iget-object p1, p0, Lcom/android/settings/display/AppAspectRatioDashboardFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p3, p0, Lcom/android/settings/display/AppAspectRatioDashboardFragment;->mApplications:Lcom/android/settings/display/AppAspectRatioDashboardFragment$ApplicationsAdapter;

    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 604
    :cond_1
    instance-of p1, p2, Landroid/preference/PreferenceFrameLayout;

    if-eqz p1, :cond_2

    .line 605
    iget-object p1, p0, Lcom/android/settings/display/AppAspectRatioDashboardFragment;->mRootView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    iput-boolean v2, p1, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    .line 608
    :cond_2
    iget-object p0, p0, Lcom/android/settings/display/AppAspectRatioDashboardFragment;->mRootView:Landroid/view/View;

    return-object p0
.end method

.method public onDestroyView()V
    .locals 1

    .line 646
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 648
    iget-object v0, p0, Lcom/android/settings/display/AppAspectRatioDashboardFragment;->mApplications:Lcom/android/settings/display/AppAspectRatioDashboardFragment$ApplicationsAdapter;

    if-eqz v0, :cond_0

    .line 649
    invoke-virtual {v0}, Lcom/android/settings/display/AppAspectRatioDashboardFragment$ApplicationsAdapter;->release()V

    :cond_0
    const/4 v0, 0x0

    .line 651
    iput-object v0, p0, Lcom/android/settings/display/AppAspectRatioDashboardFragment;->mRootView:Landroid/view/View;

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 628
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 630
    iget-object v0, p0, Lcom/android/settings/display/AppAspectRatioDashboardFragment;->mApplications:Lcom/android/settings/display/AppAspectRatioDashboardFragment$ApplicationsAdapter;

    invoke-static {v0}, Lcom/android/settings/display/AppAspectRatioDashboardFragment$ApplicationsAdapter;->access$900(Lcom/android/settings/display/AppAspectRatioDashboardFragment$ApplicationsAdapter;)Z

    move-result v0

    const-string v1, "hasEntries"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 631
    iget-object p0, p0, Lcom/android/settings/display/AppAspectRatioDashboardFragment;->mApplications:Lcom/android/settings/display/AppAspectRatioDashboardFragment$ApplicationsAdapter;

    if-eqz p0, :cond_0

    .line 632
    invoke-virtual {p0, p1}, Lcom/android/settings/display/AppAspectRatioDashboardFragment$ApplicationsAdapter;->onSaveInstanceState(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 618
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onStart()V

    .line 620
    iget-object v0, p0, Lcom/android/settings/display/AppAspectRatioDashboardFragment;->mApplications:Lcom/android/settings/display/AppAspectRatioDashboardFragment$ApplicationsAdapter;

    if-eqz v0, :cond_0

    .line 621
    iget v1, p0, Lcom/android/settings/display/AppAspectRatioDashboardFragment;->mSortOrder:I

    invoke-virtual {v0, v1}, Lcom/android/settings/display/AppAspectRatioDashboardFragment$ApplicationsAdapter;->resume(I)V

    .line 622
    iget-object p0, p0, Lcom/android/settings/display/AppAspectRatioDashboardFragment;->mApplications:Lcom/android/settings/display/AppAspectRatioDashboardFragment$ApplicationsAdapter;

    invoke-virtual {p0}, Lcom/android/settings/display/AppAspectRatioDashboardFragment$ApplicationsAdapter;->updateLoading()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 0

    .line 638
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onStop()V

    .line 639
    iget-object p0, p0, Lcom/android/settings/display/AppAspectRatioDashboardFragment;->mApplications:Lcom/android/settings/display/AppAspectRatioDashboardFragment$ApplicationsAdapter;

    if-eqz p0, :cond_0

    .line 640
    invoke-virtual {p0}, Lcom/android/settings/display/AppAspectRatioDashboardFragment$ApplicationsAdapter;->pause()V

    :cond_0
    return-void
.end method
