.class public abstract Landroid/net/wifi/WifiManager$SubsystemRestartTrackingCallback;
.super Ljava/lang/Object;
.source "WifiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SubsystemRestartTrackingCallback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiManager$SubsystemRestartTrackingCallback$SubsystemRestartCallbackProxy;
    }
.end annotation


# instance fields
.field private final mProxy:Landroid/net/wifi/WifiManager$SubsystemRestartTrackingCallback$SubsystemRestartCallbackProxy;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3500
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3501
    new-instance v0, Landroid/net/wifi/WifiManager$SubsystemRestartTrackingCallback$SubsystemRestartCallbackProxy;

    invoke-direct {v0}, Landroid/net/wifi/WifiManager$SubsystemRestartTrackingCallback$SubsystemRestartCallbackProxy;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiManager$SubsystemRestartTrackingCallback;->mProxy:Landroid/net/wifi/WifiManager$SubsystemRestartTrackingCallback$SubsystemRestartCallbackProxy;

    return-void
.end method


# virtual methods
.method getProxy()Landroid/net/wifi/WifiManager$SubsystemRestartTrackingCallback$SubsystemRestartCallbackProxy;
    .locals 0

    .line 3506
    iget-object p0, p0, Landroid/net/wifi/WifiManager$SubsystemRestartTrackingCallback;->mProxy:Landroid/net/wifi/WifiManager$SubsystemRestartTrackingCallback$SubsystemRestartCallbackProxy;

    return-object p0
.end method

.method public abstract onSubsystemRestarted()V
.end method

.method public abstract onSubsystemRestarting()V
.end method
