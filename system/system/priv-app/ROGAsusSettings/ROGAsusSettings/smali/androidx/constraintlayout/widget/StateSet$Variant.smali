.class Landroidx/constraintlayout/widget/StateSet$Variant;
.super Ljava/lang/Object;
.source "StateSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/widget/StateSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Variant"
.end annotation


# instance fields
.field mConstraintID:I

.field mIsLayout:Z

.field mMaxHeight:F

.field mMaxWidth:F

.field mMinHeight:F

.field mMinWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 5

    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 288
    iput v0, p0, Landroidx/constraintlayout/widget/StateSet$Variant;->mMinWidth:F

    .line 289
    iput v0, p0, Landroidx/constraintlayout/widget/StateSet$Variant;->mMinHeight:F

    .line 290
    iput v0, p0, Landroidx/constraintlayout/widget/StateSet$Variant;->mMaxWidth:F

    .line 291
    iput v0, p0, Landroidx/constraintlayout/widget/StateSet$Variant;->mMaxHeight:F

    const/4 v0, -0x1

    .line 292
    iput v0, p0, Landroidx/constraintlayout/widget/StateSet$Variant;->mConstraintID:I

    const/4 v0, 0x0

    .line 293
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/StateSet$Variant;->mIsLayout:Z

    .line 296
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object p2

    .line 297
    sget-object v1, Landroidx/constraintlayout/widget/R$styleable;->Variant:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 298
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_6

    .line 304
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 305
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->Variant_constraints:I

    if-ne v2, v3, :cond_0

    .line 306
    iget v3, p0, Landroidx/constraintlayout/widget/StateSet$Variant;->mConstraintID:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/widget/StateSet$Variant;->mConstraintID:I

    .line 307
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Landroidx/constraintlayout/widget/StateSet$Variant;->mConstraintID:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v2

    .line 308
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p0, Landroidx/constraintlayout/widget/StateSet$Variant;->mConstraintID:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    const-string v3, "layout"

    .line 310
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    .line 311
    iput-boolean v2, p0, Landroidx/constraintlayout/widget/StateSet$Variant;->mIsLayout:Z

    goto :goto_1

    .line 313
    :cond_0
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->Variant_region_heightLessThan:I

    if-ne v2, v3, :cond_1

    .line 314
    iget v3, p0, Landroidx/constraintlayout/widget/StateSet$Variant;->mMaxHeight:F

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/widget/StateSet$Variant;->mMaxHeight:F

    goto :goto_1

    .line 315
    :cond_1
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->Variant_region_heightMoreThan:I

    if-ne v2, v3, :cond_2

    .line 316
    iget v3, p0, Landroidx/constraintlayout/widget/StateSet$Variant;->mMinHeight:F

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/widget/StateSet$Variant;->mMinHeight:F

    goto :goto_1

    .line 317
    :cond_2
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->Variant_region_widthLessThan:I

    if-ne v2, v3, :cond_3

    .line 318
    iget v3, p0, Landroidx/constraintlayout/widget/StateSet$Variant;->mMaxWidth:F

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/widget/StateSet$Variant;->mMaxWidth:F

    goto :goto_1

    .line 319
    :cond_3
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->Variant_region_widthMoreThan:I

    if-ne v2, v3, :cond_4

    .line 320
    iget v3, p0, Landroidx/constraintlayout/widget/StateSet$Variant;->mMinWidth:F

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/widget/StateSet$Variant;->mMinWidth:F

    goto :goto_1

    :cond_4
    const-string v2, "ConstraintLayoutStates"

    const-string v3, "Unknown tag"

    .line 322
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 325
    :cond_6
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method match(FF)Z
    .locals 2

    .line 348
    iget v0, p0, Landroidx/constraintlayout/widget/StateSet$Variant;->mMinWidth:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 349
    iget v0, p0, Landroidx/constraintlayout/widget/StateSet$Variant;->mMinWidth:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    return v1

    .line 351
    :cond_0
    iget v0, p0, Landroidx/constraintlayout/widget/StateSet$Variant;->mMinHeight:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_1

    .line 352
    iget v0, p0, Landroidx/constraintlayout/widget/StateSet$Variant;->mMinHeight:F

    cmpg-float v0, p2, v0

    if-gez v0, :cond_1

    return v1

    .line 354
    :cond_1
    iget v0, p0, Landroidx/constraintlayout/widget/StateSet$Variant;->mMaxWidth:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_2

    .line 355
    iget v0, p0, Landroidx/constraintlayout/widget/StateSet$Variant;->mMaxWidth:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_2

    return v1

    .line 357
    :cond_2
    iget p1, p0, Landroidx/constraintlayout/widget/StateSet$Variant;->mMaxHeight:F

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    if-nez p1, :cond_3

    .line 358
    iget p0, p0, Landroidx/constraintlayout/widget/StateSet$Variant;->mMaxHeight:F

    cmpl-float p0, p2, p0

    if-lez p0, :cond_3

    return v1

    :cond_3
    const/4 p0, 0x1

    return p0
.end method
