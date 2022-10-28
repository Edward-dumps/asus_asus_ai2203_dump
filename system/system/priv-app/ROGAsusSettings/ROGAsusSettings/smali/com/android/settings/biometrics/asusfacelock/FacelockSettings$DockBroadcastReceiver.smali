.class public Lcom/android/settings/biometrics/asusfacelock/FacelockSettings$DockBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FacelockSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/biometrics/asusfacelock/FacelockSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DockBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/biometrics/asusfacelock/FacelockSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/biometrics/asusfacelock/FacelockSettings;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockSettings$DockBroadcastReceiver;->this$0:Lcom/android/settings/biometrics/asusfacelock/FacelockSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockSettings$DockBroadcastReceiver;->this$0:Lcom/android/settings/biometrics/asusfacelock/FacelockSettings;

    invoke-virtual {p0}, Lcom/android/settings/biometrics/asusfacelock/FacelockSettings;->dockingRefresh()V

    return-void
.end method
