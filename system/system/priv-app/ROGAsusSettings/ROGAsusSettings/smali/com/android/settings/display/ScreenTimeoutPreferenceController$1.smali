.class Lcom/android/settings/display/ScreenTimeoutPreferenceController$1;
.super Landroid/content/BroadcastReceiver;
.source "ScreenTimeoutPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/display/ScreenTimeoutPreferenceController;->onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/display/ScreenTimeoutPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/display/ScreenTimeoutPreferenceController;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/android/settings/display/ScreenTimeoutPreferenceController$1;->this$0:Lcom/android/settings/display/ScreenTimeoutPreferenceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/android/settings/display/ScreenTimeoutPreferenceController$1;->this$0:Lcom/android/settings/display/ScreenTimeoutPreferenceController;

    invoke-virtual {p0, p2}, Lcom/android/settings/display/ScreenTimeoutPreferenceController;->updateSummary(Landroid/content/Intent;)V

    return-void
.end method
