.class public final Landroidx/mediarouter/media/MediaRouterApi24$RouteInfo;
.super Ljava/lang/Object;
.source "MediaRouterApi24.java"


# direct methods
.method public static getDeviceType(Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "routeObj"
        }
    .end annotation

    .line 26
    check-cast p0, Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getDeviceType()I

    move-result p0

    return p0
.end method
