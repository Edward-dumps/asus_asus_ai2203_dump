.class Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$ApplicationsAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "NotchAppAspectRatioDashboardFragment.java"

# interfaces
.implements Lcom/android/settingslib/applications/ApplicationsState$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ApplicationsAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$ApplicationsAdapter$OnScrollListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$AppViewHolder;",
        ">;",
        "Lcom/android/settingslib/applications/ApplicationsState$Callbacks;"
    }
.end annotation


# instance fields
.field private mAppFilter:Lcom/android/settings/applications/manageapplications/AppFilterItem;

.field private final mContext:Landroid/content/Context;

.field private mEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mHasReceivedLoadEntries:Z

.field private final mIconDrawableFactory:Landroid/util/IconDrawableFactory;

.field private mLastIndex:I

.field private mLastSortMode:I

.field private final mLoadingViewController:Lcom/android/settings/widget/LoadingViewController;

.field private mOnScrollListener:Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$ApplicationsAdapter$OnScrollListener;

.field private mOriginalEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mOwner:Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment;

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mResumed:Z

.field private final mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

.field private final mState:Lcom/android/settingslib/applications/ApplicationsState;


# direct methods
.method public static synthetic $r8$lambda$Xoho8faeP2N_vMTALjQrN_HK5Ts(Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$ApplicationsAdapter;Lcom/android/settingslib/applications/ApplicationsState$AppFilter;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$ApplicationsAdapter;->lambda$rebuild$0(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment;Lcom/android/settings/applications/manageapplications/AppFilterItem;Landroid/os/Bundle;)V
    .locals 2

    .line 414
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, -0x1

    .line 402
    iput v0, p0, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$ApplicationsAdapter;->mLastSortMode:I

    .line 407
    iput v0, p0, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$ApplicationsAdapter;->mLastIndex:I

    const/4 v0, 0x1

    .line 415
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    .line 416
    iput-object p1, p0, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$ApplicationsAdapter;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    .line 417
    invoke-virtual {p1, p0}, Lcom/android/settingslib/applications/ApplicationsState;->newSession(Lcom/android/settingslib/applications/ApplicationsState$Callbacks;)Lcom/android/settingslib/applications/ApplicationsState$Session;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$ApplicationsAdapter;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    .line 418
    iput-object p2, p0, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$ApplicationsAdapter;->mOwner:Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment;

    .line 419
    new-instance p1, Lcom/android/settings/widget/LoadingViewController;

    .line 420
    invoke-static {p2}, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment;->access$900(Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment;)Landroid/view/View;

    move-result-object v0

    .line 421
    invoke-static {p2}, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment;->access$1000(Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment;)Landroid/view/View;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/android/settings/widget/LoadingViewController;-><init>(Landroid/view/View;Landroid/view/View;)V

    iput-object p1, p0, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$ApplicationsAdapter;->mLoadingViewController:Lcom/android/settings/widget/LoadingViewController;

    .line 423
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$ApplicationsAdapter;->mContext:Landroid/content/Context;

    .line 424
    invoke-static {p1}, Landroid/util/IconDrawableFactory;->newInstance(Landroid/content/Context;)Landroid/util/IconDrawableFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$ApplicationsAdapter;->mIconDrawableFactory:Landroid/util/IconDrawableFactory;

    .line 425
    iput-object p3, p0, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$ApplicationsAdapter;->mAppFilter:Lcom/android/settings/applications/manageapplications/AppFilterItem;

    if-eqz p4, :cond_0

    const-string p1, "state_last_scroll_index"

    .line 427
    invoke-virtual {p4, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$ApplicationsAdapter;->mLastIndex:I

    :cond_0
    return-void
.end method

.method static synthetic access$1600(Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$ApplicationsAdapter;)Z
    .locals 0

    .line 385
    iget-boolean p0, p0, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$ApplicationsAdapter;->mHasReceivedLoadEntries:Z

    return p0
.end method

.method static synthetic access$1602(Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$ApplicationsAdapter;Z)Z
    .locals 0

    .line 385
    iput-boolean p1, p0, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$ApplicationsAdapter;->mHasReceivedLoadEntries:Z

    return p1
.end method

.method private isEnabled(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Z
    .locals 0

    .line 606
    iget-object p0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p0}, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment;->access$700(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$rebuild$0(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;)V
    .locals 2

    .line 505
    iget-object p0, p0, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$ApplicationsAdapter;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    invoke-static {}, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment;->access$1500()Ljava/util/Comparator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/settingslib/applications/ApplicationsState$Session;->rebuild(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;Ljava/util/Comparator;Z)Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getAppEntry(I)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    .locals 0

    .line 594
    iget-object p0, p0, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    return-object p0
.end method

.method public getItemCount()I
    .locals 0

    .line 587
    iget-object p0, p0, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 590
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public getItemId(I)J
    .locals 1

    .line 599
    iget-object v0, p0, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    const-wide/16 p0, -0x1

    return-wide p0

    .line 602
    :cond_0
    iget-object p0, p0, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-wide p0, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->id:J

    return-wide p0
.end method

.method public getItemViewType(I)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onAllSizesComputed()V
    .locals 0

    return-void
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 433
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 434
    iput-object p1, p0, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$ApplicationsAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 435
    new-instance p1, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$ApplicationsAdapter$OnScrollListener;

    invoke-direct {p1, p0}, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$ApplicationsAdapter$OnScrollListener;-><init>(Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$ApplicationsAdapter;)V

    iput-object p1, p0, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$ApplicationsAdapter;->mOnScrollListener:Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$ApplicationsAdapter$OnScrollListener;

    .line 436
    iget-object p0, p0, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$ApplicationsAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 385
    check-cast p1, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$AppViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$ApplicationsAdapter;->onBindViewHolder(Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$AppViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$AppViewHolder;I)V
    .locals 2

    .line 615
    iget-object v0, p0, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 616
    monitor-enter p2

    .line 617
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$ApplicationsAdapter;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-virtual {v0, p2}, Lcom/android/settingslib/applications/ApplicationsState;->ensureLabelDescription(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V

    .line 618
    iget-object v0, p2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    iget-object v1, p2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->labelDescription:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$AppViewHolder;->setTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 619
    iget-object v0, p0, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$ApplicationsAdapter;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-virtual {v0, p2}, Lcom/android/settingslib/applications/ApplicationsState;->ensureIcon(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V

    .line 620
    iget-object v0, p2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$AppViewHolder;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 621
    invoke-static {p2}, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment;->access$1400(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$AppViewHolder;->setSummary(Ljava/lang/CharSequence;)V

    .line 622
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 623
    invoke-direct {p0, p2}, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$ApplicationsAdapter;->isEnabled(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$AppViewHolder;->setEnabled(Z)V

    .line 625
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object p0, p0, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$ApplicationsAdapter;->mOwner:Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :catchall_0
    move-exception p0

    .line 622
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 385
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$ApplicationsAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$AppViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$AppViewHolder;
    .locals 0

    const/4 p0, 0x0

    .line 487
    invoke-static {p1, p0}, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$AppViewHolder;->newView(Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    .line 488
    new-instance p1, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$AppViewHolder;

    invoke-direct {p1, p0}, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$AppViewHolder;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method public onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 441
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 442
    iget-object p1, p0, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$ApplicationsAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$ApplicationsAdapter;->mOnScrollListener:Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$ApplicationsAdapter$OnScrollListener;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    const/4 p1, 0x0

    .line 443
    iput-object p1, p0, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$ApplicationsAdapter;->mOnScrollListener:Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$ApplicationsAdapter$OnScrollListener;

    .line 444
    iput-object p1, p0, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$ApplicationsAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public onLauncherInfoChanged()V
    .locals 0

    .line 577
    invoke-virtual {p0}, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$ApplicationsAdapter;->rebuild()V

    return-void
.end method

.method public onLoadEntriesCompleted()V
    .locals 1

    const/4 v0, 0x1

    .line 565
    iput-boolean v0, p0, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$ApplicationsAdapter;->mHasReceivedLoadEntries:Z

    .line 567
    invoke-virtual {p0}, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$ApplicationsAdapter;->rebuild()V

    return-void
.end method

.method public onPackageIconChanged()V
    .locals 0

    return-void
.end method

.method public onPackageListChanged()V
    .locals 0

    .line 554
    invoke-virtual {p0}, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$ApplicationsAdapter;->rebuild()V

    return-void
.end method

.method public onPackageSizeChanged(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onRebuildComplete(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;)V"
        }
    .end annotation

    .line 511
    iput-object p1, p0, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    .line 512
    iput-object p1, p0, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$ApplicationsAdapter;->mOriginalEntries:Ljava/util/ArrayList;

    .line 513
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 514
    invoke-virtual {p0}, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$ApplicationsAdapter;->getItemCount()I

    move-result p1

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-nez p1, :cond_0

    .line 515
    iget-object p1, p0, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$ApplicationsAdapter;->mOwner:Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment;

    invoke-static {p1}, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment;->access$1100(Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 516
    iget-object p1, p0, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$ApplicationsAdapter;->mOwner:Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment;

    invoke-static {p1}, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment;->access$1300(Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 518
    :cond_0
    iget-object p1, p0, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$ApplicationsAdapter;->mOwner:Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment;

    invoke-static {p1}, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment;->access$1300(Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 519
    iget-object p1, p0, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$ApplicationsAdapter;->mOwner:Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment;

    invoke-static {p1}, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment;->access$1100(Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 523
    :goto_0
    iget p1, p0, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$ApplicationsAdapter;->mLastIndex:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$ApplicationsAdapter;->getItemCount()I

    move-result p1

    iget v1, p0, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$ApplicationsAdapter;->mLastIndex:I

    if-le p1, v1, :cond_1

    .line 524
    iget-object p1, p0, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$ApplicationsAdapter;->mOwner:Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment;

    invoke-static {p1}, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment;->access$1100(Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    iget v1, p0, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$ApplicationsAdapter;->mLastIndex:I

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->scrollToPosition(I)V

    .line 525
    iput v0, p0, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$ApplicationsAdapter;->mLastIndex:I

    .line 528
    :cond_1
    iget-object p1, p0, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$ApplicationsAdapter;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {p1}, Lcom/android/settingslib/applications/ApplicationsState$Session;->getAllApps()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$ApplicationsAdapter;->mOwner:Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment;

    .line 529
    invoke-static {p1}, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment;->access$1000(Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_2

    .line 530
    iget-object p0, p0, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$ApplicationsAdapter;->mLoadingViewController:Lcom/android/settings/widget/LoadingViewController;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/LoadingViewController;->showContent(Z)V

    :cond_2
    return-void
.end method

.method public onRunningStateChanged(Z)V
    .locals 0

    .line 545
    iget-object p0, p0, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$ApplicationsAdapter;->mOwner:Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 549
    :cond_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 467
    iget-object p0, p0, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$ApplicationsAdapter;->mOwner:Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment;

    .line 468
    invoke-static {p0}, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment;->access$1100(Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 469
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p0

    const-string v0, "state_last_scroll_index"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public pause()V
    .locals 1

    .line 459
    iget-boolean v0, p0, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$ApplicationsAdapter;->mResumed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 460
    iput-boolean v0, p0, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$ApplicationsAdapter;->mResumed:Z

    .line 461
    iget-object p0, p0, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$ApplicationsAdapter;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {p0}, Lcom/android/settingslib/applications/ApplicationsState$Session;->onPause()V

    :cond_0
    return-void
.end method

.method public rebuild()V
    .locals 3

    .line 497
    iget-boolean v0, p0, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$ApplicationsAdapter;->mHasReceivedLoadEntries:Z

    if-nez v0, :cond_0

    return-void

    .line 502
    :cond_0
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;

    iget-object v1, p0, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$ApplicationsAdapter;->mAppFilter:Lcom/android/settings/applications/manageapplications/AppFilterItem;

    invoke-virtual {v1}, Lcom/android/settings/applications/manageapplications/AppFilterItem;->getFilter()Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    move-result-object v1

    sget-object v2, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_NOT_HIDE:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;Lcom/android/settingslib/applications/ApplicationsState$AppFilter;)V

    .line 504
    new-instance v1, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$ApplicationsAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$ApplicationsAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$ApplicationsAdapter;Lcom/android/settingslib/applications/ApplicationsState$AppFilter;)V

    invoke-static {v1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public rebuild(I)V
    .locals 1

    .line 477
    iget v0, p0, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$ApplicationsAdapter;->mLastSortMode:I

    if-ne p1, v0, :cond_0

    return-void

    .line 480
    :cond_0
    iget-object v0, p0, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$ApplicationsAdapter;->mOwner:Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment;

    invoke-static {v0, p1}, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment;->access$1202(Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment;I)I

    .line 481
    iput p1, p0, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$ApplicationsAdapter;->mLastSortMode:I

    .line 482
    invoke-virtual {p0}, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$ApplicationsAdapter;->rebuild()V

    return-void
.end method

.method public release()V
    .locals 0

    .line 473
    iget-object p0, p0, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$ApplicationsAdapter;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {p0}, Lcom/android/settingslib/applications/ApplicationsState$Session;->onDestroy()V

    return-void
.end method

.method public resume(I)V
    .locals 1

    .line 448
    iget-boolean v0, p0, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$ApplicationsAdapter;->mResumed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 449
    iput-boolean v0, p0, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$ApplicationsAdapter;->mResumed:Z

    .line 450
    iget-object v0, p0, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$ApplicationsAdapter;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settingslib/applications/ApplicationsState$Session;->onResume()V

    .line 451
    iput p1, p0, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$ApplicationsAdapter;->mLastSortMode:I

    .line 452
    invoke-virtual {p0}, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$ApplicationsAdapter;->rebuild()V

    goto :goto_0

    .line 454
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$ApplicationsAdapter;->rebuild(I)V

    :goto_0
    return-void
.end method

.method updateLoading()V
    .locals 2

    .line 535
    iget-boolean v0, p0, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$ApplicationsAdapter;->mHasReceivedLoadEntries:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$ApplicationsAdapter;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settingslib/applications/ApplicationsState$Session;->getAllApps()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 537
    iget-object p0, p0, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$ApplicationsAdapter;->mLoadingViewController:Lcom/android/settings/widget/LoadingViewController;

    invoke-virtual {p0, v1}, Lcom/android/settings/widget/LoadingViewController;->showContent(Z)V

    goto :goto_1

    .line 539
    :cond_1
    iget-object p0, p0, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$ApplicationsAdapter;->mLoadingViewController:Lcom/android/settings/widget/LoadingViewController;

    invoke-virtual {p0}, Lcom/android/settings/widget/LoadingViewController;->showLoadingViewDelayed()V

    :goto_1
    return-void
.end method
