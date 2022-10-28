.class Lcom/android/settings/display/AppAspectRatioDashboardFragment$ApplicationsAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "AppAspectRatioDashboardFragment.java"

# interfaces
.implements Lcom/android/settingslib/applications/ApplicationsState$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/display/AppAspectRatioDashboardFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ApplicationsAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/display/AppAspectRatioDashboardFragment$ApplicationsAdapter$OnScrollListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/android/settings/display/AppAspectRatioDashboardFragment$AppViewHolder;",
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

.field private mOnScrollListener:Lcom/android/settings/display/AppAspectRatioDashboardFragment$ApplicationsAdapter$OnScrollListener;

.field private mOriginalEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mOwner:Lcom/android/settings/display/AppAspectRatioDashboardFragment;

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mResumed:Z

.field private final mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

.field private final mState:Lcom/android/settingslib/applications/ApplicationsState;


# direct methods
.method public static synthetic $r8$lambda$UdpqSmZkfhdm3bUXrUaVCbQgZag(Lcom/android/settings/display/AppAspectRatioDashboardFragment$ApplicationsAdapter;Lcom/android/settingslib/applications/ApplicationsState$AppFilter;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/display/AppAspectRatioDashboardFragment$ApplicationsAdapter;->lambda$rebuild$0(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/display/AppAspectRatioDashboardFragment;Lcom/android/settings/applications/manageapplications/AppFilterItem;Landroid/os/Bundle;)V
    .locals 2

    .line 292
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, -0x1

    .line 280
    iput v0, p0, Lcom/android/settings/display/AppAspectRatioDashboardFragment$ApplicationsAdapter;->mLastSortMode:I

    .line 285
    iput v0, p0, Lcom/android/settings/display/AppAspectRatioDashboardFragment$ApplicationsAdapter;->mLastIndex:I

    const/4 v0, 0x1

    .line 293
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    .line 294
    iput-object p1, p0, Lcom/android/settings/display/AppAspectRatioDashboardFragment$ApplicationsAdapter;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    .line 295
    invoke-virtual {p1, p0}, Lcom/android/settingslib/applications/ApplicationsState;->newSession(Lcom/android/settingslib/applications/ApplicationsState$Callbacks;)Lcom/android/settingslib/applications/ApplicationsState$Session;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/display/AppAspectRatioDashboardFragment$ApplicationsAdapter;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    .line 296
    iput-object p2, p0, Lcom/android/settings/display/AppAspectRatioDashboardFragment$ApplicationsAdapter;->mOwner:Lcom/android/settings/display/AppAspectRatioDashboardFragment;

    .line 297
    new-instance p1, Lcom/android/settings/widget/LoadingViewController;

    .line 298
    invoke-static {p2}, Lcom/android/settings/display/AppAspectRatioDashboardFragment;->access$300(Lcom/android/settings/display/AppAspectRatioDashboardFragment;)Landroid/view/View;

    move-result-object v0

    .line 299
    invoke-static {p2}, Lcom/android/settings/display/AppAspectRatioDashboardFragment;->access$400(Lcom/android/settings/display/AppAspectRatioDashboardFragment;)Landroid/view/View;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/android/settings/widget/LoadingViewController;-><init>(Landroid/view/View;Landroid/view/View;)V

    iput-object p1, p0, Lcom/android/settings/display/AppAspectRatioDashboardFragment$ApplicationsAdapter;->mLoadingViewController:Lcom/android/settings/widget/LoadingViewController;

    .line 301
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/display/AppAspectRatioDashboardFragment$ApplicationsAdapter;->mContext:Landroid/content/Context;

    .line 302
    invoke-static {p1}, Landroid/util/IconDrawableFactory;->newInstance(Landroid/content/Context;)Landroid/util/IconDrawableFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/display/AppAspectRatioDashboardFragment$ApplicationsAdapter;->mIconDrawableFactory:Landroid/util/IconDrawableFactory;

    .line 303
    iput-object p3, p0, Lcom/android/settings/display/AppAspectRatioDashboardFragment$ApplicationsAdapter;->mAppFilter:Lcom/android/settings/applications/manageapplications/AppFilterItem;

    if-eqz p4, :cond_0

    const-string p1, "state_last_scroll_index"

    .line 305
    invoke-virtual {p4, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/settings/display/AppAspectRatioDashboardFragment$ApplicationsAdapter;->mLastIndex:I

    :cond_0
    return-void
.end method

.method static synthetic access$900(Lcom/android/settings/display/AppAspectRatioDashboardFragment$ApplicationsAdapter;)Z
    .locals 0

    .line 263
    iget-boolean p0, p0, Lcom/android/settings/display/AppAspectRatioDashboardFragment$ApplicationsAdapter;->mHasReceivedLoadEntries:Z

    return p0
.end method

.method static synthetic access$902(Lcom/android/settings/display/AppAspectRatioDashboardFragment$ApplicationsAdapter;Z)Z
    .locals 0

    .line 263
    iput-boolean p1, p0, Lcom/android/settings/display/AppAspectRatioDashboardFragment$ApplicationsAdapter;->mHasReceivedLoadEntries:Z

    return p1
.end method

.method private isEnabled(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Z
    .locals 2

    .line 484
    iget-object p0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, p0, Landroid/content/pm/ApplicationInfo;->actualMaxAspect:F

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v0, v0, v1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 488
    :cond_0
    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 489
    invoke-static {}, Lcom/android/settings/display/AppAspectRatioDashboardFragment;->access$100()Ljava/lang/Object;

    move-result-object p0

    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    iget-object p0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 490
    invoke-static {p0}, Lcom/android/settings/display/AppAspectRatioDashboardFragment;->access$200(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$rebuild$0(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;)V
    .locals 2

    .line 383
    iget-object p0, p0, Lcom/android/settings/display/AppAspectRatioDashboardFragment$ApplicationsAdapter;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    invoke-static {}, Lcom/android/settings/display/AppAspectRatioDashboardFragment;->access$800()Ljava/util/Comparator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/settingslib/applications/ApplicationsState$Session;->rebuild(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;Ljava/util/Comparator;Z)Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getAppEntry(I)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    .locals 0

    .line 472
    iget-object p0, p0, Lcom/android/settings/display/AppAspectRatioDashboardFragment$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    return-object p0
.end method

.method public getItemCount()I
    .locals 0

    .line 465
    iget-object p0, p0, Lcom/android/settings/display/AppAspectRatioDashboardFragment$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 468
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public getItemId(I)J
    .locals 1

    .line 477
    iget-object v0, p0, Lcom/android/settings/display/AppAspectRatioDashboardFragment$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    const-wide/16 p0, -0x1

    return-wide p0

    .line 480
    :cond_0
    iget-object p0, p0, Lcom/android/settings/display/AppAspectRatioDashboardFragment$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

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

    .line 311
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 312
    iput-object p1, p0, Lcom/android/settings/display/AppAspectRatioDashboardFragment$ApplicationsAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 313
    new-instance p1, Lcom/android/settings/display/AppAspectRatioDashboardFragment$ApplicationsAdapter$OnScrollListener;

    invoke-direct {p1, p0}, Lcom/android/settings/display/AppAspectRatioDashboardFragment$ApplicationsAdapter$OnScrollListener;-><init>(Lcom/android/settings/display/AppAspectRatioDashboardFragment$ApplicationsAdapter;)V

    iput-object p1, p0, Lcom/android/settings/display/AppAspectRatioDashboardFragment$ApplicationsAdapter;->mOnScrollListener:Lcom/android/settings/display/AppAspectRatioDashboardFragment$ApplicationsAdapter$OnScrollListener;

    .line 314
    iget-object p0, p0, Lcom/android/settings/display/AppAspectRatioDashboardFragment$ApplicationsAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 263
    check-cast p1, Lcom/android/settings/display/AppAspectRatioDashboardFragment$AppViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/display/AppAspectRatioDashboardFragment$ApplicationsAdapter;->onBindViewHolder(Lcom/android/settings/display/AppAspectRatioDashboardFragment$AppViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/settings/display/AppAspectRatioDashboardFragment$AppViewHolder;I)V
    .locals 5

    .line 499
    iget-object v0, p0, Lcom/android/settings/display/AppAspectRatioDashboardFragment$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 500
    monitor-enter p2

    .line 501
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/display/AppAspectRatioDashboardFragment$ApplicationsAdapter;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-virtual {v0, p2}, Lcom/android/settingslib/applications/ApplicationsState;->ensureLabelDescription(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V

    .line 502
    iget-object v0, p2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    iget-object v1, p2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->labelDescription:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/settings/display/AppAspectRatioDashboardFragment$AppViewHolder;->setTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 503
    iget-object v0, p0, Lcom/android/settings/display/AppAspectRatioDashboardFragment$ApplicationsAdapter;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-virtual {v0, p2}, Lcom/android/settingslib/applications/ApplicationsState;->ensureIcon(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V

    .line 504
    iget-object v0, p2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Lcom/android/settings/display/AppAspectRatioDashboardFragment$AppViewHolder;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 507
    invoke-static {}, Lcom/android/settings/display/AppAspectRatioDashboardFragment;->access$100()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 508
    iget-object v0, p2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->overrideMaxAspect:F

    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v4, v0, v4

    if-eqz v4, :cond_1

    cmpl-float v0, v0, v3

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    .line 510
    :cond_1
    :goto_0
    sget v0, Lcom/android/settings/R$string;->app_aspect_ratio_optimized:I

    invoke-virtual {p1, v0}, Lcom/android/settings/display/AppAspectRatioDashboardFragment$AppViewHolder;->setSummary(I)V

    goto :goto_2

    .line 512
    :cond_2
    iget-object v0, p2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->overrideMaxAspect:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    .line 513
    :goto_1
    sget v0, Lcom/android/settings/R$string;->app_aspect_ratio_not_fillscreen:I

    invoke-virtual {p1, v0}, Lcom/android/settings/display/AppAspectRatioDashboardFragment$AppViewHolder;->setSummary(I)V

    .line 515
    :goto_2
    invoke-virtual {p1, v1}, Lcom/android/settings/display/AppAspectRatioDashboardFragment$AppViewHolder;->setFullscreen(Z)V

    .line 516
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 517
    invoke-direct {p0, p2}, Lcom/android/settings/display/AppAspectRatioDashboardFragment$ApplicationsAdapter;->isEnabled(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/settings/display/AppAspectRatioDashboardFragment$AppViewHolder;->setEnabled(Z)V

    .line 519
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object p0, p0, Lcom/android/settings/display/AppAspectRatioDashboardFragment$ApplicationsAdapter;->mOwner:Lcom/android/settings/display/AppAspectRatioDashboardFragment;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :catchall_0
    move-exception p0

    .line 516
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 263
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/display/AppAspectRatioDashboardFragment$ApplicationsAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/settings/display/AppAspectRatioDashboardFragment$AppViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/settings/display/AppAspectRatioDashboardFragment$AppViewHolder;
    .locals 0

    const/4 p0, 0x1

    .line 365
    invoke-static {p1, p0}, Lcom/android/settings/display/AppAspectRatioDashboardFragment$AppViewHolder;->newView(Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    .line 366
    new-instance p1, Lcom/android/settings/display/AppAspectRatioDashboardFragment$AppViewHolder;

    invoke-direct {p1, p0}, Lcom/android/settings/display/AppAspectRatioDashboardFragment$AppViewHolder;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method public onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 319
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 320
    iget-object p1, p0, Lcom/android/settings/display/AppAspectRatioDashboardFragment$ApplicationsAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/android/settings/display/AppAspectRatioDashboardFragment$ApplicationsAdapter;->mOnScrollListener:Lcom/android/settings/display/AppAspectRatioDashboardFragment$ApplicationsAdapter$OnScrollListener;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    const/4 p1, 0x0

    .line 321
    iput-object p1, p0, Lcom/android/settings/display/AppAspectRatioDashboardFragment$ApplicationsAdapter;->mOnScrollListener:Lcom/android/settings/display/AppAspectRatioDashboardFragment$ApplicationsAdapter$OnScrollListener;

    .line 322
    iput-object p1, p0, Lcom/android/settings/display/AppAspectRatioDashboardFragment$ApplicationsAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public onLauncherInfoChanged()V
    .locals 0

    .line 455
    invoke-virtual {p0}, Lcom/android/settings/display/AppAspectRatioDashboardFragment$ApplicationsAdapter;->rebuild()V

    return-void
.end method

.method public onLoadEntriesCompleted()V
    .locals 1

    const/4 v0, 0x1

    .line 443
    iput-boolean v0, p0, Lcom/android/settings/display/AppAspectRatioDashboardFragment$ApplicationsAdapter;->mHasReceivedLoadEntries:Z

    .line 445
    invoke-virtual {p0}, Lcom/android/settings/display/AppAspectRatioDashboardFragment$ApplicationsAdapter;->rebuild()V

    return-void
.end method

.method public onPackageIconChanged()V
    .locals 0

    return-void
.end method

.method public onPackageListChanged()V
    .locals 0

    .line 432
    invoke-virtual {p0}, Lcom/android/settings/display/AppAspectRatioDashboardFragment$ApplicationsAdapter;->rebuild()V

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

    .line 389
    iput-object p1, p0, Lcom/android/settings/display/AppAspectRatioDashboardFragment$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    .line 390
    iput-object p1, p0, Lcom/android/settings/display/AppAspectRatioDashboardFragment$ApplicationsAdapter;->mOriginalEntries:Ljava/util/ArrayList;

    .line 391
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 392
    invoke-virtual {p0}, Lcom/android/settings/display/AppAspectRatioDashboardFragment$ApplicationsAdapter;->getItemCount()I

    move-result p1

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-nez p1, :cond_0

    .line 393
    iget-object p1, p0, Lcom/android/settings/display/AppAspectRatioDashboardFragment$ApplicationsAdapter;->mOwner:Lcom/android/settings/display/AppAspectRatioDashboardFragment;

    invoke-static {p1}, Lcom/android/settings/display/AppAspectRatioDashboardFragment;->access$500(Lcom/android/settings/display/AppAspectRatioDashboardFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 394
    iget-object p1, p0, Lcom/android/settings/display/AppAspectRatioDashboardFragment$ApplicationsAdapter;->mOwner:Lcom/android/settings/display/AppAspectRatioDashboardFragment;

    invoke-static {p1}, Lcom/android/settings/display/AppAspectRatioDashboardFragment;->access$700(Lcom/android/settings/display/AppAspectRatioDashboardFragment;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 396
    :cond_0
    iget-object p1, p0, Lcom/android/settings/display/AppAspectRatioDashboardFragment$ApplicationsAdapter;->mOwner:Lcom/android/settings/display/AppAspectRatioDashboardFragment;

    invoke-static {p1}, Lcom/android/settings/display/AppAspectRatioDashboardFragment;->access$700(Lcom/android/settings/display/AppAspectRatioDashboardFragment;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 397
    iget-object p1, p0, Lcom/android/settings/display/AppAspectRatioDashboardFragment$ApplicationsAdapter;->mOwner:Lcom/android/settings/display/AppAspectRatioDashboardFragment;

    invoke-static {p1}, Lcom/android/settings/display/AppAspectRatioDashboardFragment;->access$500(Lcom/android/settings/display/AppAspectRatioDashboardFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 401
    :goto_0
    iget p1, p0, Lcom/android/settings/display/AppAspectRatioDashboardFragment$ApplicationsAdapter;->mLastIndex:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/display/AppAspectRatioDashboardFragment$ApplicationsAdapter;->getItemCount()I

    move-result p1

    iget v1, p0, Lcom/android/settings/display/AppAspectRatioDashboardFragment$ApplicationsAdapter;->mLastIndex:I

    if-le p1, v1, :cond_1

    .line 402
    iget-object p1, p0, Lcom/android/settings/display/AppAspectRatioDashboardFragment$ApplicationsAdapter;->mOwner:Lcom/android/settings/display/AppAspectRatioDashboardFragment;

    invoke-static {p1}, Lcom/android/settings/display/AppAspectRatioDashboardFragment;->access$500(Lcom/android/settings/display/AppAspectRatioDashboardFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    iget v1, p0, Lcom/android/settings/display/AppAspectRatioDashboardFragment$ApplicationsAdapter;->mLastIndex:I

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->scrollToPosition(I)V

    .line 403
    iput v0, p0, Lcom/android/settings/display/AppAspectRatioDashboardFragment$ApplicationsAdapter;->mLastIndex:I

    .line 406
    :cond_1
    iget-object p1, p0, Lcom/android/settings/display/AppAspectRatioDashboardFragment$ApplicationsAdapter;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {p1}, Lcom/android/settingslib/applications/ApplicationsState$Session;->getAllApps()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/settings/display/AppAspectRatioDashboardFragment$ApplicationsAdapter;->mOwner:Lcom/android/settings/display/AppAspectRatioDashboardFragment;

    .line 407
    invoke-static {p1}, Lcom/android/settings/display/AppAspectRatioDashboardFragment;->access$400(Lcom/android/settings/display/AppAspectRatioDashboardFragment;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_2

    .line 408
    iget-object p0, p0, Lcom/android/settings/display/AppAspectRatioDashboardFragment$ApplicationsAdapter;->mLoadingViewController:Lcom/android/settings/widget/LoadingViewController;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/LoadingViewController;->showContent(Z)V

    :cond_2
    return-void
.end method

.method public onRunningStateChanged(Z)V
    .locals 0

    .line 423
    iget-object p0, p0, Lcom/android/settings/display/AppAspectRatioDashboardFragment$ApplicationsAdapter;->mOwner:Lcom/android/settings/display/AppAspectRatioDashboardFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 427
    :cond_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 345
    iget-object p0, p0, Lcom/android/settings/display/AppAspectRatioDashboardFragment$ApplicationsAdapter;->mOwner:Lcom/android/settings/display/AppAspectRatioDashboardFragment;

    .line 346
    invoke-static {p0}, Lcom/android/settings/display/AppAspectRatioDashboardFragment;->access$500(Lcom/android/settings/display/AppAspectRatioDashboardFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 347
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p0

    const-string v0, "state_last_scroll_index"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public pause()V
    .locals 1

    .line 337
    iget-boolean v0, p0, Lcom/android/settings/display/AppAspectRatioDashboardFragment$ApplicationsAdapter;->mResumed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 338
    iput-boolean v0, p0, Lcom/android/settings/display/AppAspectRatioDashboardFragment$ApplicationsAdapter;->mResumed:Z

    .line 339
    iget-object p0, p0, Lcom/android/settings/display/AppAspectRatioDashboardFragment$ApplicationsAdapter;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {p0}, Lcom/android/settingslib/applications/ApplicationsState$Session;->onPause()V

    :cond_0
    return-void
.end method

.method public rebuild()V
    .locals 3

    .line 375
    iget-boolean v0, p0, Lcom/android/settings/display/AppAspectRatioDashboardFragment$ApplicationsAdapter;->mHasReceivedLoadEntries:Z

    if-nez v0, :cond_0

    return-void

    .line 380
    :cond_0
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;

    iget-object v1, p0, Lcom/android/settings/display/AppAspectRatioDashboardFragment$ApplicationsAdapter;->mAppFilter:Lcom/android/settings/applications/manageapplications/AppFilterItem;

    invoke-virtual {v1}, Lcom/android/settings/applications/manageapplications/AppFilterItem;->getFilter()Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    move-result-object v1

    sget-object v2, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_NOT_HIDE:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;Lcom/android/settingslib/applications/ApplicationsState$AppFilter;)V

    .line 382
    new-instance v1, Lcom/android/settings/display/AppAspectRatioDashboardFragment$ApplicationsAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/display/AppAspectRatioDashboardFragment$ApplicationsAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/display/AppAspectRatioDashboardFragment$ApplicationsAdapter;Lcom/android/settingslib/applications/ApplicationsState$AppFilter;)V

    invoke-static {v1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public rebuild(I)V
    .locals 1

    .line 355
    iget v0, p0, Lcom/android/settings/display/AppAspectRatioDashboardFragment$ApplicationsAdapter;->mLastSortMode:I

    if-ne p1, v0, :cond_0

    return-void

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/android/settings/display/AppAspectRatioDashboardFragment$ApplicationsAdapter;->mOwner:Lcom/android/settings/display/AppAspectRatioDashboardFragment;

    invoke-static {v0, p1}, Lcom/android/settings/display/AppAspectRatioDashboardFragment;->access$602(Lcom/android/settings/display/AppAspectRatioDashboardFragment;I)I

    .line 359
    iput p1, p0, Lcom/android/settings/display/AppAspectRatioDashboardFragment$ApplicationsAdapter;->mLastSortMode:I

    .line 360
    invoke-virtual {p0}, Lcom/android/settings/display/AppAspectRatioDashboardFragment$ApplicationsAdapter;->rebuild()V

    return-void
.end method

.method public release()V
    .locals 0

    .line 351
    iget-object p0, p0, Lcom/android/settings/display/AppAspectRatioDashboardFragment$ApplicationsAdapter;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {p0}, Lcom/android/settingslib/applications/ApplicationsState$Session;->onDestroy()V

    return-void
.end method

.method public resume(I)V
    .locals 1

    .line 326
    iget-boolean v0, p0, Lcom/android/settings/display/AppAspectRatioDashboardFragment$ApplicationsAdapter;->mResumed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 327
    iput-boolean v0, p0, Lcom/android/settings/display/AppAspectRatioDashboardFragment$ApplicationsAdapter;->mResumed:Z

    .line 328
    iget-object v0, p0, Lcom/android/settings/display/AppAspectRatioDashboardFragment$ApplicationsAdapter;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settingslib/applications/ApplicationsState$Session;->onResume()V

    .line 329
    iput p1, p0, Lcom/android/settings/display/AppAspectRatioDashboardFragment$ApplicationsAdapter;->mLastSortMode:I

    .line 330
    invoke-virtual {p0}, Lcom/android/settings/display/AppAspectRatioDashboardFragment$ApplicationsAdapter;->rebuild()V

    goto :goto_0

    .line 332
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/display/AppAspectRatioDashboardFragment$ApplicationsAdapter;->rebuild(I)V

    :goto_0
    return-void
.end method

.method updateLoading()V
    .locals 2

    .line 413
    iget-boolean v0, p0, Lcom/android/settings/display/AppAspectRatioDashboardFragment$ApplicationsAdapter;->mHasReceivedLoadEntries:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/display/AppAspectRatioDashboardFragment$ApplicationsAdapter;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

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

    .line 415
    iget-object p0, p0, Lcom/android/settings/display/AppAspectRatioDashboardFragment$ApplicationsAdapter;->mLoadingViewController:Lcom/android/settings/widget/LoadingViewController;

    invoke-virtual {p0, v1}, Lcom/android/settings/widget/LoadingViewController;->showContent(Z)V

    goto :goto_1

    .line 417
    :cond_1
    iget-object p0, p0, Lcom/android/settings/display/AppAspectRatioDashboardFragment$ApplicationsAdapter;->mLoadingViewController:Lcom/android/settings/widget/LoadingViewController;

    invoke-virtual {p0}, Lcom/android/settings/widget/LoadingViewController;->showLoadingViewDelayed()V

    :goto_1
    return-void
.end method
