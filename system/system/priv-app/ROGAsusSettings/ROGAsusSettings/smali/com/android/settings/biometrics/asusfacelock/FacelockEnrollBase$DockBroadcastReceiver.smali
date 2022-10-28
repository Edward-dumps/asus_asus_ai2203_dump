.class public Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollBase$DockBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FacelockEnrollBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DockBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollBase;


# direct methods
.method public constructor <init>(Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollBase;)V
    .locals 0

    .line 252
    iput-object p1, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollBase$DockBroadcastReceiver;->this$0:Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollBase;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 255
    iget-object p0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollBase$DockBroadcastReceiver;->this$0:Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollBase;

    invoke-virtual {p0}, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollBase;->dockingRefresh()V

    return-void
.end method
