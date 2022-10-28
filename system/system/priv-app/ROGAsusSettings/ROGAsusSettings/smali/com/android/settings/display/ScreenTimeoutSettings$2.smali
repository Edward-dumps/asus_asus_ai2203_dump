.class Lcom/android/settings/display/ScreenTimeoutSettings$2;
.super Landroid/content/BroadcastReceiver;
.source "ScreenTimeoutSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/display/ScreenTimeoutSettings;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/display/ScreenTimeoutSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/display/ScreenTimeoutSettings;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/android/settings/display/ScreenTimeoutSettings$2;->this$0:Lcom/android/settings/display/ScreenTimeoutSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 201
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "ScreenTimeOut"

    const/4 p2, -0x1

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    return-void
.end method
