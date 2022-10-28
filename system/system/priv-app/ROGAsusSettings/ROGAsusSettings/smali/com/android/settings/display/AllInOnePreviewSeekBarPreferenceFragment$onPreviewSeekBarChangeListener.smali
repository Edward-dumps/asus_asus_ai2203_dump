.class Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;
.super Ljava/lang/Object;
.source "AllInOnePreviewSeekBarPreferenceFragment.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "onPreviewSeekBarChangeListener"
.end annotation


# instance fields
.field private final mCommit:Landroid/view/Choreographer$FrameCallback;

.field private mCommitDelayMs:J

.field private mCurrentIndexLocal:I

.field private mIsChanged:Z

.field private mIsFont:Z

.field private mSeekByTouch:Z

.field final synthetic this$0:Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;


# direct methods
.method public static synthetic $r8$lambda$30VwuVGh93ldhDUKobANVNQrf-Y(Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->commitOnNextFrame()V

    return-void
.end method

.method public static synthetic $r8$lambda$l1Bsw7y3lXtmNwLQrutkmfPutbY(Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->lambda$new$0(J)V

    return-void
.end method

.method private constructor <init>(Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->this$0:Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    new-instance p1, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;)V

    iput-object p1, p0, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->mCommit:Landroid/view/Choreographer$FrameCallback;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment$1;)V
    .locals 0

    .line 81
    invoke-direct {p0, p1}, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;-><init>(Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;Z)V
    .locals 0

    .line 81
    invoke-direct {p0, p1}, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->isFontType(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;I)V
    .locals 0

    .line 81
    invoke-direct {p0, p1}, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->setIndex(I)V

    return-void
.end method

.method private commitOnNextFrame()V
    .locals 4

    .line 140
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->this$0:Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;

    invoke-static {v2}, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;->access$300(Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x320

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 141
    iget-wide v0, p0, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->mCommitDelayMs:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->mCommitDelayMs:J

    .line 143
    :cond_0
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    .line 144
    iget-object v1, p0, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->mCommit:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 145
    iget-object v1, p0, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->mCommit:Landroid/view/Choreographer$FrameCallback;

    iget-wide v2, p0, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->mCommitDelayMs:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/Choreographer;->postFrameCallbackDelayed(Landroid/view/Choreographer$FrameCallback;J)V

    return-void
.end method

.method private isFontType(Z)V
    .locals 0

    .line 92
    iput-boolean p1, p0, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->mIsFont:Z

    return-void
.end method

.method private synthetic lambda$new$0(J)V
    .locals 0

    .line 100
    iget-object p1, p0, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->this$0:Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;

    invoke-virtual {p1}, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;->commit()V

    .line 101
    iget-object p0, p0, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->this$0:Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    invoke-static {p0, p1, p2}, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;->access$302(Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;J)J

    return-void
.end method

.method private setIndex(I)V
    .locals 0

    .line 96
    iput p1, p0, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->mCurrentIndexLocal:I

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    .line 106
    iget p1, p0, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->mCurrentIndexLocal:I

    const/4 p3, 0x0

    if-ne p1, p2, :cond_0

    .line 107
    iput-boolean p3, p0, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->mIsChanged:Z

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 110
    iput-boolean p1, p0, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->mIsChanged:Z

    .line 111
    iget-object v0, p0, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->this$0:Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;

    invoke-static {v0, p1}, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;->access$000(Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;Z)V

    .line 112
    iget-object p1, p0, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->this$0:Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;

    iget-boolean v0, p0, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->mIsFont:Z

    invoke-static {p1, v0, p2, p3}, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;->access$100(Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;ZIZ)V

    .line 113
    iget-boolean p1, p0, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->mSeekByTouch:Z

    if-eqz p1, :cond_1

    const-wide/16 p1, 0x64

    .line 114
    iput-wide p1, p0, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->mCommitDelayMs:J

    goto :goto_0

    :cond_1
    const-wide/16 p1, 0x12c

    .line 116
    iput-wide p1, p0, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->mCommitDelayMs:J

    .line 117
    invoke-direct {p0}, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->commitOnNextFrame()V

    :goto_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    const/4 p1, 0x1

    .line 123
    iput-boolean p1, p0, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->mSeekByTouch:Z

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    const/4 p1, 0x0

    .line 128
    iput-boolean p1, p0, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->mSeekByTouch:Z

    .line 129
    iget-boolean p1, p0, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->mIsChanged:Z

    if-nez p1, :cond_0

    return-void

    .line 132
    :cond_0
    iget-object p1, p0, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->this$0:Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;

    invoke-static {p1}, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;->access$200(Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;)Lcom/android/settings/display/AllInOnePreviewPagerAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/display/AllInOnePreviewPagerAdapter;->isAnimating()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 133
    iget-object p1, p0, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->this$0:Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;

    invoke-static {p1}, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;->access$200(Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;)Lcom/android/settings/display/AllInOnePreviewPagerAdapter;

    move-result-object p1

    new-instance v0, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;)V

    invoke-virtual {p1, v0}, Lcom/android/settings/display/AllInOnePreviewPagerAdapter;->setAnimationEndAction(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 135
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->commitOnNextFrame()V

    :goto_0
    return-void
.end method
