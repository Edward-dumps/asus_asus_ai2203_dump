.class public Lcom/android/settings/deviceinfo/HardwareInformationFragment$DockBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HardwareInformationFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/HardwareInformationFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DockBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/HardwareInformationFragment;


# direct methods
.method public constructor <init>(Lcom/android/settings/deviceinfo/HardwareInformationFragment;)V
    .locals 0

    .line 226
    iput-object p1, p0, Lcom/android/settings/deviceinfo/HardwareInformationFragment$DockBroadcastReceiver;->this$0:Lcom/android/settings/deviceinfo/HardwareInformationFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 229
    iget-object p0, p0, Lcom/android/settings/deviceinfo/HardwareInformationFragment$DockBroadcastReceiver;->this$0:Lcom/android/settings/deviceinfo/HardwareInformationFragment;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/HardwareInformationFragment;->tryCatchDockingRefresh()V

    return-void
.end method
