.class abstract Landroidx/mediarouter/media/MediaRouteProviderProtocol;
.super Ljava/lang/Object;
.source "MediaRouteProviderProtocol.java"


# direct methods
.method public static isValidRemoteMessenger(Landroid/os/Messenger;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "messenger"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 317
    :try_start_0
    invoke-virtual {p0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    nop

    :catch_0
    :cond_0
    return v0
.end method
