.class public abstract Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ViewHolder"
.end annotation


# static fields
.field private static final FULLUPDATE_PAYLOADS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final itemView:Landroid/view/View;

.field mBindingAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "+",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field mFlags:I

.field mInChangeScrap:Z

.field private mIsRecyclableCount:I

.field mItemId:J

.field mItemViewType:I

.field mNestedRecyclerView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/recyclerview/widget/RecyclerView;",
            ">;"
        }
    .end annotation
.end field

.field mOldPosition:I

.field mOwnerRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field mPayloads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field mPendingAccessibilityState:I

.field mPosition:I

.field mPreLayoutPosition:I

.field mScrapContainer:Landroidx/recyclerview/widget/RecyclerView$Recycler;

.field mShadowedHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

.field mShadowingHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

.field mUnmodifiedPayloads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mWasImportantForAccessibilityBeforeHidden:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11453
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->FULLUPDATE_PAYLOADS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "itemView"
        }
    .end annotation

    .line 11483
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 11347
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    .line 11348
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mOldPosition:I

    const-wide/16 v1, -0x1

    .line 11349
    iput-wide v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mItemId:J

    .line 11350
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mItemViewType:I

    .line 11351
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    const/4 v1, 0x0

    .line 11354
    iput-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mShadowedHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 11356
    iput-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mShadowingHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 11455
    iput-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPayloads:Ljava/util/List;

    .line 11456
    iput-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mUnmodifiedPayloads:Ljava/util/List;

    const/4 v2, 0x0

    .line 11458
    iput v2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mIsRecyclableCount:I

    .line 11462
    iput-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mScrapContainer:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    .line 11464
    iput-boolean v2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mInChangeScrap:Z

    .line 11468
    iput v2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mWasImportantForAccessibilityBeforeHidden:I

    .line 11471
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPendingAccessibilityState:I

    if-eqz p1, :cond_0

    .line 11487
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    return-void

    .line 11485
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "itemView may not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private createPayloadsIfNeeded()V
    .locals 1

    .line 11795
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPayloads:Ljava/util/List;

    if-nez v0, :cond_0

    .line 11796
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPayloads:Ljava/util/List;

    .line 11797
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mUnmodifiedPayloads:Ljava/util/List;

    :cond_0
    return-void
.end method


# virtual methods
.method addChangePayload(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "payload"
        }
    .end annotation

    const/16 v0, 0x400

    if-nez p1, :cond_0

    .line 11787
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->addFlags(I)V

    goto :goto_0

    .line 11788
    :cond_0
    iget v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 11789
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->createPayloadsIfNeeded()V

    .line 11790
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPayloads:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method addFlags(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "flags"
        }
    .end annotation

    .line 11782
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    or-int/2addr p1, v0

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    return-void
.end method

.method clearOldPosition()V
    .locals 1

    const/4 v0, -0x1

    .line 11513
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mOldPosition:I

    .line 11514
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    return-void
.end method

.method clearPayload()V
    .locals 1

    .line 11802
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPayloads:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 11803
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 11805
    :cond_0
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    return-void
.end method

.method clearReturnedFromScrapFlag()V
    .locals 1

    .line 11729
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    return-void
.end method

.method clearTmpDetachFlag()V
    .locals 1

    .line 11733
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    return-void
.end method

.method doesTransientStatePreventRecycling()Z
    .locals 1

    .line 11940
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->hasTransientState(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method flagRemovedAndOffsetPosition(IIZ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "mNewPosition",
            "offset",
            "applyToPreLayout"
        }
    .end annotation

    const/16 v0, 0x8

    .line 11491
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 11492
    invoke-virtual {p0, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    .line 11493
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    return-void
.end method

.method public final getAbsoluteAdapterPosition()I
    .locals 1

    .line 11666
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mOwnerRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 11669
    :cond_0
    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapterPositionInRecyclerView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I

    move-result p0

    return p0
.end method

.method public final getAdapterPosition()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 11578
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result p0

    return p0
.end method

.method public final getBindingAdapterPosition()I
    .locals 3

    .line 11613
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mBindingAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 11616
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mOwnerRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_1

    return v1

    .line 11620
    :cond_1
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-nez v0, :cond_2

    return v1

    .line 11624
    :cond_2
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mOwnerRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapterPositionInRecyclerView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I

    move-result v2

    if-ne v2, v1, :cond_3

    return v1

    .line 11628
    :cond_3
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mBindingAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, v1, p0, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->findRelativeAdapterPositionIn(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)I

    move-result p0

    return p0
.end method

.method public final getItemId()J
    .locals 2

    .line 11706
    iget-wide v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mItemId:J

    return-wide v0
.end method

.method public final getItemViewType()I
    .locals 0

    .line 11713
    iget p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mItemViewType:I

    return p0
.end method

.method public final getLayoutPosition()I
    .locals 2

    .line 11565
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    :cond_0
    return v0
.end method

.method public final getOldPosition()I
    .locals 0

    .line 11696
    iget p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mOldPosition:I

    return p0
.end method

.method getUnmodifiedPayloads()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 11809
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_2

    .line 11810
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPayloads:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 11815
    :cond_0
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mUnmodifiedPayloads:Ljava/util/List;

    return-object p0

    .line 11812
    :cond_1
    :goto_0
    sget-object p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->FULLUPDATE_PAYLOADS:Ljava/util/List;

    return-object p0

    .line 11818
    :cond_2
    sget-object p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->FULLUPDATE_PAYLOADS:Ljava/util/List;

    return-object p0
.end method

.method hasAnyOfTheFlags(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "flags"
        }
    .end annotation

    .line 11762
    iget p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method isAdapterPositionUnknown()Z
    .locals 1

    .line 11774
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isInvalid()Z

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

.method isAttachedToTransitionOverlay()Z
    .locals 1

    .line 11770
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mOwnerRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method isBound()Z
    .locals 1

    .line 11754
    iget p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isInvalid()Z
    .locals 0

    .line 11746
    iget p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isRecyclable()Z
    .locals 1

    .line 11923
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 11924
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->hasTransientState(Landroid/view/View;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method isRemoved()Z
    .locals 0

    .line 11758
    iget p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method isScrap()Z
    .locals 0

    .line 11717
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mScrapContainer:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method isTmpDetached()Z
    .locals 0

    .line 11766
    iget p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit16 p0, p0, 0x100

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method isUpdated()Z
    .locals 0

    .line 11944
    iget p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method needsUpdate()Z
    .locals 0

    .line 11750
    iget p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method offsetPosition(IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "offset",
            "applyToPreLayout"
        }
    .end annotation

    .line 11497
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mOldPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 11498
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mOldPosition:I

    .line 11500
    :cond_0
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    if-ne v0, v1, :cond_1

    .line 11501
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    :cond_1
    if-eqz p2, :cond_2

    .line 11504
    iget p2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    add-int/2addr p2, p1

    iput p2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    .line 11506
    :cond_2
    iget p2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    add-int/2addr p2, p1

    iput p2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    .line 11507
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 11508
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    :cond_3
    return-void
.end method

.method onEnteredHiddenState(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parent"
        }
    .end annotation

    .line 11842
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPendingAccessibilityState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 11843
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mWasImportantForAccessibilityBeforeHidden:I

    goto :goto_0

    .line 11845
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 11846
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mWasImportantForAccessibilityBeforeHidden:I

    :goto_0
    const/4 v0, 0x4

    .line 11848
    invoke-virtual {p1, p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setChildImportantForAccessibilityInternal(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)Z

    return-void
.end method

.method onLeftHiddenState(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parent"
        }
    .end annotation

    .line 11856
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mWasImportantForAccessibilityBeforeHidden:I

    invoke-virtual {p1, p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setChildImportantForAccessibilityInternal(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)Z

    const/4 p1, 0x0

    .line 11858
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mWasImportantForAccessibilityBeforeHidden:I

    return-void
.end method

.method resetInternal()V
    .locals 4

    const/4 v0, 0x0

    .line 11823
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    const/4 v1, -0x1

    .line 11824
    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    .line 11825
    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mOldPosition:I

    const-wide/16 v2, -0x1

    .line 11826
    iput-wide v2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mItemId:J

    .line 11827
    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    .line 11828
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mIsRecyclableCount:I

    const/4 v2, 0x0

    .line 11829
    iput-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mShadowedHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 11830
    iput-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mShadowingHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 11831
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->clearPayload()V

    .line 11832
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mWasImportantForAccessibilityBeforeHidden:I

    .line 11833
    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPendingAccessibilityState:I

    .line 11834
    invoke-static {p0}, Landroidx/recyclerview/widget/RecyclerView;->clearNestedRecyclerViewIfNotNested(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method saveOldPosition()V
    .locals 2

    .line 11518
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mOldPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 11519
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mOldPosition:I

    :cond_0
    return-void
.end method

.method setFlags(II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "flags",
            "mask"
        }
    .end annotation

    .line 11778
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    not-int v1, p2

    and-int/2addr v0, v1

    and-int/2addr p1, p2

    or-int/2addr p1, v0

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    return-void
.end method

.method public final setIsRecyclable(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "recyclable"
        }
    .end annotation

    const/4 v0, 0x1

    .line 11899
    iget v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mIsRecyclableCount:I

    if-eqz p1, :cond_0

    sub-int/2addr v1, v0

    goto :goto_0

    :cond_0
    add-int/2addr v1, v0

    :goto_0
    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mIsRecyclableCount:I

    if-gez v1, :cond_1

    const/4 p1, 0x0

    .line 11901
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mIsRecyclableCount:I

    .line 11906
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isRecyclable decremented below 0: unmatched pair of setIsRecyable() calls for "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "View"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    if-nez p1, :cond_2

    if-ne v1, v0, :cond_2

    .line 11909
    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    if-nez v1, :cond_3

    .line 11911
    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 p1, p1, -0x11

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    :cond_3
    :goto_1
    return-void
.end method

.method setScrapContainer(Landroidx/recyclerview/widget/RecyclerView$Recycler;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "recycler",
            "isChangeScrap"
        }
    .end annotation

    .line 11741
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mScrapContainer:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    .line 11742
    iput-boolean p2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mInChangeScrap:Z

    return-void
.end method

.method shouldBeKeptAsChild()Z
    .locals 0

    .line 11932
    iget p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method shouldIgnore()Z
    .locals 0

    .line 11524
    iget p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit16 p0, p0, 0x80

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 11864
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ViewHolder"

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 11865
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "{"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11866
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " position="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " id="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mItemId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", oldPos="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mOldPosition:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", pLpos:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11868
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isScrap()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, " scrap "

    .line 11869
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11870
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mInChangeScrap:Z

    if-eqz v0, :cond_1

    const-string v0, "[changeScrap]"

    goto :goto_1

    :cond_1
    const-string v0, "[attachedScrap]"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11872
    :cond_2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, " invalid"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11873
    :cond_3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isBound()Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, " unbound"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11874
    :cond_4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->needsUpdate()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, " update"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11875
    :cond_5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, " removed"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11876
    :cond_6
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, " ignored"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11877
    :cond_7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, " tmpDetached"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11878
    :cond_8
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isRecyclable()Z

    move-result v0

    if-nez v0, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " not recyclable("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mIsRecyclableCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11879
    :cond_9
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isAdapterPositionUnknown()Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, " undefined adapter position"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11881
    :cond_a
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    if-nez p0, :cond_b

    const-string p0, " no parent"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    const-string/jumbo p0, "}"

    .line 11882
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11883
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method unScrap()V
    .locals 1

    .line 11721
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mScrapContainer:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->unscrapView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method wasReturnedFromScrap()Z
    .locals 0

    .line 11725
    iget p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 p0, p0, 0x20

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
