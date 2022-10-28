.class public abstract Landroid/net/wifi/hotspot2/ProvisioningCallback;
.super Ljava/lang/Object;
.source "ProvisioningCallback.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onProvisioningComplete()V
.end method

.method public abstract onProvisioningFailure(I)V
.end method

.method public abstract onProvisioningStatus(I)V
.end method
