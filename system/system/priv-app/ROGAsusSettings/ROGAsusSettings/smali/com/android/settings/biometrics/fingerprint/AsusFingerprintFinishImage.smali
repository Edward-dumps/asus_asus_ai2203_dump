.class public Lcom/android/settings/biometrics/fingerprint/AsusFingerprintFinishImage;
.super Landroid/widget/ImageView;
.source "AsusFingerprintFinishImage.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mImageH:I

.field private mImageW:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 25
    invoke-direct {p0, p1}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintFinishImage;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    invoke-direct {p0, p1}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintFinishImage;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    invoke-direct {p0, p1}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintFinishImage;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 40
    invoke-direct {p0, p1}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintFinishImage;->init(Landroid/content/Context;)V

    return-void
.end method

.method private drawble2Bitmap(IILandroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 2

    .line 120
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, p0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 121
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v1, 0x0

    .line 122
    invoke-virtual {p3, v1, v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 123
    invoke-virtual {p3, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object p0
.end method

.method private init(Landroid/content/Context;)V
    .locals 1

    .line 44
    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintFinishImage;->mContext:Landroid/content/Context;

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$dimen;->asus_fingerprint_enrolling_content_w:I

    .line 47
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintFinishImage;->mImageW:I

    .line 48
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintFinishImage;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$dimen;->asus_fingerprint_enrolling_content_h:I

    .line 49
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintFinishImage;->mImageH:I

    return-void
.end method


# virtual methods
.method protected measureDimension(II)I
    .locals 1

    .line 92
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p0

    .line 93
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    if-ne p0, v0, :cond_0

    move p1, p2

    goto :goto_0

    :cond_0
    const/high16 v0, -0x80000000

    if-ne p0, v0, :cond_1

    .line 98
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    :cond_1
    :goto_0
    return p1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 108
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    .line 109
    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    .line 112
    iget-object v2, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintFinishImage;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$drawable;->rog_fp20_2_05:I

    .line 113
    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 112
    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintFinishImage;->drawble2Bitmap(IILandroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 114
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/4 v1, 0x1

    .line 115
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 v1, 0x0

    .line 116
    invoke-virtual {p1, p0, v1, v1, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 54
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 56
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 57
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 59
    iget v2, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintFinishImage;->mImageW:I

    if-lt v0, v2, :cond_0

    iget v3, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintFinishImage;->mImageH:I

    if-lt v1, v3, :cond_0

    .line 60
    invoke-virtual {p0, v2, p1}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintFinishImage;->measureDimension(II)I

    move-result p1

    .line 61
    iget v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintFinishImage;->mImageH:I

    invoke-virtual {p0, v0, p2}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintFinishImage;->measureDimension(II)I

    move-result p2

    .line 62
    invoke-virtual {p0, p1, p2}, Landroid/widget/ImageView;->setMeasuredDimension(II)V

    return-void

    :cond_0
    if-eqz v0, :cond_2

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    int-to-float v0, v0

    int-to-float v2, v2

    div-float/2addr v0, v2

    int-to-float v1, v1

    .line 74
    iget v2, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintFinishImage;->mImageH:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 75
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 77
    iget v1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintFinishImage;->mImageW:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    .line 78
    iget v2, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintFinishImage;->mImageH:I

    int-to-float v2, v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 81
    invoke-virtual {p0, v1, p1}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintFinishImage;->measureDimension(II)I

    move-result p1

    .line 82
    invoke-virtual {p0, v0, p2}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintFinishImage;->measureDimension(II)I

    move-result p2

    .line 84
    invoke-virtual {p0, p1, p2}, Landroid/widget/ImageView;->setMeasuredDimension(II)V

    return-void

    .line 68
    :cond_2
    :goto_0
    iget p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintFinishImage;->mImageH:I

    invoke-virtual {p0, v2, p1}, Landroid/widget/ImageView;->setMeasuredDimension(II)V

    return-void
.end method
