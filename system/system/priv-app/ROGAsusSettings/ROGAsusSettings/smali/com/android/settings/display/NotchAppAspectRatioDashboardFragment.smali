.class public Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment;
.super Lcom/android/settings/core/InstrumentedFragment;
.source "NotchAppAspectRatioDashboardFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$ApplicationsAdapter;,
        Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$AppViewHolder;,
        Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$AspectRatioFilter;,
        Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$DropdownPopup;
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

.field private static final DEFAULT_NOT_FILL_NOTCH_APPS:[Ljava/lang/String;

.field private static final EXTENDED_MARK:Ljava/lang/Object;

.field private static final FULL_MARK:Ljava/lang/Object;

.field private static final NOTCH_UI_MODES_NAMES:[Ljava/lang/String;

.field private static final OPTIMIZED_MARK:Ljava/lang/Object;

.field private static final STANDARD_MARK:Ljava/lang/Object;


# instance fields
.field private mApplications:Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$ApplicationsAdapter;

.field private mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

.field private mEmptyView:Landroid/view/View;

.field private mFilter:Lcom/android/settings/applications/manageapplications/AppFilterItem;

.field private mListContainer:Landroid/view/View;

.field private mLoadingContainer:Landroid/view/View;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPopup:Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$DropdownPopup;

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mRootView:Landroid/view/View;

.field private mSortOrder:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "com.android.chrome"

    const-string v1, "com.android.vending"

    .line 69
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment;->DEFAULT_NOT_FILL_NOTCH_APPS:[Ljava/lang/String;

    .line 74
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment;->OPTIMIZED_MARK:Ljava/lang/Object;

    .line 75
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment;->STANDARD_MARK:Ljava/lang/Object;

    .line 76
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment;->EXTENDED_MARK:Ljava/lang/Object;

    .line 77
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment;->FULL_MARK:Ljava/lang/Object;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    .line 84
    sput-object v1, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment;->NOTCH_UI_MODES_NAMES:[Ljava/lang/String;

    .line 87
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 199
    new-instance v0, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$1;

    invoke-direct {v0}, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$1;-><init>()V

    sput-object v0, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment;->APP_FILTER_WITHOUT_HOME:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 216
    new-instance v0, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$2;

    invoke-direct {v0}, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$2;-><init>()V

    sput-object v0, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment;->APP_FILTER_ALL:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 250
    new-instance v0, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$3;

    invoke-direct {v0}, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$3;-><init>()V

    sput-object v0, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment;->ASPECT_RATIO_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedFragment;-><init>()V

    .line 294
    sget v0, Lcom/android/settings/R$id;->sort_order_alpha:I

    iput v0, p0, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment;->mSortOrder:I

    return-void
.end method

.method static synthetic access$000()[Ljava/lang/String;
    .locals 1

    .line 60
    sget-object v0, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment;->NOTCH_UI_MODES_NAMES:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment;)Landroid/view/View;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment;->mListContainer:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$1202(Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment;I)I
    .locals 0

    .line 60
    iput p1, p0, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment;->mSortOrder:I

    return p1
.end method

.method static synthetic access$1300(Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment;)Landroid/view/View;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment;->mEmptyView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Ljava/lang/String;
    .locals 0

    .line 60
    invoke-static {p0}, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment;->getSummary(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1500()Ljava/util/Comparator;
    .locals 1

    .line 60
    sget-object v0, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment;->ASPECT_RATIO_COMPARATOR:Ljava/util/Comparator;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;I)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment;->setupNotchUiMode(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment;)Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$DropdownPopup;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment;->mPopup:Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$DropdownPopup;

    return-object p0
.end method

.method static synthetic access$502(Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment;Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$DropdownPopup;)Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$DropdownPopup;
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment;->mPopup:Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$DropdownPopup;

    return-object p1
.end method

.method static synthetic access$700(Ljava/lang/String;)Z
    .locals 0

    .line 60
    invoke-static {p0}, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment;->mustFillNotchRegion(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$800()Ljava/lang/Object;
    .locals 1

    .line 60
    sget-object v0, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment;->OPTIMIZED_MARK:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment;)Landroid/view/View;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment;->mLoadingContainer:Landroid/view/View;

    return-object p0
.end method

.method private static getSummary(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Ljava/lang/String;
    .locals 5

    .line 823
    sget-object v0, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment;->OPTIMIZED_MARK:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 824
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->overrideMaxAspect:F

    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v4, v0, v4

    if-eqz v4, :cond_1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    goto :goto_1

    .line 827
    :cond_2
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->overrideMaxAspect:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    goto :goto_0

    :goto_1
    if-nez v0, :cond_3

    move v2, v3

    goto :goto_2

    .line 833
    :cond_3
    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean p0, p0, Landroid/content/pm/ApplicationInfo;->fillNotchRegion:Z

    if-eqz p0, :cond_4

    const/4 v2, 0x2

    .line 838
    :cond_4
    :goto_2
    sget-object p0, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment;->NOTCH_UI_MODES_NAMES:[Ljava/lang/String;

    aget-object p0, p0, v2

    return-object p0
.end method

.method private static mustFillNotchRegion(Ljava/lang/String;)Z
    .locals 1

    .line 657
    invoke-static {}, Landroid/content/pm/AspectRatioChecker;->getInstance()Landroid/content/pm/AspectRatioChecker;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/pm/AspectRatioChecker;->mustFillNotchRegion(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private setFillNotchRegion(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;ZI)V
    .locals 1

    .line 856
    iget-object p0, p0, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0, p2, p3}, Landroid/content/pm/PackageManager;->setFillNotchRegion(Ljava/lang/String;ZI)V

    .line 857
    iget-object p0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iput-boolean p2, p0, Landroid/content/pm/ApplicationInfo;->fillNotchRegion:Z

    return-void
.end method

.method private setFullScreen(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;ZI)V
    .locals 4

    const/4 v0, 0x0

    const/high16 v1, -0x40800000    # -1.0f

    if-eqz p2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 863
    :goto_0
    iget-object p0, p0, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v3, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v3, v2, p3}, Landroid/content/pm/PackageManager;->setOverrideMaxAspect(Ljava/lang/String;FI)V

    .line 864
    sget-object p0, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment;->OPTIMIZED_MARK:Ljava/lang/Object;

    iget-object p3, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    invoke-virtual {p0, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 865
    iget-object p0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    const v1, 0x3fee147b    # 1.86f

    .line 866
    :goto_1
    iput v1, p0, Landroid/content/pm/ApplicationInfo;->overrideMaxAspect:F

    goto :goto_3

    .line 868
    :cond_2
    iget-object p0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz p2, :cond_3

    goto :goto_2

    :cond_3
    move v0, v1

    .line 869
    :goto_2
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->overrideMaxAspect:F

    :goto_3
    return-void
.end method

.method private setupNotchUiMode(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;I)V
    .locals 3

    .line 842
    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    const/4 v1, 0x0

    if-nez p2, :cond_0

    .line 844
    invoke-direct {p0, p1, v1, v0}, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment;->setFillNotchRegion(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;ZI)V

    .line 845
    invoke-direct {p0, p1, v1, v0}, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment;->setFullScreen(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;ZI)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    if-ne p2, v2, :cond_1

    .line 847
    invoke-direct {p0, p1, v1, v0}, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment;->setFillNotchRegion(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;ZI)V

    .line 848
    invoke-direct {p0, p1, v2, v0}, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment;->setFullScreen(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;ZI)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne p2, v1, :cond_2

    .line 850
    invoke-direct {p0, p1, v2, v0}, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment;->setFillNotchRegion(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;ZI)V

    .line 851
    invoke-direct {p0, p1, v2, v0}, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment;->setFullScreen(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;ZI)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x2e

    return p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 790
    iget-object v0, p0, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment;->mPopup:Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$DropdownPopup;

    if-eqz v0, :cond_0

    .line 791
    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 794
    :cond_0
    iget-object v0, p0, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment;->mApplications:Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$ApplicationsAdapter;

    if-nez v0, :cond_1

    return-void

    .line 798
    :cond_1
    iget-object v0, p0, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    const-string p0, "NotchAppAspectRatioDashboardFragment"

    const-string p1, "Cannot find position for child, skipping onClick handling"

    .line 800
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 804
    :cond_2
    iget-object v1, p0, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment;->mApplications:Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$ApplicationsAdapter;

    invoke-virtual {v1}, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$ApplicationsAdapter;->getItemCount()I

    move-result v1

    if-le v1, v0, :cond_4

    .line 805
    iget-object v1, p0, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment;->mApplications:Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$ApplicationsAdapter;

    invoke-virtual {v1, v0}, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$ApplicationsAdapter;->getAppEntry(I)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object v1

    .line 806
    iget-object v2, p0, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    check-cast v0, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$AppViewHolder;

    .line 807
    new-instance v2, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$DropdownPopup;

    if-eqz v0, :cond_3

    invoke-static {v0}, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$AppViewHolder;->access$1700(Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$AppViewHolder;)Landroid/widget/TextView;

    move-result-object p1

    :cond_3
    invoke-direct {v2, p0, p1, v1}, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$DropdownPopup;-><init>(Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment;Landroid/view/View;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V

    iput-object v2, p0, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment;->mPopup:Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$DropdownPopup;

    .line 808
    invoke-virtual {v2}, Landroid/widget/ListPopupWindow;->show()V

    :cond_4
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    const-string v0, "string"

    .line 662
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 663
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    .line 664
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    .line 665
    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settingslib/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/android/settingslib/applications/ApplicationsState;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    .line 666
    new-instance v2, Lcom/android/settings/applications/manageapplications/AppFilterItem;

    new-instance v3, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;

    sget-object v4, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment;->APP_FILTER_WITHOUT_HOME:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    sget-object v5, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment;->APP_FILTER_ALL:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    invoke-direct {v3, v4, v5}, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;Lcom/android/settingslib/applications/ApplicationsState$AppFilter;)V

    sget v4, Lcom/android/settings/R$string;->filter_all_apps:I

    const/4 v5, 0x4

    invoke-direct {v2, v3, v5, v4}, Lcom/android/settings/applications/manageapplications/AppFilterItem;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;II)V

    iput-object v2, p0, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment;->mFilter:Lcom/android/settings/applications/manageapplications/AppFilterItem;

    .line 672
    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 673
    sget v2, Lcom/android/settings/R$string;->app_aspect_ratio_title:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setTitle(I)V

    const/4 v2, 0x2

    const/4 v3, 0x0

    :try_start_0
    const-string v4, "com.android.systemui"

    .line 677
    iget-object p0, p0, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p0, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p0

    const-string v5, "screen_scaling_option_small"

    .line 678
    invoke-virtual {p0, v5, v0, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_0

    .line 680
    sget-object v6, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment;->NOTCH_UI_MODES_NAMES:[Ljava/lang/String;

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v6, v3

    :cond_0
    const-string v5, "screen_scaling_option_medium_version_2"

    .line 682
    invoke-virtual {p0, v5, v0, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_1

    .line 684
    sget-object v6, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment;->NOTCH_UI_MODES_NAMES:[Ljava/lang/String;

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v6, p1

    :cond_1
    const-string v5, "screen_scaling_option_large"

    .line 686
    invoke-virtual {p0, v5, v0, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_2

    .line 688
    sget-object v4, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment;->NOTCH_UI_MODES_NAMES:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v4, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 691
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Get res from SystemUI failed, err:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "NotchAppAspectRatioDashboardFragment"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    :cond_2
    :goto_0
    sget-object p0, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment;->NOTCH_UI_MODES_NAMES:[Ljava/lang/String;

    aget-object v0, p0, v3

    if-eqz v0, :cond_3

    aget-object v0, p0, v3

    .line 695
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 696
    :cond_3
    sget v0, Lcom/android/settings/R$string;->notch_ui_mode_compatible:I

    invoke-virtual {v1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p0, v3

    .line 698
    :cond_4
    aget-object v0, p0, p1

    if-eqz v0, :cond_5

    aget-object v0, p0, p1

    .line 699
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 700
    :cond_5
    sget v0, Lcom/android/settings/R$string;->notch_ui_mode_default:I

    invoke-virtual {v1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p0, p1

    .line 702
    :cond_6
    aget-object p1, p0, v2

    if-eqz p1, :cond_7

    aget-object p1, p0, v2

    .line 703
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 704
    :cond_7
    sget p1, Lcom/android/settings/R$string;->notch_ui_mode_full:I

    invoke-virtual {v1, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p0, v2

    :cond_8
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .line 710
    sget v0, Lcom/android/settings/R$layout;->asus_app_aspect_ratio:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment;->mRootView:Landroid/view/View;

    .line 712
    sget v0, Lcom/android/settings/R$id;->loading_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment;->mLoadingContainer:Landroid/view/View;

    const/4 v0, 0x0

    .line 713
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 715
    iget-object p1, p0, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment;->mRootView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->list_container:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment;->mListContainer:Landroid/view/View;

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    const v3, 0x1020004

    .line 718
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment;->mEmptyView:Landroid/view/View;

    .line 720
    new-instance p1, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$ApplicationsAdapter;

    iget-object v3, p0, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v4, p0, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment;->mFilter:Lcom/android/settings/applications/manageapplications/AppFilterItem;

    invoke-direct {p1, v3, p0, v4, p3}, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$ApplicationsAdapter;-><init>(Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment;Lcom/android/settings/applications/manageapplications/AppFilterItem;Landroid/os/Bundle;)V

    iput-object p1, p0, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment;->mApplications:Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$ApplicationsAdapter;

    if-eqz p3, :cond_0

    const-string v3, "hasEntries"

    .line 724
    invoke-virtual {p3, v3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p3

    .line 723
    invoke-static {p1, p3}, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$ApplicationsAdapter;->access$1602(Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$ApplicationsAdapter;Z)Z

    .line 727
    :cond_0
    iget-object p1, p0, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment;->mListContainer:Landroid/view/View;

    sget p3, Lcom/android/settings/R$id;->apps_list:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 728
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 729
    iget-object p1, p0, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 730
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p3, v1, v2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 729
    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 731
    iget-object p1, p0, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p3, p0, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment;->mApplications:Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$ApplicationsAdapter;

    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 736
    :cond_1
    instance-of p1, p2, Landroid/preference/PreferenceFrameLayout;

    if-eqz p1, :cond_2

    .line 737
    iget-object p1, p0, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment;->mRootView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    iput-boolean v2, p1, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    .line 740
    :cond_2
    iget-object p0, p0, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment;->mRootView:Landroid/view/View;

    return-object p0
.end method

.method public onDestroyView()V
    .locals 1

    .line 780
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 782
    iget-object v0, p0, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment;->mApplications:Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$ApplicationsAdapter;

    if-eqz v0, :cond_0

    .line 783
    invoke-virtual {v0}, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$ApplicationsAdapter;->release()V

    :cond_0
    const/4 v0, 0x0

    .line 785
    iput-object v0, p0, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment;->mRootView:Landroid/view/View;

    return-void
.end method

.method public onPause()V
    .locals 0

    .line 814
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onPause()V

    .line 816
    iget-object p0, p0, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment;->mPopup:Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$DropdownPopup;

    if-eqz p0, :cond_0

    .line 817
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 762
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 764
    iget-object v0, p0, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment;->mApplications:Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$ApplicationsAdapter;

    invoke-static {v0}, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$ApplicationsAdapter;->access$1600(Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$ApplicationsAdapter;)Z

    move-result v0

    const-string v1, "hasEntries"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 765
    iget-object p0, p0, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment;->mApplications:Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$ApplicationsAdapter;

    if-eqz p0, :cond_0

    .line 766
    invoke-virtual {p0, p1}, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$ApplicationsAdapter;->onSaveInstanceState(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 750
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onStart()V

    .line 752
    invoke-static {}, Landroid/content/pm/AspectRatioChecker;->getInstance()Landroid/content/pm/AspectRatioChecker;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/AspectRatioChecker;->refresh()V

    .line 754
    iget-object v0, p0, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment;->mApplications:Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$ApplicationsAdapter;

    if-eqz v0, :cond_0

    .line 755
    iget v1, p0, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment;->mSortOrder:I

    invoke-virtual {v0, v1}, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$ApplicationsAdapter;->resume(I)V

    .line 756
    iget-object p0, p0, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment;->mApplications:Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$ApplicationsAdapter;

    invoke-virtual {p0}, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$ApplicationsAdapter;->updateLoading()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 0

    .line 772
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onStop()V

    .line 773
    iget-object p0, p0, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment;->mApplications:Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$ApplicationsAdapter;

    if-eqz p0, :cond_0

    .line 774
    invoke-virtual {p0}, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$ApplicationsAdapter;->pause()V

    :cond_0
    return-void
.end method
