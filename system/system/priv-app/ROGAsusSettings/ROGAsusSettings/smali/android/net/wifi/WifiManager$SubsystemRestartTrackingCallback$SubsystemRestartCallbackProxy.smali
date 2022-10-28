.class Landroid/net/wifi/WifiManager$SubsystemRestartTrackingCallback$SubsystemRestartCallbackProxy;
.super Landroid/net/wifi/ISubsystemRestartCallback$Stub;
.source "WifiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiManager$SubsystemRestartTrackingCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SubsystemRestartCallbackProxy"
.end annotation


# instance fields
.field private mCallback:Landroid/net/wifi/WifiManager$SubsystemRestartTrackingCallback;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mExecutor:Ljava/util/concurrent/Executor;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 3528
    invoke-direct {p0}, Landroid/net/wifi/ISubsystemRestartCallback$Stub;-><init>()V

    .line 3520
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiManager$SubsystemRestartTrackingCallback$SubsystemRestartCallbackProxy;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 3529
    iput-object v0, p0, Landroid/net/wifi/WifiManager$SubsystemRestartTrackingCallback$SubsystemRestartCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    .line 3530
    iput-object v0, p0, Landroid/net/wifi/WifiManager$SubsystemRestartTrackingCallback$SubsystemRestartCallbackProxy;->mCallback:Landroid/net/wifi/WifiManager$SubsystemRestartTrackingCallback;

    return-void
.end method


# virtual methods
.method cleanUpProxy()V
    .locals 2

    .line 3542
    iget-object v0, p0, Landroid/net/wifi/WifiManager$SubsystemRestartTrackingCallback$SubsystemRestartCallbackProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 3543
    :try_start_0
    iput-object v1, p0, Landroid/net/wifi/WifiManager$SubsystemRestartTrackingCallback$SubsystemRestartCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    .line 3544
    iput-object v1, p0, Landroid/net/wifi/WifiManager$SubsystemRestartTrackingCallback$SubsystemRestartCallbackProxy;->mCallback:Landroid/net/wifi/WifiManager$SubsystemRestartTrackingCallback;

    .line 3545
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method initProxy(Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$SubsystemRestartTrackingCallback;)V
    .locals 1

    .line 3535
    iget-object v0, p0, Landroid/net/wifi/WifiManager$SubsystemRestartTrackingCallback$SubsystemRestartCallbackProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3536
    :try_start_0
    iput-object p1, p0, Landroid/net/wifi/WifiManager$SubsystemRestartTrackingCallback$SubsystemRestartCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    .line 3537
    iput-object p2, p0, Landroid/net/wifi/WifiManager$SubsystemRestartTrackingCallback$SubsystemRestartCallbackProxy;->mCallback:Landroid/net/wifi/WifiManager$SubsystemRestartTrackingCallback;

    .line 3538
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onSubsystemRestarted()V
    .locals 2

    .line 3567
    iget-object v0, p0, Landroid/net/wifi/WifiManager$SubsystemRestartTrackingCallback$SubsystemRestartCallbackProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3568
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager$SubsystemRestartTrackingCallback$SubsystemRestartCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    .line 3569
    iget-object p0, p0, Landroid/net/wifi/WifiManager$SubsystemRestartTrackingCallback$SubsystemRestartCallbackProxy;->mCallback:Landroid/net/wifi/WifiManager$SubsystemRestartTrackingCallback;

    .line 3570
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    .line 3574
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 3575
    new-instance v0, Landroid/net/wifi/WifiManager$SubsystemRestartTrackingCallback$SubsystemRestartCallbackProxy$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/net/wifi/WifiManager$SubsystemRestartTrackingCallback$SubsystemRestartCallbackProxy$$ExternalSyntheticLambda0;-><init>(Landroid/net/wifi/WifiManager$SubsystemRestartTrackingCallback;)V

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception p0

    .line 3570
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onSubsystemRestarting()V
    .locals 2

    .line 3552
    iget-object v0, p0, Landroid/net/wifi/WifiManager$SubsystemRestartTrackingCallback$SubsystemRestartCallbackProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3553
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager$SubsystemRestartTrackingCallback$SubsystemRestartCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    .line 3554
    iget-object p0, p0, Landroid/net/wifi/WifiManager$SubsystemRestartTrackingCallback$SubsystemRestartCallbackProxy;->mCallback:Landroid/net/wifi/WifiManager$SubsystemRestartTrackingCallback;

    .line 3555
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    .line 3559
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 3560
    new-instance v0, Landroid/net/wifi/WifiManager$SubsystemRestartTrackingCallback$SubsystemRestartCallbackProxy$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Landroid/net/wifi/WifiManager$SubsystemRestartTrackingCallback$SubsystemRestartCallbackProxy$$ExternalSyntheticLambda1;-><init>(Landroid/net/wifi/WifiManager$SubsystemRestartTrackingCallback;)V

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception p0

    .line 3555
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
