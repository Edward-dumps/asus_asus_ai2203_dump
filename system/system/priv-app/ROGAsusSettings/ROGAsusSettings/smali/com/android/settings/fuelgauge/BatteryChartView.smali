.class public Lcom/android/settings/fuelgauge/BatteryChartView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "BatteryChartView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fuelgauge/BatteryChartView$TrapezoidSlot;,
        Lcom/android/settings/fuelgauge/BatteryChartView$OnSelectListener;
    }
.end annotation


# static fields
.field private static final ACCESSIBILITY_SERVICE_NAMES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final DIVIDER_COLOR:I


# instance fields
.field private mDividerHeight:I

.field private mDividerPaint:Landroid/graphics/Paint;

.field private mDividerWidth:I

.field mHandler:Landroid/os/Handler;

.field private final mIndent:Landroid/graphics/Rect;

.field private mIsSlotsClickabled:Z

.field private mLevels:[I

.field private mOnSelectListener:Lcom/android/settings/fuelgauge/BatteryChartView$OnSelectListener;

.field private final mPercentageBounds:[Landroid/graphics/Rect;

.field private mPercentages:[Ljava/lang/String;

.field mSelectedIndex:I

.field private mTextPadding:I

.field private mTextPaint:Landroid/graphics/Paint;

.field mTimestamps:[Ljava/lang/String;

.field private final mTimestampsBounds:[Landroid/graphics/Rect;

.field private mTouchUpEvent:Landroid/view/MotionEvent;

.field private mTrapezoidColor:I

.field private mTrapezoidCount:I

.field mTrapezoidCurvePaint:Landroid/graphics/Paint;

.field private mTrapezoidHOffset:F

.field private mTrapezoidPaint:Landroid/graphics/Paint;

.field private mTrapezoidSlots:[Lcom/android/settings/fuelgauge/BatteryChartView$TrapezoidSlot;

.field private mTrapezoidSolidColor:I

.field private mTrapezoidVOffset:F

.field final mUpdateClickableStateRun:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$KGTJ6BcEancP_d420zk3IIt8daI(Lcom/android/settings/fuelgauge/BatteryChartView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/fuelgauge/BatteryChartView;->lambda$new$0()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    const-string v0, "SwitchAccessService"

    const-string v1, "TalkBackService"

    const-string v2, "JustSpeakService"

    .line 56
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 57
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/settings/fuelgauge/BatteryChartView;->ACCESSIBILITY_SERVICE_NAMES:Ljava/util/List;

    const-string v0, "#CDCCC5"

    .line 61
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/settings/fuelgauge/BatteryChartView;->DIVIDER_COLOR:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v0, 0x0

    .line 114
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 79
    invoke-static {}, Lcom/android/settings/fuelgauge/BatteryChartView;->getPercentages()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mPercentages:[Ljava/lang/String;

    .line 89
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mIndent:Landroid/graphics/Rect;

    const/4 p1, 0x3

    new-array v1, p1, [Landroid/graphics/Rect;

    .line 90
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    const/4 v4, 0x1

    aput-object v2, v1, v4

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    const/4 v5, 0x2

    aput-object v2, v1, v5

    iput-object v1, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mPercentageBounds:[Landroid/graphics/Rect;

    const/4 v1, 0x5

    new-array v1, v1, [Landroid/graphics/Rect;

    .line 93
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    aput-object v2, v1, v3

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    aput-object v2, v1, v4

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    aput-object v2, v1, v5

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    aput-object v2, v1, p1

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    const/4 v2, 0x4

    aput-object p1, v1, v2

    iput-object v1, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTimestampsBounds:[Landroid/graphics/Rect;

    .line 96
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mHandler:Landroid/os/Handler;

    .line 98
    new-instance p1, Lcom/android/settings/fuelgauge/BatteryChartView$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/settings/fuelgauge/BatteryChartView$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/fuelgauge/BatteryChartView;)V

    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mUpdateClickableStateRun:Ljava/lang/Runnable;

    .line 106
    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTrapezoidCurvePaint:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .line 118
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 79
    invoke-static {}, Lcom/android/settings/fuelgauge/BatteryChartView;->getPercentages()[Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mPercentages:[Ljava/lang/String;

    .line 89
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mIndent:Landroid/graphics/Rect;

    const/4 p2, 0x3

    new-array v0, p2, [Landroid/graphics/Rect;

    .line 90
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    const/4 v3, 0x1

    aput-object v1, v0, v3

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    const/4 v4, 0x2

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mPercentageBounds:[Landroid/graphics/Rect;

    const/4 v0, 0x5

    new-array v0, v0, [Landroid/graphics/Rect;

    .line 93
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    aput-object v1, v0, v2

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    aput-object v1, v0, v3

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    aput-object v1, v0, v4

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    aput-object v1, v0, p2

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    const/4 v1, 0x4

    aput-object p2, v0, v1

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTimestampsBounds:[Landroid/graphics/Rect;

    .line 96
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mHandler:Landroid/os/Handler;

    .line 98
    new-instance p2, Lcom/android/settings/fuelgauge/BatteryChartView$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/settings/fuelgauge/BatteryChartView$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/fuelgauge/BatteryChartView;)V

    iput-object p2, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mUpdateClickableStateRun:Ljava/lang/Runnable;

    const/4 p2, 0x0

    .line 106
    iput-object p2, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTrapezoidCurvePaint:Landroid/graphics/Paint;

    .line 119
    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/BatteryChartView;->initializeColors(Landroid/content/Context;)V

    .line 121
    invoke-virtual {p0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, -0x1

    .line 122
    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/BatteryChartView;->setSelectedIndex(I)V

    const/16 p1, 0xc

    .line 123
    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/BatteryChartView;->setTrapezoidCount(I)V

    .line 124
    invoke-virtual {p0, v2}, Lcom/android/settings/fuelgauge/BatteryChartView;->setClickable(Z)V

    const-wide/16 p1, 0x0

    .line 125
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/fuelgauge/BatteryChartView;->setLatestTimestamp(J)V

    return-void
.end method

.method private drawHorizontalDividers(Landroid/graphics/Canvas;)V
    .locals 11

    .line 374
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mIndent:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    .line 375
    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mIndent:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v3

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    int-to-float v2, v3

    .line 377
    iget v3, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mDividerWidth:I

    int-to-float v3, v3

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    int-to-float v0, v0

    .line 378
    iget-object v10, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mDividerPaint:Landroid/graphics/Paint;

    const/4 v6, 0x0

    move-object v5, p1

    move v7, v2

    move v8, v0

    move v9, v2

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/4 v3, 0x0

    .line 379
    invoke-direct {p0, p1, v3, v2}, Lcom/android/settings/fuelgauge/BatteryChartView;->drawPercentage(Landroid/graphics/Canvas;IF)V

    .line 382
    iget v2, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mDividerWidth:I

    mul-int/lit8 v3, v2, 0x2

    sub-int v3, v1, v3

    int-to-float v3, v3

    iget v5, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTrapezoidVOffset:F

    sub-float/2addr v3, v5

    iget v5, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mDividerHeight:I

    int-to-float v5, v5

    sub-float/2addr v3, v5

    .line 384
    iget-object v5, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mIndent:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v2

    int-to-float v2, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    .line 385
    iget-object v10, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mDividerPaint:Landroid/graphics/Paint;

    move-object v5, p1

    move v7, v2

    move v9, v2

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/4 v3, 0x1

    .line 386
    invoke-direct {p0, p1, v3, v2}, Lcom/android/settings/fuelgauge/BatteryChartView;->drawPercentage(Landroid/graphics/Canvas;IF)V

    .line 389
    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mIndent:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mDividerHeight:I

    sub-int/2addr v1, v3

    int-to-float v1, v1

    iget v3, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mDividerWidth:I

    int-to-float v3, v3

    mul-float/2addr v3, v4

    sub-float/2addr v1, v3

    add-float/2addr v2, v1

    .line 390
    iget-object v10, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mDividerPaint:Landroid/graphics/Paint;

    move v7, v2

    move v9, v2

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/4 v0, 0x2

    .line 391
    invoke-direct {p0, p1, v0, v2}, Lcom/android/settings/fuelgauge/BatteryChartView;->drawPercentage(Landroid/graphics/Canvas;IF)V

    return-void
.end method

.method private drawPercentage(Landroid/graphics/Canvas;IF)V
    .locals 4

    .line 395
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTextPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mPercentages:[Ljava/lang/String;

    aget-object v0, v0, p2

    .line 398
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mPercentageBounds:[Landroid/graphics/Rect;

    aget-object v2, v2, p2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mPercentageBounds:[Landroid/graphics/Rect;

    aget-object v3, v2, p2

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v3

    int-to-float v1, v1

    aget-object p2, v2, p2

    .line 399
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    int-to-float p2, p2

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr p2, v2

    add-float/2addr p3, p2

    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTextPaint:Landroid/graphics/Paint;

    .line 396
    invoke-virtual {p1, v0, v1, p3, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method private drawTimestamp(Landroid/graphics/Canvas;[F)V
    .locals 5

    .line 438
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTimestamps:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    aget v2, p2, v1

    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTimestampsBounds:[Landroid/graphics/Rect;

    aget-object v3, v3, v1

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    .line 441
    invoke-direct {p0, v1}, Lcom/android/settings/fuelgauge/BatteryChartView;->getTimestampY(I)I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTextPaint:Landroid/graphics/Paint;

    .line 438
    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 443
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTimestamps:[Ljava/lang/String;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    aget v2, p2, v1

    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTimestampsBounds:[Landroid/graphics/Rect;

    aget-object v3, v3, v1

    .line 445
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTimestampsBounds:[Landroid/graphics/Rect;

    aget-object v3, v3, v1

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    .line 446
    invoke-direct {p0, v1}, Lcom/android/settings/fuelgauge/BatteryChartView;->getTimestampY(I)I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTextPaint:Landroid/graphics/Paint;

    .line 443
    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const/4 v0, 0x1

    :goto_0
    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 449
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTimestamps:[Ljava/lang/String;

    aget-object v1, v1, v0

    aget v2, p2, v0

    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTimestampsBounds:[Landroid/graphics/Rect;

    aget-object v3, v3, v0

    .line 452
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v4, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTimestampsBounds:[Landroid/graphics/Rect;

    aget-object v4, v4, v0

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    .line 453
    invoke-direct {p0, v0}, Lcom/android/settings/fuelgauge/BatteryChartView;->getTimestampY(I)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTextPaint:Landroid/graphics/Paint;

    .line 449
    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private drawTrapezoids(Landroid/graphics/Canvas;)V
    .locals 9

    .line 466
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mLevels:[I

    if-nez v0, :cond_0

    return-void

    .line 470
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mIndent:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mDividerHeight:I

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mDividerWidth:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    iget v3, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTrapezoidVOffset:F

    sub-float/2addr v0, v3

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    sub-float v2, v0, v2

    .line 472
    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    sub-float/2addr v2, v1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v2, v1

    .line 475
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, v4

    .line 477
    :goto_0
    iget v6, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTrapezoidCount:I

    if-ge v3, v6, :cond_7

    .line 479
    invoke-direct {p0, v3}, Lcom/android/settings/fuelgauge/BatteryChartView;->isValidToDraw(I)Z

    move-result v6

    if-nez v6, :cond_1

    .line 480
    iget-object v6, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTrapezoidCurvePaint:Landroid/graphics/Paint;

    if-eqz v6, :cond_6

    if-eqz v5, :cond_6

    .line 481
    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    move-object v5, v4

    goto/16 :goto_4

    .line 488
    :cond_1
    iget-boolean v6, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mIsSlotsClickabled:Z

    if-nez v6, :cond_2

    .line 489
    iget v6, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTrapezoidColor:I

    goto :goto_2

    .line 490
    :cond_2
    iget v6, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mSelectedIndex:I

    if-eq v6, v3, :cond_4

    const/4 v7, -0x1

    if-ne v6, v7, :cond_3

    goto :goto_1

    .line 491
    :cond_3
    iget v6, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTrapezoidColor:I

    goto :goto_2

    :cond_4
    :goto_1
    iget v6, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTrapezoidSolidColor:I

    .line 492
    :goto_2
    iget-object v7, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTrapezoidPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 494
    iget-object v6, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mLevels:[I

    aget v6, v6, v3

    int-to-float v6, v6

    mul-float/2addr v6, v2

    sub-float v6, v0, v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    int-to-float v6, v6

    .line 495
    iget-object v7, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mLevels:[I

    add-int/lit8 v8, v3, 0x1

    aget v7, v7, v8

    int-to-float v7, v7

    mul-float/2addr v7, v2

    sub-float v7, v0, v7

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    int-to-float v7, v7

    .line 496
    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 497
    iget-object v8, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTrapezoidSlots:[Lcom/android/settings/fuelgauge/BatteryChartView$TrapezoidSlot;

    aget-object v8, v8, v3

    iget v8, v8, Lcom/android/settings/fuelgauge/BatteryChartView$TrapezoidSlot;->mLeft:F

    invoke-virtual {v1, v8, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 498
    iget-object v8, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTrapezoidSlots:[Lcom/android/settings/fuelgauge/BatteryChartView$TrapezoidSlot;

    aget-object v8, v8, v3

    iget v8, v8, Lcom/android/settings/fuelgauge/BatteryChartView$TrapezoidSlot;->mLeft:F

    invoke-virtual {v1, v8, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 499
    iget-object v8, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTrapezoidSlots:[Lcom/android/settings/fuelgauge/BatteryChartView$TrapezoidSlot;

    aget-object v8, v8, v3

    iget v8, v8, Lcom/android/settings/fuelgauge/BatteryChartView$TrapezoidSlot;->mRight:F

    invoke-virtual {v1, v8, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 500
    iget-object v8, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTrapezoidSlots:[Lcom/android/settings/fuelgauge/BatteryChartView$TrapezoidSlot;

    aget-object v8, v8, v3

    iget v8, v8, Lcom/android/settings/fuelgauge/BatteryChartView$TrapezoidSlot;->mRight:F

    invoke-virtual {v1, v8, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 502
    iget-object v8, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTrapezoidSlots:[Lcom/android/settings/fuelgauge/BatteryChartView$TrapezoidSlot;

    aget-object v8, v8, v3

    iget v8, v8, Lcom/android/settings/fuelgauge/BatteryChartView$TrapezoidSlot;->mLeft:F

    invoke-virtual {v1, v8, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 503
    iget-object v8, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTrapezoidSlots:[Lcom/android/settings/fuelgauge/BatteryChartView$TrapezoidSlot;

    aget-object v8, v8, v3

    iget v8, v8, Lcom/android/settings/fuelgauge/BatteryChartView$TrapezoidSlot;->mLeft:F

    invoke-virtual {v1, v8, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 505
    iget-object v8, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTrapezoidPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 508
    iget-object v8, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTrapezoidCurvePaint:Landroid/graphics/Paint;

    if-eqz v8, :cond_6

    if-nez v5, :cond_5

    .line 510
    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    .line 511
    iget-object v8, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTrapezoidSlots:[Lcom/android/settings/fuelgauge/BatteryChartView$TrapezoidSlot;

    aget-object v8, v8, v3

    iget v8, v8, Lcom/android/settings/fuelgauge/BatteryChartView$TrapezoidSlot;->mLeft:F

    invoke-virtual {v5, v8, v6}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_3

    .line 513
    :cond_5
    iget-object v8, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTrapezoidSlots:[Lcom/android/settings/fuelgauge/BatteryChartView$TrapezoidSlot;

    aget-object v8, v8, v3

    iget v8, v8, Lcom/android/settings/fuelgauge/BatteryChartView$TrapezoidSlot;->mLeft:F

    invoke-virtual {v5, v8, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 515
    :goto_3
    iget-object v6, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTrapezoidSlots:[Lcom/android/settings/fuelgauge/BatteryChartView$TrapezoidSlot;

    aget-object v6, v6, v3

    iget v6, v6, Lcom/android/settings/fuelgauge/BatteryChartView$TrapezoidSlot;->mRight:F

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_6
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 519
    :cond_7
    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTrapezoidCurvePaint:Landroid/graphics/Paint;

    if-eqz p0, :cond_8

    if-eqz v5, :cond_8

    .line 520
    invoke-virtual {p1, v5, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_8
    return-void
.end method

.method private drawVerticalDividers(Landroid/graphics/Canvas;)V
    .locals 16

    move-object/from16 v0, p0

    .line 405
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryChartView;->mIndent:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    .line 406
    iget v2, v0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTrapezoidCount:I

    add-int/lit8 v3, v2, 0x1

    .line 407
    iget v4, v0, Lcom/android/settings/fuelgauge/BatteryChartView;->mDividerWidth:I

    mul-int/2addr v4, v3

    int-to-float v4, v4

    int-to-float v1, v1

    sub-float/2addr v1, v4

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 409
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryChartView;->mIndent:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v4

    int-to-float v2, v2

    .line 410
    iget v4, v0, Lcom/android/settings/fuelgauge/BatteryChartView;->mDividerHeight:I

    int-to-float v4, v4

    sub-float v10, v2, v4

    .line 411
    iget v4, v0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTrapezoidHOffset:F

    iget v5, v0, Lcom/android/settings/fuelgauge/BatteryChartView;->mDividerWidth:I

    int-to-float v6, v5

    const/high16 v11, 0x3f000000    # 0.5f

    mul-float/2addr v6, v11

    add-float v12, v4, v6

    int-to-float v4, v5

    mul-float/2addr v4, v11

    const/4 v13, 0x0

    move v14, v4

    move v15, v13

    :goto_0
    if-ge v15, v3, :cond_1

    .line 415
    iget-object v9, v0, Lcom/android/settings/fuelgauge/BatteryChartView;->mDividerPaint:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    move v5, v14

    move v6, v10

    move v7, v14

    move v8, v2

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 416
    iget v4, v0, Lcom/android/settings/fuelgauge/BatteryChartView;->mDividerWidth:I

    int-to-float v4, v4

    add-float/2addr v4, v14

    add-float/2addr v4, v1

    .line 418
    iget-object v5, v0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTrapezoidSlots:[Lcom/android/settings/fuelgauge/BatteryChartView$TrapezoidSlot;

    array-length v6, v5

    if-ge v15, v6, :cond_0

    .line 419
    aget-object v5, v5, v15

    add-float/2addr v14, v12

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v6

    int-to-float v6, v6

    iput v6, v5, Lcom/android/settings/fuelgauge/BatteryChartView$TrapezoidSlot;->mLeft:F

    .line 420
    iget-object v5, v0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTrapezoidSlots:[Lcom/android/settings/fuelgauge/BatteryChartView$TrapezoidSlot;

    aget-object v5, v5, v15

    sub-float v6, v4, v12

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    int-to-float v6, v6

    iput v6, v5, Lcom/android/settings/fuelgauge/BatteryChartView$TrapezoidSlot;->mRight:F

    :cond_0
    add-int/lit8 v15, v15, 0x1

    move v14, v4

    goto :goto_0

    .line 425
    :cond_1
    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTimestamps:[Ljava/lang/String;

    if-eqz v2, :cond_3

    const/4 v2, 0x5

    new-array v3, v2, [F

    .line 427
    iget v4, v0, Lcom/android/settings/fuelgauge/BatteryChartView;->mDividerWidth:I

    int-to-float v5, v4

    mul-float/2addr v5, v11

    int-to-float v4, v4

    add-float/2addr v4, v1

    :goto_1
    if-ge v13, v2, :cond_2

    int-to-float v1, v13

    mul-float/2addr v1, v4

    const/high16 v6, 0x40400000    # 3.0f

    mul-float/2addr v1, v6

    add-float/2addr v1, v5

    .line 430
    aput v1, v3, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_2
    move-object/from16 v1, p1

    .line 432
    invoke-direct {v0, v1, v3}, Lcom/android/settings/fuelgauge/BatteryChartView;->drawTimestamp(Landroid/graphics/Canvas;[F)V

    :cond_3
    return-void
.end method

.method private static getPercentages()[Ljava/lang/String;
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-wide/high16 v1, 0x4059000000000000L    # 100.0

    const/4 v3, 0x1

    .line 547
    invoke-static {v1, v2, v3}, Lcom/android/settingslib/Utils;->formatPercentage(DZ)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-wide/high16 v1, 0x4049000000000000L    # 50.0

    .line 548
    invoke-static {v1, v2, v3}, Lcom/android/settingslib/Utils;->formatPercentage(DZ)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const-wide/16 v1, 0x0

    .line 549
    invoke-static {v1, v2, v3}, Lcom/android/settingslib/Utils;->formatPercentage(DZ)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method private getTimestampY(I)I
    .locals 3

    .line 459
    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTimestampsBounds:[Landroid/graphics/Rect;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTimestampsBounds:[Landroid/graphics/Rect;

    aget-object v1, v1, p1

    .line 460
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTimestampsBounds:[Landroid/graphics/Rect;

    aget-object p1, v2, p1

    iget p1, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, p1

    add-int/2addr v0, v1

    iget p0, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTextPadding:I

    int-to-float p0, p0

    const/high16 p1, 0x3fc00000    # 1.5f

    mul-float/2addr p0, p1

    .line 461
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method private getTrapezoidIndex(F)I
    .locals 4

    const/4 v0, 0x0

    .line 527
    :goto_0
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTrapezoidSlots:[Lcom/android/settings/fuelgauge/BatteryChartView$TrapezoidSlot;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 528
    aget-object v1, v1, v0

    .line 529
    iget v2, v1, Lcom/android/settings/fuelgauge/BatteryChartView$TrapezoidSlot;->mLeft:F

    iget v3, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTrapezoidHOffset:F

    sub-float/2addr v2, v3

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_0

    iget v1, v1, Lcom/android/settings/fuelgauge/BatteryChartView$TrapezoidSlot;->mRight:F

    add-float/2addr v1, v3

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x2

    return p0
.end method

.method private initializeColors(Landroid/content/Context;)V
    .locals 4

    const/4 v0, 0x0

    .line 345
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 346
    invoke-static {p1}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTrapezoidSolidColor:I

    .line 347
    invoke-static {p1, v0}, Lcom/android/settingslib/Utils;->getDisabled(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTrapezoidColor:I

    .line 349
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 350
    sget v0, Lcom/android/settings/R$dimen;->chartview_divider_width:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mDividerWidth:I

    .line 351
    sget v0, Lcom/android/settings/R$dimen;->chartview_divider_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mDividerHeight:I

    .line 352
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mDividerPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 353
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 354
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mDividerPaint:Landroid/graphics/Paint;

    sget v2, Lcom/android/settings/fuelgauge/BatteryChartView;->DIVIDER_COLOR:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 355
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mDividerPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 356
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mDividerPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mDividerWidth:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 357
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDividerWidth:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mDividerWidth:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "BatteryChartView"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mDividerHeight:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mDividerHeight:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    sget v0, Lcom/android/settings/R$dimen;->chartview_trapezoid_margin_start:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTrapezoidHOffset:F

    .line 361
    sget v0, Lcom/android/settings/R$dimen;->chartview_trapezoid_margin_bottom:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTrapezoidVOffset:F

    .line 362
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTrapezoidPaint:Landroid/graphics/Paint;

    .line 363
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 364
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTrapezoidPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTrapezoidSolidColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 365
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTrapezoidPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 366
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTrapezoidPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/CornerPathEffect;

    sget v2, Lcom/android/settings/R$dimen;->chartview_trapezoid_radius:I

    .line 368
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v1, v2}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    .line 366
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 370
    sget v0, Lcom/android/settings/R$dimen;->chartview_text_padding:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTextPadding:I

    return-void
.end method

.method static isAccessibilityEnabled(Landroid/content/Context;)Z
    .locals 5

    .line 554
    const-class v0, Landroid/view/accessibility/AccessibilityManager;

    .line 555
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/accessibility/AccessibilityManager;

    .line 556
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x11

    .line 560
    invoke-virtual {p0, v0}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object p0

    .line 563
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 564
    sget-object v2, Lcom/android/settings/fuelgauge/BatteryChartView;->ACCESSIBILITY_SERVICE_NAMES:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 565
    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 566
    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 567
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "acccessibilityEnabled:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BatteryChartView"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_3
    return v1
.end method

.method private isValidToDraw(I)Z
    .locals 2

    .line 538
    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mLevels:[I

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    if-ltz p1, :cond_0

    array-length v1, p0

    sub-int/2addr v1, v0

    if-ge p1, v1, :cond_0

    aget v1, p0, p1

    if-eqz v1, :cond_0

    add-int/2addr p1, v0

    aget p0, p0, p1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private synthetic lambda$new$0()V
    .locals 0

    .line 99
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/BatteryChartView;->updateClickableState()V

    return-void
.end method

.method private updateClickableState()V
    .locals 3

    .line 311
    iget-object v0, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    .line 313
    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v1

    .line 314
    invoke-virtual {v1, v0}, Lcom/android/settings/overlay/FeatureFactory;->getPowerUsageFeatureProvider(Landroid/content/Context;)Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    move-result-object v1

    .line 315
    invoke-interface {v1, v0}, Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;->isChartGraphSlotsEnabled(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 316
    invoke-static {v0}, Lcom/android/settings/fuelgauge/BatteryChartView;->isAccessibilityEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mIsSlotsClickabled:Z

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isChartGraphSlotsEnabled:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mIsSlotsClickabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BatteryChartView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    invoke-virtual {p0}, Landroid/widget/ImageView;->isClickable()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/BatteryChartView;->setClickable(Z)V

    .line 320
    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mIsSlotsClickabled:Z

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTrapezoidCurvePaint:Landroid/graphics/Paint;

    if-nez v1, :cond_1

    .line 321
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTrapezoidCurvePaint:Landroid/graphics/Paint;

    .line 322
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 323
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTrapezoidCurvePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTrapezoidSolidColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 324
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTrapezoidCurvePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 325
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTrapezoidCurvePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mDividerWidth:I

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 327
    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTrapezoidCurvePaint:Landroid/graphics/Paint;

    .line 329
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mLevels:[I

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/BatteryChartView;->setLevels([I)V

    .line 331
    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 245
    invoke-super {p0, p1}, Landroid/widget/ImageView;->draw(Landroid/graphics/Canvas;)V

    .line 246
    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/BatteryChartView;->drawHorizontalDividers(Landroid/graphics/Canvas;)V

    .line 247
    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/BatteryChartView;->drawVerticalDividers(Landroid/graphics/Canvas;)V

    .line 248
    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/BatteryChartView;->drawTrapezoids(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onAccessibilityStateChanged(Z)V
    .locals 2

    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAccessibilityStateChanged:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BatteryChartView"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    iget-object p1, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mUpdateClickableStateRun:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 306
    iget-object p1, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mUpdateClickableStateRun:Ljava/lang/Runnable;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 2

    .line 286
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    .line 287
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/BatteryChartView;->updateClickableState()V

    .line 288
    iget-object v0, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    const-class v1, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 289
    invoke-virtual {v0, p0}, Landroid/view/accessibility/AccessibilityManager;->addAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 265
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTouchUpEvent:Landroid/view/MotionEvent;

    if-nez v0, :cond_0

    const-string p0, "BatteryChartView"

    const-string p1, "invalid motion event for onClick() callback"

    .line 266
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 269
    :cond_0
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/fuelgauge/BatteryChartView;->getTrapezoidIndex(F)I

    move-result v0

    const/4 v1, -0x2

    if-eq v0, v1, :cond_3

    .line 272
    invoke-direct {p0, v0}, Lcom/android/settings/fuelgauge/BatteryChartView;->isValidToDraw(I)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 276
    :cond_1
    iget v1, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mSelectedIndex:I

    if-ne v0, v1, :cond_2

    const/4 v0, -0x1

    .line 277
    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/BatteryChartView;->setSelectedIndex(I)V

    goto :goto_0

    .line 279
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/BatteryChartView;->setSelectedIndex(I)V

    :goto_0
    const/4 p0, 0x6

    .line 281
    invoke-virtual {p1, p0}, Landroid/view/View;->performHapticFeedback(I)Z

    :cond_3
    :goto_1
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 294
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 295
    iget-object v0, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    const-class v1, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 296
    invoke-virtual {v0, p0}, Landroid/view/accessibility/AccessibilityManager;->removeAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z

    .line 297
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mUpdateClickableStateRun:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 5

    .line 215
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 217
    iget-object p1, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTextPaint:Landroid/graphics/Paint;

    const/4 p2, 0x0

    if-eqz p1, :cond_3

    move p1, p2

    .line 218
    :goto_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mPercentages:[Ljava/lang/String;

    array-length v1, v0

    if-ge p1, v1, :cond_0

    .line 219
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTextPaint:Landroid/graphics/Paint;

    aget-object v2, v0, p1

    aget-object v0, v0, p1

    .line 220
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mPercentageBounds:[Landroid/graphics/Rect;

    aget-object v3, v3, p1

    .line 219
    invoke-virtual {v1, v2, p2, v0, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 224
    :cond_0
    iget-object p1, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mIndent:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mPercentageBounds:[Landroid/graphics/Rect;

    aget-object v0, v0, p2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 225
    iget-object p1, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mIndent:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mPercentageBounds:[Landroid/graphics/Rect;

    aget-object v0, v0, p2

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget v1, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTextPadding:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 227
    iget-object p1, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTimestamps:[Ljava/lang/String;

    if-eqz p1, :cond_2

    move p1, p2

    move v0, p1

    :goto_1
    const/4 v1, 0x5

    if-ge p1, v1, :cond_1

    .line 230
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTextPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTimestamps:[Ljava/lang/String;

    aget-object v3, v2, p1

    aget-object v2, v2, p1

    .line 231
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v4, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTimestampsBounds:[Landroid/graphics/Rect;

    aget-object v4, v4, p1

    .line 230
    invoke-virtual {v1, v3, p2, v2, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 233
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTimestampsBounds:[Landroid/graphics/Rect;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 235
    :cond_1
    iget-object p1, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mIndent:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTextPadding:I

    int-to-float v1, v1

    const/high16 v2, 0x3fc00000    # 1.5f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 237
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setIndent:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mPercentageBounds:[Landroid/graphics/Rect;

    aget-object p0, p0, p2

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BatteryChartView"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 239
    :cond_3
    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mIndent:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, p2, p2, p2}, Landroid/graphics/Rect;->set(IIII)V

    :goto_2
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 254
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 256
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTouchUpEvent:Landroid/view/MotionEvent;

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 258
    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTouchUpEvent:Landroid/view/MotionEvent;

    .line 260
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public setClickable(Z)V
    .locals 1

    .line 336
    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mIsSlotsClickabled:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setClickable(Z)V

    return-void
.end method

.method setClickableForce(Z)V
    .locals 0

    .line 341
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setClickable(Z)V

    return-void
.end method

.method public setCompanionTextView(Landroid/widget/TextView;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 184
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    .line 185
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTextPaint:Landroid/graphics/Paint;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 187
    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTextPaint:Landroid/graphics/Paint;

    :goto_0
    const/4 p1, 0x0

    .line 189
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 190
    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    return-void
.end method

.method public setLatestTimestamp(J)V
    .locals 9

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 196
    invoke-static {}, Ljava/time/Clock;->systemUTC()Ljava/time/Clock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/time/Clock;->millis()J

    move-result-wide p1

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTimestamps:[Ljava/lang/String;

    const/4 v1, 0x5

    if-nez v0, :cond_1

    new-array v0, v1, [Ljava/lang/String;

    .line 199
    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTimestamps:[Ljava/lang/String;

    .line 202
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 204
    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTimestamps:[Ljava/lang/String;

    .line 206
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v4

    rsub-int/lit8 v5, v2, 0x4

    int-to-long v5, v5

    const-wide/32 v7, 0x1499700

    mul-long/2addr v5, v7

    sub-long v5, p1, v5

    .line 205
    invoke-static {v4, v5, v6, v0}, Lcom/android/settings/fuelgauge/ConvertUtils;->utcToLocalTimeHour(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 210
    :cond_2
    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    return-void
.end method

.method public setLevels([I)V
    .locals 4

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setLevels() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const-string v1, "null"

    goto :goto_0

    :cond_0
    array-length v1, p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BatteryChartView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 144
    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mLevels:[I

    return-void

    .line 148
    :cond_1
    array-length v1, p1

    iget v2, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTrapezoidCount:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    if-ne v1, v2, :cond_2

    goto :goto_1

    :cond_2
    move-object p1, v0

    :goto_1
    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mLevels:[I

    const/4 p1, 0x0

    .line 149
    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/BatteryChartView;->setClickable(Z)V

    .line 150
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    .line 151
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mLevels:[I

    if-nez v0, :cond_3

    return-void

    .line 155
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mLevels:[I

    array-length v1, v0

    sub-int/2addr v1, v3

    if-ge p1, v1, :cond_5

    .line 156
    aget v1, v0, p1

    if-eqz v1, :cond_4

    add-int/lit8 v1, p1, 0x1

    aget v0, v0, v1

    if-eqz v0, :cond_4

    .line 157
    invoke-virtual {p0, v3}, Lcom/android/settings/fuelgauge/BatteryChartView;->setClickable(Z)V

    goto :goto_3

    :cond_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    return-void
.end method

.method public setOnSelectListener(Lcom/android/settings/fuelgauge/BatteryChartView$OnSelectListener;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mOnSelectListener:Lcom/android/settings/fuelgauge/BatteryChartView$OnSelectListener;

    return-void
.end method

.method public setSelectedIndex(I)V
    .locals 1

    .line 165
    iget v0, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mSelectedIndex:I

    if-eq v0, p1, :cond_0

    .line 166
    iput p1, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mSelectedIndex:I

    .line 167
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    .line 169
    iget-object p1, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mOnSelectListener:Lcom/android/settings/fuelgauge/BatteryChartView$OnSelectListener;

    if-eqz p1, :cond_0

    .line 170
    iget p0, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mSelectedIndex:I

    invoke-interface {p1, p0}, Lcom/android/settings/fuelgauge/BatteryChartView$OnSelectListener;->onSelect(I)V

    :cond_0
    return-void
.end method

.method public setTrapezoidCount(I)V
    .locals 4

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "trapezoidCount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BatteryChartView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iput p1, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTrapezoidCount:I

    .line 132
    new-array v0, p1, [Lcom/android/settings/fuelgauge/BatteryChartView$TrapezoidSlot;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTrapezoidSlots:[Lcom/android/settings/fuelgauge/BatteryChartView$TrapezoidSlot;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 135
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryChartView;->mTrapezoidSlots:[Lcom/android/settings/fuelgauge/BatteryChartView$TrapezoidSlot;

    new-instance v2, Lcom/android/settings/fuelgauge/BatteryChartView$TrapezoidSlot;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/settings/fuelgauge/BatteryChartView$TrapezoidSlot;-><init>(Lcom/android/settings/fuelgauge/BatteryChartView$1;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 137
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method
