.class Lcom/android/settings/display/SmartAutoRotateController$1;
.super Landroid/content/BroadcastReceiver;
.source "SmartAutoRotateController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/display/SmartAutoRotateController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/display/SmartAutoRotateController;


# direct methods
.method constructor <init>(Lcom/android/settings/display/SmartAutoRotateController;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/android/settings/display/SmartAutoRotateController$1;->this$0:Lcom/android/settings/display/SmartAutoRotateController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/android/settings/display/SmartAutoRotateController$1;->this$0:Lcom/android/settings/display/SmartAutoRotateController;

    invoke-static {p0}, Lcom/android/settings/display/SmartAutoRotateController;->access$000(Lcom/android/settings/display/SmartAutoRotateController;)Landroidx/preference/Preference;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/display/SmartAutoRotateController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method
