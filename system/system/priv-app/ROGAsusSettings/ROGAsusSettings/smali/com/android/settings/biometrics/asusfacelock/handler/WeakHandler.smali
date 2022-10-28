.class public abstract Lcom/android/settings/biometrics/asusfacelock/handler/WeakHandler;
.super Landroid/os/Handler;
.source "WeakHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/app/Activity;",
        ">",
        "Landroid/os/Handler;"
    }
.end annotation


# instance fields
.field protected final weakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 18
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/biometrics/asusfacelock/handler/WeakHandler;->weakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/android/settings/biometrics/asusfacelock/handler/WeakHandler;->weakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 27
    invoke-virtual {p0, v0, p1}, Lcom/android/settings/biometrics/asusfacelock/handler/WeakHandler;->handleMsg(Landroid/app/Activity;Landroid/os/Message;)V

    :cond_0
    return-void
.end method

.method public abstract handleMsg(Landroid/app/Activity;Landroid/os/Message;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/os/Message;",
            ")V"
        }
    .end annotation
.end method
