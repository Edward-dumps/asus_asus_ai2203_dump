.class public Lcom/android/settings/biometrics/asusfacelock/FaceRegisterMaskView;
.super Landroid/view/View;
.source "FaceRegisterMaskView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/biometrics/asusfacelock/FaceRegisterMaskView$viewCallback;
    }
.end annotation


# instance fields
.field private bottom:I

.field private isFirstScale:Z

.field private left:I

.field private mCallback:Lcom/android/settings/biometrics/asusfacelock/FaceRegisterMaskView$viewCallback;

.field private mCirclePaint1:Landroid/graphics/Paint;

.field private mCirclePaint2:Landroid/graphics/Paint;

.field private mClearPaint:Landroid/graphics/Paint;

.field private mMaskCircleTop:I

.field private mMaskRect:Landroid/graphics/Rect;

.field private progress:I

.field private right:I

.field private top:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 49
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 44
    iput-boolean v0, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterMaskView;->isFirstScale:Z

    .line 50
    invoke-direct {p0, p1}, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterMaskView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    .line 44
    iput-boolean p2, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterMaskView;->isFirstScale:Z

    .line 55
    invoke-direct {p0, p1}, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterMaskView;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/biometrics/asusfacelock/FaceRegisterMaskView;)I
    .locals 0

    .line 30
    iget p0, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterMaskView;->progress:I

    return p0
.end method

.method static synthetic access$002(Lcom/android/settings/biometrics/asusfacelock/FaceRegisterMaskView;I)I
    .locals 0

    .line 30
    iput p1, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterMaskView;->progress:I

    return p1
.end method

.method private convertDpToPixel(I)I
    .locals 0

    .line 233
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    int-to-float p1, p1

    .line 234
    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method private init(Landroid/content/Context;)V
    .locals 3

    .line 59
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterMaskView$viewCallback;

    iput-object p1, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterMaskView;->mCallback:Lcom/android/settings/biometrics/asusfacelock/FaceRegisterMaskView$viewCallback;

    .line 60
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterMaskView;->mClearPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    .line 61
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 62
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 63
    iget-object p1, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterMaskView;->mClearPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 64
    iget-object p1, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterMaskView;->mClearPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto :goto_0

    .line 67
    :cond_0
    iget-object p1, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterMaskView;->mClearPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 69
    :goto_0
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterMaskView;->mCirclePaint1:Landroid/graphics/Paint;

    .line 70
    iget-object p1, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterMaskView;->mClearPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 71
    iget-object p1, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterMaskView;->mCirclePaint1:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 72
    iget-object p1, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterMaskView;->mCirclePaint1:Landroid/graphics/Paint;

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterMaskView;->convertDpToPixel(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 73
    iget-object p1, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterMaskView;->mCirclePaint1:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 74
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterMaskView;->mCirclePaint2:Landroid/graphics/Paint;

    .line 75
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 76
    iget-object p1, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterMaskView;->mCirclePaint2:Landroid/graphics/Paint;

    invoke-direct {p0, v0}, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterMaskView;->convertDpToPixel(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 77
    iget-object p1, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterMaskView;->mCirclePaint2:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 78
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterMaskView;->mMaskRect:Landroid/graphics/Rect;

    .line 95
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$color;->asus_suw_bg:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    const/4 p1, 0x0

    .line 97
    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterMaskView;->setProgress(I)V

    return-void
.end method

.method private initMaskArea()V
    .locals 3

    .line 172
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 173
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    goto :goto_0

    .line 176
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 178
    :goto_0
    div-int/lit8 v0, v0, 0x6

    .line 179
    iput v0, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterMaskView;->left:I

    .line 180
    iput v0, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterMaskView;->top:I

    mul-int/lit8 v1, v0, 0x5

    .line 181
    iput v1, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterMaskView;->right:I

    .line 182
    iput v1, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterMaskView;->bottom:I

    .line 183
    iput v0, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterMaskView;->mMaskCircleTop:I

    .line 184
    iget-object p0, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterMaskView;->mCallback:Lcom/android/settings/biometrics/asusfacelock/FaceRegisterMaskView$viewCallback;

    sub-int v2, v1, v0

    sub-int/2addr v1, v0

    invoke-interface {p0, v2, v1}, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterMaskView$viewCallback;->setCamearViewSize(II)V

    return-void
.end method


# virtual methods
.method public getMaskCircleTop()I
    .locals 0

    .line 159
    iget p0, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterMaskView;->mMaskCircleTop:I

    add-int/lit8 p0, p0, 0x5

    return p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 197
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 198
    iget v1, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterMaskView;->left:I

    iget v2, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterMaskView;->right:I

    add-int v3, v1, v2

    shr-int/lit8 v3, v3, 0x1

    int-to-float v3, v3

    .line 199
    iget v4, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterMaskView;->top:I

    iget v5, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterMaskView;->bottom:I

    add-int/2addr v4, v5

    shr-int/lit8 v4, v4, 0x1

    int-to-float v4, v4

    sub-int/2addr v2, v1

    shr-int/lit8 v1, v2, 0x1

    int-to-float v1, v1

    .line 201
    iget-object v2, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterMaskView;->mClearPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 202
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v2, v5, :cond_1

    .line 203
    iget v2, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterMaskView;->progress:I

    if-nez v2, :cond_0

    .line 204
    iget-object v0, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterMaskView;->mCirclePaint1:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v1, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    mul-int/lit16 v1, v2, 0x168

    int-to-float v1, v1

    const/high16 v3, 0x42c80000    # 100.0f

    div-float v10, v1, v3

    rsub-int/lit8 v1, v2, 0x64

    neg-int v1, v1

    mul-int/lit16 v1, v1, 0x168

    int-to-float v1, v1

    div-float v7, v1, v3

    .line 211
    iget v1, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterMaskView;->left:I

    int-to-float v2, v1

    iget v1, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterMaskView;->top:I

    int-to-float v3, v1

    iget v1, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterMaskView;->right:I

    int-to-float v4, v1

    iget v1, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterMaskView;->bottom:I

    int-to-float v5, v1

    const/high16 v6, -0x3d4c0000    # -90.0f

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterMaskView;->mCirclePaint1:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    .line 212
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sweepAngle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FaceRegisterMaskView"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget v1, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterMaskView;->left:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterMaskView;->top:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterMaskView;->right:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterMaskView;->bottom:I

    int-to-float v4, v4

    const/high16 v5, -0x3d4c0000    # -90.0f

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterMaskView;->mCirclePaint2:Landroid/graphics/Paint;

    move-object v0, p1

    move v6, v10

    invoke-virtual/range {v0 .. v8}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 164
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    if-eqz p1, :cond_0

    .line 166
    invoke-direct {p0}, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterMaskView;->initMaskArea()V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 189
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 191
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    .line 192
    invoke-virtual {p0, p1, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public setProgress(I)V
    .locals 2

    .line 101
    iput p1, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterMaskView;->progress:I

    .line 102
    iget-object p1, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterMaskView;->mCirclePaint1:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$color;->asus_facelock_register_camera_view_progress_init:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 103
    iget-object p1, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterMaskView;->mCirclePaint2:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$color;->asus_facelock_register_camera_view_progress_incomplete:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 104
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p1, v0, :cond_0

    .line 105
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setProgressStart(Landroid/widget/TextView;)V
    .locals 3

    .line 110
    iget-object v0, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterMaskView;->mCirclePaint1:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$color;->asus_facelock_register_camera_view_progress_init:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 111
    iget-object v0, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterMaskView;->mCirclePaint2:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$color;->asus_facelock_register_camera_view_progress_incomplete:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 112
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 113
    new-instance v1, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterMaskView$1;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterMaskView$1;-><init>(Lcom/android/settings/biometrics/asusfacelock/FaceRegisterMaskView;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 p0, 0x3e8

    .line 121
    invoke-virtual {v0, p0, p1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 122
    new-instance p0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 123
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x64
    .end array-data
.end method
