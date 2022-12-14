.class Lcom/android/settings/accessibility/FloatingMenuLayerDrawable$FloatingMenuLayerDrawableState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "FloatingMenuLayerDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accessibility/FloatingMenuLayerDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FloatingMenuLayerDrawableState"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mOpacity:I

.field private final mResId:I


# direct methods
.method constructor <init>(Landroid/content/Context;II)V
    .locals 0

    .line 97
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 98
    iput-object p1, p0, Lcom/android/settings/accessibility/FloatingMenuLayerDrawable$FloatingMenuLayerDrawableState;->mContext:Landroid/content/Context;

    .line 99
    iput p2, p0, Lcom/android/settings/accessibility/FloatingMenuLayerDrawable$FloatingMenuLayerDrawableState;->mResId:I

    .line 100
    iput p3, p0, Lcom/android/settings/accessibility/FloatingMenuLayerDrawable$FloatingMenuLayerDrawableState;->mOpacity:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 119
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 122
    :cond_1
    check-cast p1, Lcom/android/settings/accessibility/FloatingMenuLayerDrawable$FloatingMenuLayerDrawableState;

    .line 123
    iget v2, p0, Lcom/android/settings/accessibility/FloatingMenuLayerDrawable$FloatingMenuLayerDrawableState;->mResId:I

    iget v3, p1, Lcom/android/settings/accessibility/FloatingMenuLayerDrawable$FloatingMenuLayerDrawableState;->mResId:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/android/settings/accessibility/FloatingMenuLayerDrawable$FloatingMenuLayerDrawableState;->mOpacity:I

    iget v3, p1, Lcom/android/settings/accessibility/FloatingMenuLayerDrawable$FloatingMenuLayerDrawableState;->mOpacity:I

    if-ne v2, v3, :cond_2

    iget-object p0, p0, Lcom/android/settings/accessibility/FloatingMenuLayerDrawable$FloatingMenuLayerDrawableState;->mContext:Landroid/content/Context;

    iget-object p1, p1, Lcom/android/settings/accessibility/FloatingMenuLayerDrawable$FloatingMenuLayerDrawableState;->mContext:Landroid/content/Context;

    .line 125
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getChangingConfigurations()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 130
    iget-object v1, p0, Lcom/android/settings/accessibility/FloatingMenuLayerDrawable$FloatingMenuLayerDrawableState;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/settings/accessibility/FloatingMenuLayerDrawable$FloatingMenuLayerDrawableState;->mResId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget p0, p0, Lcom/android/settings/accessibility/FloatingMenuLayerDrawable$FloatingMenuLayerDrawableState;->mOpacity:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x2

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/android/settings/accessibility/FloatingMenuLayerDrawable$FloatingMenuLayerDrawableState;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/settings/accessibility/FloatingMenuLayerDrawable$FloatingMenuLayerDrawableState;->mResId:I

    iget p0, p0, Lcom/android/settings/accessibility/FloatingMenuLayerDrawable$FloatingMenuLayerDrawableState;->mOpacity:I

    invoke-static {v0, v1, p0}, Lcom/android/settings/accessibility/FloatingMenuLayerDrawable;->createLayerDrawable(Landroid/content/Context;II)Lcom/android/settings/accessibility/FloatingMenuLayerDrawable;

    move-result-object p0

    return-object p0
.end method
