.class final Landroidx/mediarouter/media/MediaRouterJellybean;
.super Ljava/lang/Object;
.source "MediaRouterJellybean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/mediarouter/media/MediaRouterJellybean$VolumeCallbackProxy;,
        Landroidx/mediarouter/media/MediaRouterJellybean$CallbackProxy;,
        Landroidx/mediarouter/media/MediaRouterJellybean$GetDefaultRouteWorkaround;,
        Landroidx/mediarouter/media/MediaRouterJellybean$SelectRouteWorkaround;,
        Landroidx/mediarouter/media/MediaRouterJellybean$VolumeCallback;,
        Landroidx/mediarouter/media/MediaRouterJellybean$Callback;,
        Landroidx/mediarouter/media/MediaRouterJellybean$UserRouteInfo;,
        Landroidx/mediarouter/media/MediaRouterJellybean$RouteInfo;
    }
.end annotation


# direct methods
.method public static addCallback(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "routerObj",
            "types",
            "callbackObj"
        }
    .end annotation

    .line 87
    check-cast p0, Landroid/media/MediaRouter;

    check-cast p2, Landroid/media/MediaRouter$Callback;

    invoke-virtual {p0, p1, p2}, Landroid/media/MediaRouter;->addCallback(ILandroid/media/MediaRouter$Callback;)V

    return-void
.end method

.method public static addUserRoute(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "routerObj",
            "routeObj"
        }
    .end annotation

    .line 107
    check-cast p0, Landroid/media/MediaRouter;

    check-cast p1, Landroid/media/MediaRouter$UserRouteInfo;

    invoke-virtual {p0, p1}, Landroid/media/MediaRouter;->addUserRoute(Landroid/media/MediaRouter$UserRouteInfo;)V

    return-void
.end method

.method public static createCallback(Landroidx/mediarouter/media/MediaRouterJellybean$Callback;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .line 117
    new-instance v0, Landroidx/mediarouter/media/MediaRouterJellybean$CallbackProxy;

    invoke-direct {v0, p0}, Landroidx/mediarouter/media/MediaRouterJellybean$CallbackProxy;-><init>(Landroidx/mediarouter/media/MediaRouterJellybean$Callback;)V

    return-object v0
.end method

.method public static createRouteCategory(Ljava/lang/Object;Ljava/lang/String;Z)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "routerObj",
            "name",
            "isGroupable"
        }
    .end annotation

    .line 98
    check-cast p0, Landroid/media/MediaRouter;

    invoke-virtual {p0, p1, p2}, Landroid/media/MediaRouter;->createRouteCategory(Ljava/lang/CharSequence;Z)Landroid/media/MediaRouter$RouteCategory;

    move-result-object p0

    return-object p0
.end method

.method public static createUserRoute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "routerObj",
            "categoryObj"
        }
    .end annotation

    .line 102
    check-cast p0, Landroid/media/MediaRouter;

    check-cast p1, Landroid/media/MediaRouter$RouteCategory;

    invoke-virtual {p0, p1}, Landroid/media/MediaRouter;->createUserRoute(Landroid/media/MediaRouter$RouteCategory;)Landroid/media/MediaRouter$UserRouteInfo;

    move-result-object p0

    return-object p0
.end method

.method public static createVolumeCallback(Landroidx/mediarouter/media/MediaRouterJellybean$VolumeCallback;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .line 121
    new-instance v0, Landroidx/mediarouter/media/MediaRouterJellybean$VolumeCallbackProxy;

    invoke-direct {v0, p0}, Landroidx/mediarouter/media/MediaRouterJellybean$VolumeCallbackProxy;-><init>(Landroidx/mediarouter/media/MediaRouterJellybean$VolumeCallback;)V

    return-object v0
.end method

.method public static getMediaRouter(Landroid/content/Context;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const-string v0, "media_router"

    .line 52
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getRoutes(Ljava/lang/Object;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "routerObj"
        }
    .end annotation

    .line 57
    check-cast p0, Landroid/media/MediaRouter;

    .line 58
    invoke-virtual {p0}, Landroid/media/MediaRouter;->getRouteCount()I

    move-result v0

    .line 59
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 61
    invoke-virtual {p0, v2}, Landroid/media/MediaRouter;->getRouteAt(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static getSelectedRoute(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "routerObj",
            "type"
        }
    .end annotation

    .line 78
    check-cast p0, Landroid/media/MediaRouter;

    invoke-virtual {p0, p1}, Landroid/media/MediaRouter;->getSelectedRoute(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object p0

    return-object p0
.end method

.method public static removeCallback(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "routerObj",
            "callbackObj"
        }
    .end annotation

    .line 92
    check-cast p0, Landroid/media/MediaRouter;

    check-cast p1, Landroid/media/MediaRouter$Callback;

    invoke-virtual {p0, p1}, Landroid/media/MediaRouter;->removeCallback(Landroid/media/MediaRouter$Callback;)V

    return-void
.end method

.method public static removeUserRoute(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "routerObj",
            "routeObj"
        }
    .end annotation

    .line 112
    check-cast p0, Landroid/media/MediaRouter;

    check-cast p1, Landroid/media/MediaRouter$UserRouteInfo;

    invoke-virtual {p0, p1}, Landroid/media/MediaRouter;->removeUserRoute(Landroid/media/MediaRouter$UserRouteInfo;)V

    return-void
.end method

.method public static selectRoute(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "routerObj",
            "types",
            "routeObj"
        }
    .end annotation

    .line 82
    check-cast p0, Landroid/media/MediaRouter;

    check-cast p2, Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {p0, p1, p2}, Landroid/media/MediaRouter;->selectRoute(ILandroid/media/MediaRouter$RouteInfo;)V

    return-void
.end method
