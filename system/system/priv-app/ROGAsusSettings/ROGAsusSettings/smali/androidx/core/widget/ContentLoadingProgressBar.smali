.class public Landroidx/core/widget/ContentLoadingProgressBar;
.super Landroid/widget/ProgressBar;
.source "ContentLoadingProgressBar.java"


# instance fields
.field private final mDelayedHide:Ljava/lang/Runnable;

.field private final mDelayedShow:Ljava/lang/Runnable;

.field mDismissed:Z

.field mPostedHide:Z

.field mPostedShow:Z

.field mStartTime:J


# direct methods
.method public static synthetic $r8$lambda$9ZVtVfM7MwrgGmJEIZNfuhCC7eY(Landroidx/core/widget/ContentLoadingProgressBar;)V
    .locals 0

    invoke-direct {p0}, Landroidx/core/widget/ContentLoadingProgressBar;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$ovrYLeWrClCHhOWg8t_Ay80kDrs(Landroidx/core/widget/ContentLoadingProgressBar;)V
    .locals 0

    invoke-direct {p0}, Landroidx/core/widget/ContentLoadingProgressBar;->lambda$new$1()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, p1, v0}, Landroidx/core/widget/ContentLoadingProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-wide/16 p1, -0x1

    .line 39
    iput-wide p1, p0, Landroidx/core/widget/ContentLoadingProgressBar;->mStartTime:J

    .line 40
    iput-boolean v0, p0, Landroidx/core/widget/ContentLoadingProgressBar;->mPostedHide:Z

    .line 41
    iput-boolean v0, p0, Landroidx/core/widget/ContentLoadingProgressBar;->mPostedShow:Z

    .line 42
    iput-boolean v0, p0, Landroidx/core/widget/ContentLoadingProgressBar;->mDismissed:Z

    .line 44
    new-instance p1, Landroidx/core/widget/ContentLoadingProgressBar$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Landroidx/core/widget/ContentLoadingProgressBar$$ExternalSyntheticLambda0;-><init>(Landroidx/core/widget/ContentLoadingProgressBar;)V

    iput-object p1, p0, Landroidx/core/widget/ContentLoadingProgressBar;->mDelayedHide:Ljava/lang/Runnable;

    .line 50
    new-instance p1, Landroidx/core/widget/ContentLoadingProgressBar$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Landroidx/core/widget/ContentLoadingProgressBar$$ExternalSyntheticLambda1;-><init>(Landroidx/core/widget/ContentLoadingProgressBar;)V

    iput-object p1, p0, Landroidx/core/widget/ContentLoadingProgressBar;->mDelayedShow:Ljava/lang/Runnable;

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 2

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Landroidx/core/widget/ContentLoadingProgressBar;->mPostedHide:Z

    const-wide/16 v0, -0x1

    .line 46
    iput-wide v0, p0, Landroidx/core/widget/ContentLoadingProgressBar;->mStartTime:J

    const/16 v0, 0x8

    .line 47
    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method private synthetic lambda$new$1()V
    .locals 3

    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Landroidx/core/widget/ContentLoadingProgressBar;->mPostedShow:Z

    .line 52
    iget-boolean v1, p0, Landroidx/core/widget/ContentLoadingProgressBar;->mDismissed:Z

    if-nez v1, :cond_0

    .line 53
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Landroidx/core/widget/ContentLoadingProgressBar;->mStartTime:J

    .line 54
    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private removeCallbacks()V
    .locals 1

    .line 79
    iget-object v0, p0, Landroidx/core/widget/ContentLoadingProgressBar;->mDelayedHide:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 80
    iget-object v0, p0, Landroidx/core/widget/ContentLoadingProgressBar;->mDelayedShow:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 0

    .line 68
    invoke-super {p0}, Landroid/widget/ProgressBar;->onAttachedToWindow()V

    .line 69
    invoke-direct {p0}, Landroidx/core/widget/ContentLoadingProgressBar;->removeCallbacks()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .line 74
    invoke-super {p0}, Landroid/widget/ProgressBar;->onDetachedFromWindow()V

    .line 75
    invoke-direct {p0}, Landroidx/core/widget/ContentLoadingProgressBar;->removeCallbacks()V

    return-void
.end method
