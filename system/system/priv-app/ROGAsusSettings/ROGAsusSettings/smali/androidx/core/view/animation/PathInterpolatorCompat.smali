.class public final Landroidx/core/view/animation/PathInterpolatorCompat;
.super Ljava/lang/Object;
.source "PathInterpolatorCompat.java"


# direct methods
.method public static create(FFFF)Landroid/view/animation/Interpolator;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "controlX1",
            "controlY1",
            "controlX2",
            "controlY2"
        }
    .end annotation

    .line 81
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 82
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    return-object v0

    .line 84
    :cond_0
    new-instance v0, Landroidx/core/view/animation/PathInterpolatorApi14;

    invoke-direct {v0, p0, p1, p2, p3}, Landroidx/core/view/animation/PathInterpolatorApi14;-><init>(FFFF)V

    return-object v0
.end method

.method public static create(Landroid/graphics/Path;)Landroid/view/animation/Interpolator;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation

    .line 48
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 49
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, p0}, Landroid/view/animation/PathInterpolator;-><init>(Landroid/graphics/Path;)V

    return-object v0

    .line 51
    :cond_0
    new-instance v0, Landroidx/core/view/animation/PathInterpolatorApi14;

    invoke-direct {v0, p0}, Landroidx/core/view/animation/PathInterpolatorApi14;-><init>(Landroid/graphics/Path;)V

    return-object v0
.end method
