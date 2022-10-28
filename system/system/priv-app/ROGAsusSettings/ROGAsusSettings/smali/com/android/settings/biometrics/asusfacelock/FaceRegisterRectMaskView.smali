.class public Lcom/android/settings/biometrics/asusfacelock/FaceRegisterRectMaskView;
.super Landroid/view/View;
.source "FaceRegisterRectMaskView.java"


# instance fields
.field private bottom:I

.field private isFirstScale:Z

.field private left:I

.field private mClearPaint:Landroid/graphics/Paint;

.field private mMaskCircleTop:I

.field private mMaskRect:Landroid/graphics/Rect;

.field private progress:I

.field private right:I

.field private top:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 53
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 50
    iput-boolean v0, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterRectMaskView;->isFirstScale:Z

    .line 54
    invoke-direct {p0, p1}, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterRectMaskView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    .line 50
    iput-boolean p2, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterRectMaskView;->isFirstScale:Z

    .line 59
    invoke-direct {p0, p1}, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterRectMaskView;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/biometrics/asusfacelock/FaceRegisterRectMaskView;)I
    .locals 0

    .line 38
    iget p0, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterRectMaskView;->progress:I

    return p0
.end method

.method static synthetic access$002(Lcom/android/settings/biometrics/asusfacelock/FaceRegisterRectMaskView;I)I
    .locals 0

    .line 38
    iput p1, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterRectMaskView;->progress:I

    return p1
.end method

.method private convertDpToPixel(I)I
    .locals 0

    .line 182
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    int-to-float p1, p1

    .line 183
    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method private init(Landroid/content/Context;)V
    .locals 4

    .line 63
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterRectMaskView;->mClearPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 64
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 65
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterRectMaskView;->mClearPaint:Landroid/graphics/Paint;

    const/high16 v2, -0x1000000

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 67
    iget-object v0, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterRectMaskView;->mClearPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto :goto_0

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterRectMaskView;->mClearPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 72
    :goto_0
    iget-object v0, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterRectMaskView;->mClearPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 73
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterRectMaskView;->mMaskRect:Landroid/graphics/Rect;

    .line 88
    invoke-static {p1}, Lcom/android/settingslib/widget/ThemeUtils;->getBgColorCode(Landroid/content/Context;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    const/4 p1, 0x0

    .line 89
    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterRectMaskView;->setProgress(I)V

    return-void
.end method

.method private initMaskArea()V
    .locals 6

    .line 153
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 154
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    goto :goto_0

    .line 157
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    :goto_0
    const/4 v1, 0x0

    .line 159
    iput v1, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterRectMaskView;->left:I

    .line 160
    iput v1, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterRectMaskView;->top:I

    int-to-double v2, v0

    const-wide v4, 0x3feb851eb851eb85L    # 0.86

    mul-double/2addr v2, v4

    double-to-int v2, v2

    .line 161
    iput v2, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterRectMaskView;->right:I

    .line 162
    iput v0, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterRectMaskView;->bottom:I

    .line 163
    iput v1, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterRectMaskView;->mMaskCircleTop:I

    return-void
.end method


# virtual methods
.method public getMaskCircleTop()I
    .locals 0

    .line 140
    iget p0, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterRectMaskView;->mMaskCircleTop:I

    add-int/lit8 p0, p0, 0x5

    return p0
.end method

.method public getMaskRect(FF)Landroid/graphics/Rect;
    .locals 6

    .line 124
    iget-boolean v0, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterRectMaskView;->isFirstScale:Z

    if-eqz v0, :cond_0

    .line 125
    iget v0, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterRectMaskView;->left:I

    int-to-float v0, v0

    div-float/2addr v0, p1

    float-to-int v0, v0

    .line 126
    iget v1, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterRectMaskView;->top:I

    int-to-float v1, v1

    div-float/2addr v1, p2

    float-to-int v1, v1

    .line 127
    iget v2, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterRectMaskView;->right:I

    int-to-float v2, v2

    div-float/2addr v2, p1

    float-to-int v2, v2

    .line 128
    iget v3, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterRectMaskView;->bottom:I

    int-to-float v3, v3

    div-float/2addr v3, p2

    float-to-int v3, v3

    .line 129
    div-int/lit8 v4, v0, 0x2

    .line 130
    iget-object v5, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterRectMaskView;->mMaskRect:Landroid/graphics/Rect;

    sub-int/2addr v0, v4

    sub-int/2addr v1, v4

    add-int/2addr v2, v4

    add-int/2addr v3, v4

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    const/4 v0, 0x0

    .line 131
    iput-boolean v0, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterRectMaskView;->isFirstScale:Z

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "scaleX : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FaceRegisterRectMaskView"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "scaleY : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mMaskRect : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterRectMaskView;->mMaskRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_0
    iget-object p0, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterRectMaskView;->mMaskRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method public maskCameraPreview()V
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterRectMaskView;->mClearPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 94
    iget-object p0, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterRectMaskView;->mClearPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 176
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 177
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    const/4 v1, 0x3

    .line 178
    invoke-direct {p0, v1}, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterRectMaskView;->convertDpToPixel(I)I

    move-result v1

    int-to-float v3, v1

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterRectMaskView;->convertDpToPixel(I)I

    move-result v1

    sub-int v1, v0, v1

    int-to-float v5, v1

    int-to-double v0, v0

    const-wide v6, 0x3feb851eb851eb85L    # 0.86

    mul-double/2addr v0, v6

    double-to-float v6, v0

    iget-object v9, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterRectMaskView;->mClearPaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    const/high16 v7, 0x42180000    # 38.0f

    const/high16 v8, 0x42180000    # 38.0f

    move-object v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 145
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    if-eqz p1, :cond_0

    .line 147
    invoke-direct {p0}, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterRectMaskView;->initMaskArea()V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 168
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 170
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    int-to-double v0, p1

    const-wide v2, 0x3feb851eb851eb85L    # 0.86

    mul-double/2addr v0, v2

    double-to-int p2, v0

    .line 171
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public setProgress(I)V
    .locals 1

    .line 102
    iput p1, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterRectMaskView;->progress:I

    .line 103
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p1, v0, :cond_0

    .line 104
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setProgressStart(Landroid/widget/TextView;)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 109
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 110
    new-instance v1, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterRectMaskView$1;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterRectMaskView$1;-><init>(Lcom/android/settings/biometrics/asusfacelock/FaceRegisterRectMaskView;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 p0, 0x320

    .line 118
    invoke-virtual {v0, p0, p1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 119
    new-instance p0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 120
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x64
    .end array-data
.end method

.method public unmaskCameraPreview()V
    .locals 2

    .line 98
    iget-object p0, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterRectMaskView;->mClearPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void
.end method
