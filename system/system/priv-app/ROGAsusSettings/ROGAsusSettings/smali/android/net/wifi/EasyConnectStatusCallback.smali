.class public abstract Landroid/net/wifi/EasyConnectStatusCallback;
.super Ljava/lang/Object;
.source "EasyConnectStatusCallback.java"


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBootstrapUriGenerated(Landroid/net/Uri;)V
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    return-void
.end method

.method public abstract onConfiguratorSuccess(I)V
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end method

.method public abstract onEnrolleeSuccess(I)V
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end method

.method public onFailure(I)V
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    return-void
.end method

.method public onFailure(ILjava/lang/String;Landroid/util/SparseArray;[I)V
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "[I>;[I)V"
        }
    .end annotation

    .line 277
    invoke-virtual {p0, p1}, Landroid/net/wifi/EasyConnectStatusCallback;->onFailure(I)V

    return-void
.end method

.method public abstract onProgress(I)V
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end method
