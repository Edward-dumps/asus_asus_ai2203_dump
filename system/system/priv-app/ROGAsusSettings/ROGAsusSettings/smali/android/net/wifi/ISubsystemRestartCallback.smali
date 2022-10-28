.class public interface abstract Landroid/net/wifi/ISubsystemRestartCallback;
.super Ljava/lang/Object;
.source "ISubsystemRestartCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/ISubsystemRestartCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onSubsystemRestarted()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onSubsystemRestarting()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
