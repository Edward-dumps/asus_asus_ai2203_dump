.class final Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;
.super Ljava/lang/Object;
.source "MediaRouter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/mediarouter/media/MediaRouter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PrepareTransferNotifier"
.end annotation


# instance fields
.field private mCanceled:Z

.field private mFinished:Z

.field private final mFromRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

.field private mFuture:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field final mMemberRoutes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$DynamicRouteDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field final mReason:I

.field private final mRequestedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

.field private final mRouter:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;",
            ">;"
        }
    .end annotation
.end field

.field final mToRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

.field final mToRouteController:Landroidx/mediarouter/media/MediaRouteProvider$RouteController;


# direct methods
.method public static synthetic $r8$lambda$8XsnEqPS6eqKArD4ig8WGDpmrS4(Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;)V
    .locals 0

    invoke-direct {p0}, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->lambda$new$0()V

    return-void
.end method

.method constructor <init>(Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;Landroidx/mediarouter/media/MediaRouter$RouteInfo;Landroidx/mediarouter/media/MediaRouteProvider$RouteController;ILandroidx/mediarouter/media/MediaRouter$RouteInfo;Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "router",
            "route",
            "routeController",
            "reason",
            "requestedRoute",
            "memberRoutes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;",
            "Landroidx/mediarouter/media/MediaRouter$RouteInfo;",
            "Landroidx/mediarouter/media/MediaRouteProvider$RouteController;",
            "I",
            "Landroidx/mediarouter/media/MediaRouter$RouteInfo;",
            "Ljava/util/Collection<",
            "Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$DynamicRouteDescriptor;",
            ">;)V"
        }
    .end annotation

    .line 3813
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3806
    iput-object v0, p0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->mFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    const/4 v1, 0x0

    .line 3807
    iput-boolean v1, p0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->mFinished:Z

    .line 3808
    iput-boolean v1, p0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->mCanceled:Z

    .line 3814
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->mRouter:Ljava/lang/ref/WeakReference;

    .line 3816
    iput-object p2, p0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->mToRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 3817
    iput-object p3, p0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->mToRouteController:Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    .line 3818
    iput p4, p0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->mReason:I

    .line 3819
    iget-object p2, p1, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    iput-object p2, p0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->mFromRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 3820
    iput-object p5, p0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->mRequestedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    if-nez p6, :cond_0

    goto :goto_0

    .line 3821
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_0
    iput-object v0, p0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->mMemberRoutes:Ljava/util/List;

    .line 3824
    iget-object p1, p1, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mCallbackHandler:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$CallbackHandler;

    new-instance p2, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier$$ExternalSyntheticLambda1;-><init>(Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;)V

    const-wide/16 p3, 0x3a98

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 0

    .line 3824
    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->finishTransfer()V

    return-void
.end method

.method private selectToRouteAndNotify()V
    .locals 6

    .line 3905
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->mRouter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;

    if-nez v0, :cond_0

    return-void

    .line 3910
    :cond_0
    iget-object v1, p0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->mToRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    iput-object v1, v0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 3911
    iget-object v2, p0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->mToRouteController:Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    iput-object v2, v0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSelectedRouteController:Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    .line 3913
    iget-object v2, p0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->mRequestedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    if-nez v2, :cond_1

    .line 3914
    iget-object v2, v0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mCallbackHandler:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$CallbackHandler;

    const/16 v3, 0x106

    new-instance v4, Landroidx/core/util/Pair;

    iget-object v5, p0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->mFromRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    invoke-direct {v4, v5, v1}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget v1, p0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->mReason:I

    invoke-virtual {v2, v3, v4, v1}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->post(ILjava/lang/Object;I)V

    goto :goto_0

    .line 3917
    :cond_1
    iget-object v3, v0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mCallbackHandler:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$CallbackHandler;

    const/16 v4, 0x108

    new-instance v5, Landroidx/core/util/Pair;

    invoke-direct {v5, v2, v1}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget v1, p0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->mReason:I

    invoke-virtual {v3, v4, v5, v1}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->post(ILjava/lang/Object;I)V

    .line 3922
    :goto_0
    iget-object v1, v0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mRouteControllerMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 3923
    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->maybeUpdateMemberRouteControllers()V

    .line 3924
    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->updatePlaybackInfoFromSelectedRoute()V

    .line 3925
    iget-object p0, p0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->mMemberRoutes:Ljava/util/List;

    if-eqz p0, :cond_2

    .line 3926
    iget-object v0, v0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    invoke-virtual {v0, p0}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->updateDynamicDescriptors(Ljava/util/Collection;)V

    :cond_2
    return-void
.end method

.method private unselectFromRouteAndNotify()V
    .locals 5

    .line 3881
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->mRouter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;

    if-eqz v0, :cond_4

    .line 3882
    iget-object v1, v0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    iget-object v2, p0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->mFromRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    if-eq v1, v2, :cond_0

    goto :goto_1

    .line 3886
    :cond_0
    iget-object v1, v0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mCallbackHandler:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$CallbackHandler;

    const/16 v3, 0x107

    iget v4, p0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->mReason:I

    invoke-virtual {v1, v3, v2, v4}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->post(ILjava/lang/Object;I)V

    .line 3889
    iget-object v1, v0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSelectedRouteController:Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    if-eqz v1, :cond_1

    .line 3890
    iget v2, p0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->mReason:I

    invoke-virtual {v1, v2}, Landroidx/mediarouter/media/MediaRouteProvider$RouteController;->onUnselect(I)V

    .line 3891
    iget-object v1, v0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSelectedRouteController:Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    invoke-virtual {v1}, Landroidx/mediarouter/media/MediaRouteProvider$RouteController;->onRelease()V

    .line 3894
    :cond_1
    iget-object v1, v0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mRouteControllerMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 3895
    iget-object v1, v0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mRouteControllerMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    .line 3896
    iget v3, p0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->mReason:I

    invoke-virtual {v2, v3}, Landroidx/mediarouter/media/MediaRouteProvider$RouteController;->onUnselect(I)V

    .line 3897
    invoke-virtual {v2}, Landroidx/mediarouter/media/MediaRouteProvider$RouteController;->onRelease()V

    goto :goto_0

    .line 3899
    :cond_2
    iget-object p0, v0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mRouteControllerMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    :cond_3
    const/4 p0, 0x0

    .line 3901
    iput-object p0, v0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mSelectedRouteController:Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method cancel()V
    .locals 2

    .line 3869
    iget-boolean v0, p0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->mFinished:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->mCanceled:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 3872
    iput-boolean v0, p0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->mCanceled:Z

    .line 3874
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->mToRouteController:Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 3875
    invoke-virtual {v0, v1}, Landroidx/mediarouter/media/MediaRouteProvider$RouteController;->onUnselect(I)V

    .line 3876
    iget-object p0, p0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->mToRouteController:Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouteProvider$RouteController;->onRelease()V

    :cond_1
    :goto_0
    return-void
.end method

.method finishTransfer()V
    .locals 2

    .line 3848
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->checkCallingThread()V

    .line 3850
    iget-boolean v0, p0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->mFinished:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->mCanceled:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 3854
    :cond_0
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->mRouter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;

    if-eqz v0, :cond_2

    .line 3855
    iget-object v1, v0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mTransferNotifier:Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;

    if-ne v1, p0, :cond_2

    iget-object v1, p0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->mFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    if-eqz v1, :cond_1

    .line 3856
    invoke-interface {v1}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    .line 3861
    iput-boolean v1, p0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->mFinished:Z

    const/4 v1, 0x0

    .line 3862
    iput-object v1, v0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mTransferNotifier:Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;

    .line 3864
    invoke-direct {p0}, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->unselectFromRouteAndNotify()V

    .line 3865
    invoke-direct {p0}, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->selectToRouteAndNotify()V

    return-void

    .line 3857
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->cancel()V

    :cond_3
    :goto_1
    return-void
.end method

.method setFuture(Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "future"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 3829
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->mRouter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;

    if-eqz v0, :cond_2

    .line 3830
    iget-object v1, v0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mTransferNotifier:Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;

    if-eq v1, p0, :cond_0

    goto :goto_0

    .line 3836
    :cond_0
    iget-object v1, p0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->mFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    if-nez v1, :cond_1

    .line 3840
    iput-object p1, p0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->mFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 3841
    new-instance v1, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier$$ExternalSyntheticLambda0;-><init>(Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;)V

    iget-object p0, v0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mCallbackHandler:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$CallbackHandler;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier$$ExternalSyntheticLambda2;-><init>(Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$CallbackHandler;)V

    invoke-interface {p1, v1, v0}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void

    .line 3837
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "future is already set"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    const-string p1, "MediaRouter"

    const-string v0, "Router is released. Cancel transfer"

    .line 3831
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3832
    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->cancel()V

    return-void
.end method
