.class public Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage;
.super Landroid/widget/ImageView;
.source "AsusFingerprintContinueImage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage$Cycle;
    }
.end annotation


# instance fields
.field private final BTN_BASE_RATION:F

.field private final BTN_INSIDE_ALPHA_1:F

.field private final BTN_INSIDE_ALPHA_2:F

.field private final BTN_INSIDE_DURATION_1:I

.field private final BTN_INSIDE_RATION:F

.field private final BTN_OUTSIDE_ALPHA_1:F

.field private final BTN_OUTSIDE_ALPHA_2:F

.field private final BTN_OUTSIDE_DURATION_1:I

.field private final BTN_OUTSIDE_DURATION_2:I

.field private final BTN_OUTSIDE_RATION:F

.field private mCentralDrawable:Landroid/graphics/drawable/Drawable;

.field private mContext:Landroid/content/Context;

.field private mCycleH:I

.field private mCycleInsideRadius:I

.field private mCycleList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage$Cycle;",
            ">;"
        }
    .end annotation
.end field

.field private mCycleOutsideRadius:I

.field private mCycleW:I

.field private mFramesPerSecond:I

.field private mImageH:I

.field private mImageW:I

.field private mInsideDdrawable:Landroid/graphics/drawable/Drawable;

.field private mOutsideDrawable:Landroid/graphics/drawable/Drawable;

.field private mPaint:Landroid/graphics/Paint;

.field private mScaled:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 58
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 27
    iput v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage;->BTN_BASE_RATION:F

    const v1, 0x3f933333    # 1.15f

    .line 28
    iput v1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage;->BTN_OUTSIDE_RATION:F

    const v1, 0x3fb9999a    # 1.45f

    .line 29
    iput v1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage;->BTN_INSIDE_RATION:F

    const v1, 0x3f333333    # 0.7f

    .line 31
    iput v1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage;->BTN_OUTSIDE_ALPHA_1:F

    const v1, 0x3dcccccd    # 0.1f

    .line 32
    iput v1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage;->BTN_OUTSIDE_ALPHA_2:F

    .line 33
    iput v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage;->BTN_INSIDE_ALPHA_1:F

    const/4 v0, 0x0

    .line 34
    iput v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage;->BTN_INSIDE_ALPHA_2:F

    const/16 v0, 0x1f4

    .line 36
    iput v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage;->BTN_OUTSIDE_DURATION_1:I

    const/16 v0, 0x2bc

    .line 37
    iput v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage;->BTN_OUTSIDE_DURATION_2:I

    const/16 v0, 0x44c

    .line 38
    iput v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage;->BTN_INSIDE_DURATION_1:I

    const/4 v0, -0x1

    .line 46
    iput v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage;->mScaled:I

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage;->mCycleList:Ljava/util/ArrayList;

    const/16 v0, 0x78

    .line 55
    iput v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage;->mFramesPerSecond:I

    .line 59
    invoke-direct {p0, p1}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 63
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p2, 0x3f800000    # 1.0f

    .line 27
    iput p2, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage;->BTN_BASE_RATION:F

    const v0, 0x3f933333    # 1.15f

    .line 28
    iput v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage;->BTN_OUTSIDE_RATION:F

    const v0, 0x3fb9999a    # 1.45f

    .line 29
    iput v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage;->BTN_INSIDE_RATION:F

    const v0, 0x3f333333    # 0.7f

    .line 31
    iput v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage;->BTN_OUTSIDE_ALPHA_1:F

    const v0, 0x3dcccccd    # 0.1f

    .line 32
    iput v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage;->BTN_OUTSIDE_ALPHA_2:F

    .line 33
    iput p2, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage;->BTN_INSIDE_ALPHA_1:F

    const/4 p2, 0x0

    .line 34
    iput p2, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage;->BTN_INSIDE_ALPHA_2:F

    const/16 p2, 0x1f4

    .line 36
    iput p2, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage;->BTN_OUTSIDE_DURATION_1:I

    const/16 p2, 0x2bc

    .line 37
    iput p2, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage;->BTN_OUTSIDE_DURATION_2:I

    const/16 p2, 0x44c

    .line 38
    iput p2, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage;->BTN_INSIDE_DURATION_1:I

    const/4 p2, -0x1

    .line 46
    iput p2, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage;->mScaled:I

    .line 48
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage;->mCycleList:Ljava/util/ArrayList;

    const/16 p2, 0x78

    .line 55
    iput p2, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage;->mFramesPerSecond:I

    .line 64
    invoke-direct {p0, p1}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p2, 0x3f800000    # 1.0f

    .line 27
    iput p2, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage;->BTN_BASE_RATION:F

    const p3, 0x3f933333    # 1.15f

    .line 28
    iput p3, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage;->BTN_OUTSIDE_RATION:F

    const p3, 0x3fb9999a    # 1.45f

    .line 29
    iput p3, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage;->BTN_INSIDE_RATION:F

    const p3, 0x3f333333    # 0.7f

    .line 31
    iput p3, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage;->BTN_OUTSIDE_ALPHA_1:F

    const p3, 0x3dcccccd    # 0.1f

    .line 32
    iput p3, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage;->BTN_OUTSIDE_ALPHA_2:F

    .line 33
    iput p2, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage;->BTN_INSIDE_ALPHA_1:F

    const/4 p2, 0x0

    .line 34
    iput p2, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage;->BTN_INSIDE_ALPHA_2:F

    const/16 p2, 0x1f4

    .line 36
    iput p2, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage;->BTN_OUTSIDE_DURATION_1:I

    const/16 p2, 0x2bc

    .line 37
    iput p2, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage;->BTN_OUTSIDE_DURATION_2:I

    const/16 p2, 0x44c

    .line 38
    iput p2, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage;->BTN_INSIDE_DURATION_1:I

    const/4 p2, -0x1

    .line 46
    iput p2, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage;->mScaled:I

    .line 48
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage;->mCycleList:Ljava/util/ArrayList;

    const/16 p2, 0x78

    .line 55
    iput p2, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage;->mFramesPerSecond:I

    .line 69
    invoke-direct {p0, p1}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/high16 p2, 0x3f800000    # 1.0f

    .line 27
    iput p2, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage;->BTN_BASE_RATION:F

    const p3, 0x3f933333    # 1.15f

    .line 28
    iput p3, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage;->BTN_OUTSIDE_RATION:F

    const p3, 0x3fb9999a    # 1.45f

    .line 29
    iput p3, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage;->BTN_INSIDE_RATION:F

    const p3, 0x3f333333    # 0.7f

    .line 31
    iput p3, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage;->BTN_OUTSIDE_ALPHA_1:F

    const p3, 0x3dcccccd    # 0.1f

    .line 32
    iput p3, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage;->BTN_OUTSIDE_ALPHA_2:F

    .line 33
    iput p2, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage;->BTN_INSIDE_ALPHA_1:F

    const/4 p2, 0x0

    .line 34
    iput p2, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage;->BTN_INSIDE_ALPHA_2:F

    const/16 p2, 0x1f4

    .line 36
    iput p2, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage;->BTN_OUTSIDE_DURATION_1:I

    const/16 p2, 0x2bc

    .line 37
    iput p2, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage;->BTN_OUTSIDE_DURATION_2:I

    const/16 p2, 0x44c

    .line 38
    iput p2, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage;->BTN_INSIDE_DURATION_1:I

    const/4 p2, -0x1

    .line 46
    iput p2, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage;->mScaled:I

    .line 48
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage;->mCycleList:Ljava/util/ArrayList;

    const/16 p2, 0x78

    .line 55
    iput p2, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage;->mFramesPerSecond:I

    .line 74
    invoke-direct {p0, p1}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage;->mCycleInsideRadius:I

    return p0
.end method

.method static synthetic access$200(Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage;->mCycleOutsideRadius:I

    return p0
.end method

.method private drawble2Bitmap(IILandroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 2

    .line 205
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, p0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 206
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v1, 0x0

    .line 207
    invoke-virtual {p3, v1, v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 208
    invoke-virtual {p3, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object p0
.end method

.method private init(Landroid/content/Context;)V
    .locals 1

    .line 78
    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage;->mContext:Landroid/content/Context;

    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$dimen;->asus_fingerprint_enrolling_continue_btn_inside_radius:I

    .line 81
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage;->mCycleInsideRadius:I

    .line 82
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$dimen;->asus_fingerprint_enrolling_continue_btn_outside_radius:I

    .line 83
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage;->mCycleOutsideRadius:I

    .line 85
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$dimen;->asus_fingerprint_enrolling_continue_image_w:I

    .line 86
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage;->mImageW:I

    .line 87
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$dimen;->asus_fingerprint_enrolling_continue_image_h:I

    .line 88
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage;->mImageH:I

    .line 90
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$dimen;->asus_fingerprint_enrolling_continue_btn_w:I

    .line 91
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage;->mCycleW:I

    .line 92
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$dimen;->asus_fingerprint_enrolling_continue_btn_h:I

    .line 93
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage;->mCycleH:I

    .line 95
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$drawable;->asus_fingerprint_motion_inside:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage;->mInsideDdrawable:Landroid/graphics/drawable/Drawable;

    .line 96
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$drawable;->asus_fingerprint_motion_outside:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage;->mOutsideDrawable:Landroid/graphics/drawable/Drawable;

    .line 97
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$drawable;->asus_fingerprint_motion_central:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage;->mCentralDrawable:Landroid/graphics/drawable/Drawable;

    .line 99
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage;->mPaint:Landroid/graphics/Paint;

    const/4 p0, 0x1

    .line 100
    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method


# virtual methods
.method protected measureDimension(II)I
    .locals 1

    .line 136
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p0

    .line 137
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    if-ne p0, v0, :cond_0

    move p1, p2

    goto :goto_0

    :cond_0
    const/high16 v0, -0x80000000

    if-ne p0, v0, :cond_1

    .line 144
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    :cond_1
    :goto_0
    return p1
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .line 154
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    .line 155
    new-instance v0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage$Cycle;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage$Cycle;-><init>(Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage;I)V

    .line 156
    new-instance v1, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage$Cycle;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage$Cycle;-><init>(Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage;I)V

    .line 157
    iget-object v2, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage;->mCycleList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage;->mCycleList:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 164
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 165
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage;->mCycleList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 166
    :goto_0
    iget-object v1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage;->mCycleList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 167
    iget-object v1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage;->mCycleList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage$Cycle;

    invoke-virtual {v1}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage$Cycle;->cancel()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 174
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    .line 175
    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    int-to-float v5, v0

    .line 177
    iget v2, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage;->mImageW:I

    int-to-float v2, v2

    div-float v2, v5, v2

    int-to-float v6, v1

    .line 178
    iget v3, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage;->mImageH:I

    int-to-float v3, v3

    div-float v3, v6, v3

    .line 179
    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v9

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x1f

    move-object v2, p1

    .line 181
    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result v2

    const/4 v3, 0x0

    .line 182
    :goto_0
    iget-object v4, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage;->mCycleList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ge v3, v4, :cond_1

    .line 183
    iget-object v4, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage;->mCycleList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage$Cycle;

    .line 185
    invoke-virtual {v4}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage$Cycle;->getRadius()F

    move-result v6

    float-to-int v6, v6

    .line 186
    invoke-virtual {v4}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage$Cycle;->getType()I

    move-result v7

    if-ne v7, v5, :cond_0

    .line 187
    iget-object v5, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage;->mInsideDdrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 188
    :cond_0
    iget-object v5, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage;->mOutsideDrawable:Landroid/graphics/drawable/Drawable;

    .line 189
    :goto_1
    iget-object v7, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage;->mPaint:Landroid/graphics/Paint;

    const/high16 v8, 0x437f0000    # 255.0f

    invoke-virtual {v4}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage$Cycle;->getAlpha()F

    move-result v4

    mul-float/2addr v4, v8

    float-to-int v4, v4

    invoke-virtual {v7, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    int-to-float v4, v6

    mul-float/2addr v4, v9

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v4, v6

    float-to-int v4, v4

    .line 192
    invoke-direct {p0, v4, v4, v5}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage;->drawble2Bitmap(IILandroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 193
    div-int/lit8 v5, v0, 0x2

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    int-to-float v5, v5

    div-int/lit8 v6, v1, 0x2

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    int-to-float v6, v6

    iget-object v7, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 196
    :cond_1
    iget v3, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage;->mCycleW:I

    int-to-float v3, v3

    mul-float/2addr v3, v9

    float-to-int v3, v3

    iget v4, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage;->mCycleH:I

    int-to-float v4, v4

    mul-float/2addr v4, v9

    float-to-int v4, v4

    iget-object v6, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage;->mCentralDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v3, v4, v6}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage;->drawble2Bitmap(IILandroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 197
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 198
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 199
    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v0, v5

    int-to-float v0, v0

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v1, v5

    int-to-float v1, v1

    invoke-virtual {p1, v3, v0, v1, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 200
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    const/16 p1, 0x3e8

    .line 201
    iget v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage;->mFramesPerSecond:I

    div-int/2addr p1, v0

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Landroid/widget/ImageView;->postInvalidateDelayed(J)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 106
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 108
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 109
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 111
    iget v2, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage;->mImageW:I

    if-lt v0, v2, :cond_0

    iget v3, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage;->mImageH:I

    if-lt v1, v3, :cond_0

    .line 112
    invoke-virtual {p0, v2, p1}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage;->measureDimension(II)I

    move-result p1

    .line 113
    iget v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage;->mImageH:I

    invoke-virtual {p0, v0, p2}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage;->measureDimension(II)I

    move-result p2

    .line 114
    invoke-virtual {p0, p1, p2}, Landroid/widget/ImageView;->setMeasuredDimension(II)V

    return-void

    :cond_0
    int-to-float v0, v0

    int-to-float v2, v2

    div-float/2addr v0, v2

    int-to-float v1, v1

    .line 120
    iget v2, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage;->mImageH:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 121
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    .line 123
    iget v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage;->mImageW:I

    .line 127
    invoke-virtual {p0, v0, p1}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage;->measureDimension(II)I

    move-result p1

    .line 128
    iget v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage;->mImageH:I

    invoke-virtual {p0, v0, p2}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage;->measureDimension(II)I

    move-result p2

    .line 129
    invoke-virtual {p0, p1, p2}, Landroid/widget/ImageView;->setMeasuredDimension(II)V

    return-void
.end method
