.class public Lcom/android/settings/display/AppAspectRatioDashboardFragment$ApplicationsAdapter$OnScrollListener;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "AppAspectRatioDashboardFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/display/AppAspectRatioDashboardFragment$ApplicationsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OnScrollListener"
.end annotation


# instance fields
.field private mAdapter:Lcom/android/settings/display/AppAspectRatioDashboardFragment$ApplicationsAdapter;

.field private mDelayNotifyDataChange:Z

.field private mScrollState:I


# direct methods
.method public constructor <init>(Lcom/android/settings/display/AppAspectRatioDashboardFragment$ApplicationsAdapter;)V
    .locals 1

    .line 527
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    const/4 v0, 0x0

    .line 523
    iput v0, p0, Lcom/android/settings/display/AppAspectRatioDashboardFragment$ApplicationsAdapter$OnScrollListener;->mScrollState:I

    .line 528
    iput-object p1, p0, Lcom/android/settings/display/AppAspectRatioDashboardFragment$ApplicationsAdapter$OnScrollListener;->mAdapter:Lcom/android/settings/display/AppAspectRatioDashboardFragment$ApplicationsAdapter;

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    .line 533
    iput p2, p0, Lcom/android/settings/display/AppAspectRatioDashboardFragment$ApplicationsAdapter$OnScrollListener;->mScrollState:I

    if-nez p2, :cond_0

    .line 534
    iget-boolean p1, p0, Lcom/android/settings/display/AppAspectRatioDashboardFragment$ApplicationsAdapter$OnScrollListener;->mDelayNotifyDataChange:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 535
    iput-boolean p1, p0, Lcom/android/settings/display/AppAspectRatioDashboardFragment$ApplicationsAdapter$OnScrollListener;->mDelayNotifyDataChange:Z

    .line 536
    iget-object p0, p0, Lcom/android/settings/display/AppAspectRatioDashboardFragment$ApplicationsAdapter$OnScrollListener;->mAdapter:Lcom/android/settings/display/AppAspectRatioDashboardFragment$ApplicationsAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
