.class public Lcom/android/settings/display/AllInOnePreviewPagerAdapter;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "AllInOnePreviewPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/display/AllInOnePreviewPagerAdapter$PreviewFrameAnimatorListener;
    }
.end annotation


# static fields
.field private static final FADE_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final FADE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;


# instance fields
.field private mAnimationCounter:I

.field private mAnimationEndAction:Ljava/lang/Runnable;

.field private mConfigDisplayLength:I

.field private mConfigFontLength:I

.field private mIsLayoutRtl:Z

.field private mPreviewFrames:[Landroid/widget/FrameLayout;

.field private mViewStubInflated:[[Z


# direct methods
.method public static synthetic $r8$lambda$NdfBMkWS4JmNOo8G5cQBLmvI9K4(Lcom/android/settings/display/AllInOnePreviewPagerAdapter;IILandroid/view/ViewStub;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/display/AllInOnePreviewPagerAdapter;->lambda$new$0(IILandroid/view/ViewStub;Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 44
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/android/settings/display/AllInOnePreviewPagerAdapter;->FADE_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 47
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Lcom/android/settings/display/AllInOnePreviewPagerAdapter;->FADE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z[I[Landroid/content/res/Configuration;[Landroid/content/res/Configuration;)V
    .locals 8

    .line 63
    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    .line 64
    iput-boolean p2, p0, Lcom/android/settings/display/AllInOnePreviewPagerAdapter;->mIsLayoutRtl:Z

    .line 65
    array-length p2, p4

    iput p2, p0, Lcom/android/settings/display/AllInOnePreviewPagerAdapter;->mConfigFontLength:I

    .line 66
    array-length v0, p5

    iput v0, p0, Lcom/android/settings/display/AllInOnePreviewPagerAdapter;->mConfigDisplayLength:I

    mul-int/2addr p2, v0

    .line 68
    array-length v0, p3

    new-array v0, v0, [Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/settings/display/AllInOnePreviewPagerAdapter;->mPreviewFrames:[Landroid/widget/FrameLayout;

    .line 69
    array-length v0, p3

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x1

    aput p2, v1, v2

    const/4 p2, 0x0

    aput v0, v1, p2

    const-class v0, Z

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    iput-object v0, p0, Lcom/android/settings/display/AllInOnePreviewPagerAdapter;->mViewStubInflated:[[Z

    move v0, p2

    .line 71
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_3

    .line 72
    iget-boolean v1, p0, Lcom/android/settings/display/AllInOnePreviewPagerAdapter;->mIsLayoutRtl:Z

    if-eqz v1, :cond_0

    array-length v1, p3

    sub-int/2addr v1, v2

    sub-int/2addr v1, v0

    goto :goto_1

    :cond_0
    move v1, v0

    .line 73
    :goto_1
    iget-object v3, p0, Lcom/android/settings/display/AllInOnePreviewPagerAdapter;->mPreviewFrames:[Landroid/widget/FrameLayout;

    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    aput-object v4, v3, v1

    .line 74
    iget-object v3, p0, Lcom/android/settings/display/AllInOnePreviewPagerAdapter;->mPreviewFrames:[Landroid/widget/FrameLayout;

    aget-object v3, v3, v1

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v4, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    iget-object v3, p0, Lcom/android/settings/display/AllInOnePreviewPagerAdapter;->mPreviewFrames:[Landroid/widget/FrameLayout;

    aget-object v3, v3, v1

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    .line 78
    iget-object v3, p0, Lcom/android/settings/display/AllInOnePreviewPagerAdapter;->mPreviewFrames:[Landroid/widget/FrameLayout;

    aget-object v3, v3, v1

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    move v3, p2

    .line 79
    :goto_2
    array-length v4, p4

    if-ge v3, v4, :cond_2

    move v4, p2

    .line 80
    :goto_3
    array-length v5, p5

    if-ge v4, v5, :cond_1

    .line 83
    aget-object v5, p4, v3

    .line 84
    aget-object v6, p5, v4

    iget v6, v6, Landroid/content/res/Configuration;->densityDpi:I

    iput v6, v5, Landroid/content/res/Configuration;->densityDpi:I

    .line 86
    invoke-virtual {p1, v5}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v5

    .line 87
    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 89
    new-instance v6, Landroid/view/ViewStub;

    invoke-direct {v6, v5}, Landroid/view/ViewStub;-><init>(Landroid/content/Context;)V

    .line 90
    aget v5, p3, v0

    invoke-virtual {v6, v5}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 91
    array-length v5, p5

    mul-int/2addr v5, v3

    add-int/2addr v5, v4

    .line 92
    new-instance v7, Lcom/android/settings/display/AllInOnePreviewPagerAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v7, p0, v0, v5}, Lcom/android/settings/display/AllInOnePreviewPagerAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/display/AllInOnePreviewPagerAdapter;II)V

    invoke-virtual {v6, v7}, Landroid/view/ViewStub;->setOnInflateListener(Landroid/view/ViewStub$OnInflateListener;)V

    .line 97
    iget-object v5, p0, Lcom/android/settings/display/AllInOnePreviewPagerAdapter;->mPreviewFrames:[Landroid/widget/FrameLayout;

    aget-object v5, v5, v1

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method static synthetic access$108(Lcom/android/settings/display/AllInOnePreviewPagerAdapter;)I
    .locals 2

    .line 38
    iget v0, p0, Lcom/android/settings/display/AllInOnePreviewPagerAdapter;->mAnimationCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/settings/display/AllInOnePreviewPagerAdapter;->mAnimationCounter:I

    return v0
.end method

.method static synthetic access$110(Lcom/android/settings/display/AllInOnePreviewPagerAdapter;)I
    .locals 2

    .line 38
    iget v0, p0, Lcom/android/settings/display/AllInOnePreviewPagerAdapter;->mAnimationCounter:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/settings/display/AllInOnePreviewPagerAdapter;->mAnimationCounter:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings/display/AllInOnePreviewPagerAdapter;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/android/settings/display/AllInOnePreviewPagerAdapter;->runAnimationEndAction()V

    return-void
.end method

.method private synthetic lambda$new$0(IILandroid/view/ViewStub;Landroid/view/View;)V
    .locals 0

    .line 93
    invoke-virtual {p3}, Landroid/view/ViewStub;->getVisibility()I

    move-result p3

    invoke-virtual {p4, p3}, Landroid/view/View;->setVisibility(I)V

    .line 94
    iget-object p0, p0, Lcom/android/settings/display/AllInOnePreviewPagerAdapter;->mViewStubInflated:[[Z

    aget-object p0, p0, p1

    const/4 p1, 0x1

    aput-boolean p1, p0, p2

    return-void
.end method

.method private runAnimationEndAction()V
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/android/settings/display/AllInOnePreviewPagerAdapter;->mAnimationEndAction:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/display/AllInOnePreviewPagerAdapter;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/android/settings/display/AllInOnePreviewPagerAdapter;->mAnimationEndAction:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    .line 208
    iput-object v0, p0, Lcom/android/settings/display/AllInOnePreviewPagerAdapter;->mAnimationEndAction:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method private setVisibility(Landroid/view/View;IZ)V
    .locals 5

    if-nez p2, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez p3, :cond_1

    .line 170
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 171
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 173
    :cond_1
    sget-object p3, Lcom/android/settings/display/AllInOnePreviewPagerAdapter;->FADE_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    const/4 v1, 0x0

    const-wide/16 v2, 0x190

    if-nez p2, :cond_2

    .line 177
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    .line 178
    invoke-virtual {v4, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 179
    invoke-virtual {v0, p3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    .line 180
    invoke-virtual {p3, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    new-instance v0, Lcom/android/settings/display/AllInOnePreviewPagerAdapter$PreviewFrameAnimatorListener;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/display/AllInOnePreviewPagerAdapter$PreviewFrameAnimatorListener;-><init>(Lcom/android/settings/display/AllInOnePreviewPagerAdapter;Lcom/android/settings/display/AllInOnePreviewPagerAdapter$1;)V

    .line 181
    invoke-virtual {p3, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    new-instance v0, Lcom/android/settings/display/AllInOnePreviewPagerAdapter$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/settings/display/AllInOnePreviewPagerAdapter$1;-><init>(Lcom/android/settings/display/AllInOnePreviewPagerAdapter;Landroid/view/View;I)V

    .line 182
    invoke-virtual {p3, v0}, Landroid/view/ViewPropertyAnimator;->withStartAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    goto :goto_1

    .line 190
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    .line 191
    invoke-virtual {p3, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    sget-object v0, Lcom/android/settings/display/AllInOnePreviewPagerAdapter;->FADE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 192
    invoke-virtual {p3, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    .line 193
    invoke-virtual {p3, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    new-instance v0, Lcom/android/settings/display/AllInOnePreviewPagerAdapter$PreviewFrameAnimatorListener;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/display/AllInOnePreviewPagerAdapter$PreviewFrameAnimatorListener;-><init>(Lcom/android/settings/display/AllInOnePreviewPagerAdapter;Lcom/android/settings/display/AllInOnePreviewPagerAdapter$1;)V

    .line 194
    invoke-virtual {p3, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    new-instance v0, Lcom/android/settings/display/AllInOnePreviewPagerAdapter$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/settings/display/AllInOnePreviewPagerAdapter$2;-><init>(Lcom/android/settings/display/AllInOnePreviewPagerAdapter;Landroid/view/View;I)V

    .line 195
    invoke-virtual {p3, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    :goto_1
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 105
    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/android/settings/display/AllInOnePreviewPagerAdapter;->mPreviewFrames:[Landroid/widget/FrameLayout;

    array-length p0, p0

    return p0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/android/settings/display/AllInOnePreviewPagerAdapter;->mPreviewFrames:[Landroid/widget/FrameLayout;

    aget-object v0, v0, p2

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 116
    iget-object p0, p0, Lcom/android/settings/display/AllInOnePreviewPagerAdapter;->mPreviewFrames:[Landroid/widget/FrameLayout;

    aget-object p0, p0, p2

    return-object p0
.end method

.method isAnimating()Z
    .locals 0

    .line 125
    iget p0, p0, Lcom/android/settings/display/AllInOnePreviewPagerAdapter;->mAnimationCounter:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method setAnimationEndAction(Ljava/lang/Runnable;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/android/settings/display/AllInOnePreviewPagerAdapter;->mAnimationEndAction:Ljava/lang/Runnable;

    return-void
.end method

.method setPreviewLayer(IIIIIZ)V
    .locals 6

    .line 135
    iget v0, p0, Lcom/android/settings/display/AllInOnePreviewPagerAdapter;->mConfigDisplayLength:I

    mul-int/2addr p3, v0

    add-int/2addr p3, p4

    mul-int/2addr p1, v0

    add-int/2addr p1, p2

    .line 138
    iget-object p2, p0, Lcom/android/settings/display/AllInOnePreviewPagerAdapter;->mPreviewFrames:[Landroid/widget/FrameLayout;

    array-length p4, p2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p4, :cond_4

    aget-object v2, p2, v1

    if-ltz p3, :cond_1

    .line 140
    invoke-virtual {v2, p3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 141
    iget-object v4, p0, Lcom/android/settings/display/AllInOnePreviewPagerAdapter;->mViewStubInflated:[[Z

    aget-object v4, v4, p5

    aget-boolean v4, v4, p3

    if-eqz v4, :cond_1

    .line 144
    iget-object v4, p0, Lcom/android/settings/display/AllInOnePreviewPagerAdapter;->mPreviewFrames:[Landroid/widget/FrameLayout;

    aget-object v4, v4, p5

    const/4 v5, 0x4

    if-ne v2, v4, :cond_0

    .line 145
    invoke-direct {p0, v3, v5, p6}, Lcom/android/settings/display/AllInOnePreviewPagerAdapter;->setVisibility(Landroid/view/View;IZ)V

    goto :goto_1

    .line 147
    :cond_0
    invoke-direct {p0, v3, v5, v0}, Lcom/android/settings/display/AllInOnePreviewPagerAdapter;->setVisibility(Landroid/view/View;IZ)V

    .line 153
    :cond_1
    :goto_1
    invoke-virtual {v2, p1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 154
    iget-object v4, p0, Lcom/android/settings/display/AllInOnePreviewPagerAdapter;->mPreviewFrames:[Landroid/widget/FrameLayout;

    aget-object v4, v4, p5

    if-ne v2, v4, :cond_3

    .line 156
    iget-object v2, p0, Lcom/android/settings/display/AllInOnePreviewPagerAdapter;->mViewStubInflated:[[Z

    aget-object v2, v2, p5

    aget-boolean v2, v2, p1

    if-nez v2, :cond_2

    .line 157
    check-cast v3, Landroid/view/ViewStub;

    invoke-virtual {v3}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v3

    const/4 v2, 0x0

    .line 158
    invoke-virtual {v3, v2}, Landroid/view/View;->setAlpha(F)V

    .line 160
    :cond_2
    invoke-direct {p0, v3, v0, p6}, Lcom/android/settings/display/AllInOnePreviewPagerAdapter;->setVisibility(Landroid/view/View;IZ)V

    goto :goto_2

    .line 162
    :cond_3
    invoke-direct {p0, v3, v0, v0}, Lcom/android/settings/display/AllInOnePreviewPagerAdapter;->setVisibility(Landroid/view/View;IZ)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method
