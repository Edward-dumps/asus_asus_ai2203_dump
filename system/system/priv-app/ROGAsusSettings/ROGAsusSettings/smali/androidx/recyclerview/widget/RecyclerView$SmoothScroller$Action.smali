.class public Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Action"
.end annotation


# instance fields
.field private mChanged:Z

.field private mConsecutiveUpdates:I

.field private mDuration:I

.field private mDx:I

.field private mDy:I

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mJumpToPosition:I


# direct methods
.method public constructor <init>(II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dx",
            "dy"
        }
    .end annotation

    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    .line 12594
    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;-><init>(IIILandroid/view/animation/Interpolator;)V

    return-void
.end method

.method public constructor <init>(IIILandroid/view/animation/Interpolator;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "dx",
            "dy",
            "duration",
            "interpolator"
        }
    .end annotation

    .line 12614
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 12579
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mJumpToPosition:I

    const/4 v0, 0x0

    .line 12583
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mChanged:Z

    .line 12587
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mConsecutiveUpdates:I

    .line 12615
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mDx:I

    .line 12616
    iput p2, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mDy:I

    .line 12617
    iput p3, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    .line 12618
    iput-object p4, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method private validate()V
    .locals 2

    .line 12669
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 12670
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "If you provide an interpolator, you must set a positive duration"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 12672
    :cond_1
    :goto_0
    iget p0, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    if-lt p0, v1, :cond_2

    return-void

    .line 12673
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Scroll duration must be a positive number"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method hasJumpTarget()Z
    .locals 0

    .line 12641
    iget p0, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mJumpToPosition:I

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public jumpTo(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "targetPosition"
        }
    .end annotation

    .line 12637
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mJumpToPosition:I

    return-void
.end method

.method runIfNecessary(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "recyclerView"
        }
    .end annotation

    .line 12645
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mJumpToPosition:I

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    const/4 v2, -0x1

    .line 12647
    iput v2, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mJumpToPosition:I

    .line 12648
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->jumpToPositionForSmoothScroller(I)V

    .line 12649
    iput-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mChanged:Z

    return-void

    .line 12652
    :cond_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mChanged:Z

    if-eqz v0, :cond_2

    .line 12653
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->validate()V

    .line 12654
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->mViewFlinger:Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mDx:I

    iget v2, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mDy:I

    iget v3, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->smoothScrollBy(IIILandroid/view/animation/Interpolator;)V

    .line 12655
    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mConsecutiveUpdates:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mConsecutiveUpdates:I

    const/16 v0, 0xa

    if-le p1, v0, :cond_1

    const-string p1, "RecyclerView"

    const-string v0, "Smooth Scroll action is being updated too frequently. Make sure you are not changing it unless necessary"

    .line 12659
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12662
    :cond_1
    iput-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mChanged:Z

    goto :goto_0

    .line 12664
    :cond_2
    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mConsecutiveUpdates:I

    :goto_0
    return-void
.end method

.method public update(IIILandroid/view/animation/Interpolator;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "dx",
            "dy",
            "duration",
            "interpolator"
        }
    .end annotation

    .line 12734
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mDx:I

    .line 12735
    iput p2, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mDy:I

    .line 12736
    iput p3, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    .line 12737
    iput-object p4, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    const/4 p1, 0x1

    .line 12738
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mChanged:Z

    return-void
.end method
