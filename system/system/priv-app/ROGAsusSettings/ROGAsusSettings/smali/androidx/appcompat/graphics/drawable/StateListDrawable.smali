.class Landroidx/appcompat/graphics/drawable/StateListDrawable;
.super Landroidx/appcompat/graphics/drawable/DrawableContainer;
.source "StateListDrawable.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "RestrictedAPI"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;
    }
.end annotation


# instance fields
.field private mMutated:Z

.field private mStateListState:Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;


# direct methods
.method constructor <init>(Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;)V
    .locals 0

    .line 414
    invoke-direct {p0}, Landroidx/appcompat/graphics/drawable/DrawableContainer;-><init>()V

    if-eqz p1, :cond_0

    .line 416
    invoke-virtual {p0, p1}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->setConstantState(Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;)V

    :cond_0
    return-void
.end method

.method constructor <init>(Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;Landroid/content/res/Resources;)V
    .locals 1

    .line 403
    invoke-direct {p0}, Landroidx/appcompat/graphics/drawable/DrawableContainer;-><init>()V

    .line 405
    new-instance v0, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;

    invoke-direct {v0, p1, p0, p2}, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;-><init>(Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;Landroidx/appcompat/graphics/drawable/StateListDrawable;Landroid/content/res/Resources;)V

    .line 406
    invoke-virtual {p0, v0}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->setConstantState(Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;)V

    .line 407
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->onStateChange([I)Z

    return-void
.end method


# virtual methods
.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 0

    .line 391
    invoke-super {p0, p1}, Landroidx/appcompat/graphics/drawable/DrawableContainer;->applyTheme(Landroid/content/res/Resources$Theme;)V

    .line 392
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->onStateChange([I)Z

    return-void
.end method

.method clearMutated()V
    .locals 1

    .line 324
    invoke-super {p0}, Landroidx/appcompat/graphics/drawable/DrawableContainer;->clearMutated()V

    const/4 v0, 0x0

    .line 325
    iput-boolean v0, p0, Landroidx/appcompat/graphics/drawable/StateListDrawable;->mMutated:Z

    return-void
.end method

.method bridge synthetic cloneConstantState()Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;
    .locals 0

    .line 79
    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->cloneConstantState()Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;

    move-result-object p0

    return-object p0
.end method

.method cloneConstantState()Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;
    .locals 3

    .line 319
    new-instance v0, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;

    iget-object v1, p0, Landroidx/appcompat/graphics/drawable/StateListDrawable;->mStateListState:Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;-><init>(Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;Landroidx/appcompat/graphics/drawable/StateListDrawable;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method extractStateSet(Landroid/util/AttributeSet;)[I
    .locals 7

    .line 235
    invoke-interface {p1}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result p0

    .line 236
    new-array v0, p0, [I

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, p0, :cond_2

    .line 238
    invoke-interface {p1, v2}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    move-result v4

    if-eqz v4, :cond_1

    const v5, 0x10100d0

    if-eq v4, v5, :cond_1

    const v5, 0x1010199

    if-eq v4, v5, :cond_1

    add-int/lit8 v5, v3, 0x1

    .line 248
    invoke-interface {p1, v2, v1}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    neg-int v4, v4

    .line 249
    :goto_1
    aput v4, v0, v3

    move v3, v5

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 252
    :cond_2
    invoke-static {v0, v3}, Landroid/util/StateSet;->trimStateSet([II)[I

    move-result-object p0

    return-object p0
.end method

.method public isStateful()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 310
    iget-boolean v0, p0, Landroidx/appcompat/graphics/drawable/StateListDrawable;->mMutated:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 311
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/StateListDrawable;->mStateListState:Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;

    invoke-virtual {v0}, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;->mutate()V

    const/4 v0, 0x1

    .line 312
    iput-boolean v0, p0, Landroidx/appcompat/graphics/drawable/StateListDrawable;->mMutated:Z

    :cond_0
    return-object p0
.end method

.method protected onStateChange([I)Z
    .locals 2

    .line 113
    invoke-super {p0, p1}, Landroidx/appcompat/graphics/drawable/DrawableContainer;->onStateChange([I)Z

    move-result v0

    .line 114
    iget-object v1, p0, Landroidx/appcompat/graphics/drawable/StateListDrawable;->mStateListState:Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;

    invoke-virtual {v1, p1}, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;->indexOfStateSet([I)I

    move-result p1

    if-gez p1, :cond_0

    .line 120
    iget-object p1, p0, Landroidx/appcompat/graphics/drawable/StateListDrawable;->mStateListState:Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;

    sget-object v1, Landroid/util/StateSet;->WILD_CARD:[I

    invoke-virtual {p1, v1}, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;->indexOfStateSet([I)I

    move-result p1

    .line 122
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/appcompat/graphics/drawable/DrawableContainer;->selectDrawable(I)Z

    move-result p0

    if-nez p0, :cond_2

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method setConstantState(Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;)V
    .locals 1

    .line 397
    invoke-super {p0, p1}, Landroidx/appcompat/graphics/drawable/DrawableContainer;->setConstantState(Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;)V

    .line 398
    instance-of v0, p1, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;

    if-eqz v0, :cond_0

    .line 399
    check-cast p1, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;

    iput-object p1, p0, Landroidx/appcompat/graphics/drawable/StateListDrawable;->mStateListState:Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;

    :cond_0
    return-void
.end method
