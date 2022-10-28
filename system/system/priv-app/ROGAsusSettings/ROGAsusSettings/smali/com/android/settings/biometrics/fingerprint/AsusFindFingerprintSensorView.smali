.class public Lcom/android/settings/biometrics/fingerprint/AsusFindFingerprintSensorView;
.super Landroid/view/View;
.source "AsusFindFingerprintSensorView.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mImageH:I

.field private mImageW:I

.field private mMode:Ljava/lang/String;

.field private mMovie:Landroid/graphics/Movie;

.field private mMovieStart:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 33
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const-string v0, "front"

    .line 28
    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFindFingerprintSensorView;->mMode:Ljava/lang/String;

    .line 34
    invoke-direct {p0, p1}, Lcom/android/settings/biometrics/fingerprint/AsusFindFingerprintSensorView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p2, "front"

    .line 28
    iput-object p2, p0, Lcom/android/settings/biometrics/fingerprint/AsusFindFingerprintSensorView;->mMode:Ljava/lang/String;

    .line 39
    invoke-direct {p0, p1}, Lcom/android/settings/biometrics/fingerprint/AsusFindFingerprintSensorView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p2, "front"

    .line 28
    iput-object p2, p0, Lcom/android/settings/biometrics/fingerprint/AsusFindFingerprintSensorView;->mMode:Ljava/lang/String;

    .line 44
    invoke-direct {p0, p1}, Lcom/android/settings/biometrics/fingerprint/AsusFindFingerprintSensorView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 5

    .line 48
    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFindFingerprintSensorView;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    .line 49
    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusable(Z)V

    const/4 v1, 0x0

    .line 50
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    const-string v0, "ro.hardware.fp_position"

    .line 52
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFindFingerprintSensorView;->mMode:Ljava/lang/String;

    const-string v0, "ro.hardware.fp_shape"

    .line 53
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 54
    iget-object v1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFindFingerprintSensorView;->mMode:Ljava/lang/String;

    const-string v2, "front"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "square"

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFindFingerprintSensorView;->mMode:Ljava/lang/String;

    const-string v4, "front_woh"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 61
    :cond_0
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 62
    sget v0, Lcom/android/settings/R$drawable;->asus_fingerprint_tutorial_back_square:I

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/biometrics/fingerprint/AsusFindFingerprintSensorView;->setGifResource(Landroid/content/Context;I)V

    goto :goto_1

    :cond_1
    const-string v1, "round"

    .line 63
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 64
    sget v0, Lcom/android/settings/R$drawable;->asus_fingerprint_tutorial_back_round:I

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/biometrics/fingerprint/AsusFindFingerprintSensorView;->setGifResource(Landroid/content/Context;I)V

    goto :goto_1

    :cond_2
    const-string v1, "jedi"

    .line 65
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 66
    sget v0, Lcom/android/settings/R$drawable;->asus_fingerprint_tutorial_back_jedi:I

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/biometrics/fingerprint/AsusFindFingerprintSensorView;->setGifResource(Landroid/content/Context;I)V

    goto :goto_1

    .line 68
    :cond_3
    sget v0, Lcom/android/settings/R$drawable;->asus_fingerprint_tutorial_back:I

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/biometrics/fingerprint/AsusFindFingerprintSensorView;->setGifResource(Landroid/content/Context;I)V

    goto :goto_1

    .line 55
    :cond_4
    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 56
    sget v0, Lcom/android/settings/R$drawable;->asus_fingerprint_tutorial_front_square:I

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/biometrics/fingerprint/AsusFindFingerprintSensorView;->setGifResource(Landroid/content/Context;I)V

    goto :goto_1

    .line 58
    :cond_5
    sget v0, Lcom/android/settings/R$drawable;->asus_fingerprint_tutorial_front:I

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/biometrics/fingerprint/AsusFindFingerprintSensorView;->setGifResource(Landroid/content/Context;I)V

    .line 72
    :goto_1
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFindFingerprintSensorView;->mMode:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 73
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFindFingerprintSensorView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$dimen;->asus_fingerprint_find_sensor_content_front_w:I

    .line 74
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFindFingerprintSensorView;->mImageW:I

    .line 75
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFindFingerprintSensorView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$dimen;->asus_fingerprint_find_sensor_content_front_h:I

    .line 76
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFindFingerprintSensorView;->mImageH:I

    goto :goto_2

    .line 78
    :cond_6
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFindFingerprintSensorView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$dimen;->asus_fingerprint_find_sensor_content_back_w:I

    .line 79
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFindFingerprintSensorView;->mImageW:I

    .line 80
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFindFingerprintSensorView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$dimen;->asus_fingerprint_find_sensor_content_back_h:I

    .line 81
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFindFingerprintSensorView;->mImageH:I

    :goto_2
    return-void
.end method


# virtual methods
.method public getPosition()Ljava/lang/String;
    .locals 0

    .line 161
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFindFingerprintSensorView;->mMode:Ljava/lang/String;

    return-object p0
.end method

.method protected measureDimension(II)I
    .locals 1

    .line 106
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p0

    .line 107
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    if-ne p0, v0, :cond_0

    move p1, p2

    goto :goto_0

    :cond_0
    const/high16 v0, -0x80000000

    if-ne p0, v0, :cond_1

    .line 113
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    :cond_1
    :goto_0
    return p1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 124
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 125
    iget-wide v2, p0, Lcom/android/settings/biometrics/fingerprint/AsusFindFingerprintSensorView;->mMovieStart:J

    const-wide/16 v4, 0x0

    cmp-long v2, v4, v2

    if-nez v2, :cond_0

    .line 126
    iput-wide v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFindFingerprintSensorView;->mMovieStart:J

    .line 129
    :cond_0
    iget-object v2, p0, Lcom/android/settings/biometrics/fingerprint/AsusFindFingerprintSensorView;->mMovie:Landroid/graphics/Movie;

    if-nez v2, :cond_1

    .line 130
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 132
    :cond_1
    invoke-virtual {v2}, Landroid/graphics/Movie;->duration()I

    move-result v2

    if-nez v2, :cond_2

    const/16 v2, 0x1388

    .line 136
    :cond_2
    new-instance v3, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 139
    iget-wide v3, p0, Lcom/android/settings/biometrics/fingerprint/AsusFindFingerprintSensorView;->mMovieStart:J

    sub-long/2addr v0, v3

    int-to-long v2, v2

    rem-long/2addr v0, v2

    long-to-int v0, v0

    .line 140
    iget-object v1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFindFingerprintSensorView;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {v1, v0}, Landroid/graphics/Movie;->setTime(I)Z

    .line 142
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFindFingerprintSensorView;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {v1}, Landroid/graphics/Movie;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 143
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/settings/biometrics/fingerprint/AsusFindFingerprintSensorView;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {v2}, Landroid/graphics/Movie;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 144
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 146
    iget-object v1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFindFingerprintSensorView;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {v1}, Landroid/graphics/Movie;->width()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    .line 147
    iget-object v2, p0, Lcom/android/settings/biometrics/fingerprint/AsusFindFingerprintSensorView;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {v2}, Landroid/graphics/Movie;->height()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    .line 149
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v3, v1

    .line 150
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int/2addr v1, v2

    .line 152
    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V

    .line 153
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFindFingerprintSensorView;->mMovie:Landroid/graphics/Movie;

    int-to-float v2, v3

    int-to-float v1, v1

    invoke-virtual {v0, p1, v2, v1}, Landroid/graphics/Movie;->draw(Landroid/graphics/Canvas;FF)V

    .line 155
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 94
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 96
    iget v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFindFingerprintSensorView;->mImageW:I

    invoke-virtual {p0, v0, p1}, Lcom/android/settings/biometrics/fingerprint/AsusFindFingerprintSensorView;->measureDimension(II)I

    move-result p1

    .line 97
    iget v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFindFingerprintSensorView;->mImageH:I

    invoke-virtual {p0, v0, p2}, Lcom/android/settings/biometrics/fingerprint/AsusFindFingerprintSensorView;->measureDimension(II)I

    move-result p2

    .line 99
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public setGifResource(Landroid/content/Context;I)V
    .locals 0

    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p1

    .line 88
    invoke-static {p1}, Landroid/graphics/Movie;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Movie;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFindFingerprintSensorView;->mMovie:Landroid/graphics/Movie;

    return-void
.end method
