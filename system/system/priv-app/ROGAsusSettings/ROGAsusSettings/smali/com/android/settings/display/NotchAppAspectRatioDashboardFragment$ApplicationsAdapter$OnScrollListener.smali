.class public Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$ApplicationsAdapter$OnScrollListener;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "NotchAppAspectRatioDashboardFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$ApplicationsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OnScrollListener"
.end annotation


# instance fields
.field private mAdapter:Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$ApplicationsAdapter;

.field private mDelayNotifyDataChange:Z

.field private mScrollState:I


# direct methods
.method public constructor <init>(Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$ApplicationsAdapter;)V
    .locals 1

    .line 633
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    const/4 v0, 0x0

    .line 629
    iput v0, p0, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$ApplicationsAdapter$OnScrollListener;->mScrollState:I

    .line 634
    iput-object p1, p0, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$ApplicationsAdapter$OnScrollListener;->mAdapter:Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$ApplicationsAdapter;

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    .line 639
    iput p2, p0, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$ApplicationsAdapter$OnScrollListener;->mScrollState:I

    if-nez p2, :cond_0

    .line 640
    iget-boolean p1, p0, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$ApplicationsAdapter$OnScrollListener;->mDelayNotifyDataChange:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 641
    iput-boolean p1, p0, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$ApplicationsAdapter$OnScrollListener;->mDelayNotifyDataChange:Z

    .line 642
    iget-object p0, p0, Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$ApplicationsAdapter$OnScrollListener;->mAdapter:Lcom/android/settings/display/NotchAppAspectRatioDashboardFragment$ApplicationsAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
