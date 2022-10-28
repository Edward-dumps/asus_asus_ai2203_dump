.class public Lcom/android/settings/homepage/contextualcards/conditional/HotspotConditionController$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "HotspotConditionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/homepage/contextualcards/conditional/HotspotConditionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Receiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/homepage/contextualcards/conditional/HotspotConditionController;


# direct methods
.method public constructor <init>(Lcom/android/settings/homepage/contextualcards/conditional/HotspotConditionController;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/HotspotConditionController$Receiver;->this$0:Lcom/android/settings/homepage/contextualcards/conditional/HotspotConditionController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 129
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 130
    iget-object p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/HotspotConditionController$Receiver;->this$0:Lcom/android/settings/homepage/contextualcards/conditional/HotspotConditionController;

    invoke-static {p1}, Lcom/android/settings/homepage/contextualcards/conditional/HotspotConditionController;->access$000(Lcom/android/settings/homepage/contextualcards/conditional/HotspotConditionController;)Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;->onConditionChanged()V

    const/4 p1, -0x1

    const-string v0, "android.net.wifi.extra.WIFI_AP_MODE"

    .line 131
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    .line 134
    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/conditional/HotspotConditionController$Receiver;->this$0:Lcom/android/settings/homepage/contextualcards/conditional/HotspotConditionController;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/settings/homepage/contextualcards/conditional/HotspotConditionController;->access$102(Lcom/android/settings/homepage/contextualcards/conditional/HotspotConditionController;Z)Z

    goto :goto_0

    .line 136
    :cond_0
    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/conditional/HotspotConditionController$Receiver;->this$0:Lcom/android/settings/homepage/contextualcards/conditional/HotspotConditionController;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/settings/homepage/contextualcards/conditional/HotspotConditionController;->access$102(Lcom/android/settings/homepage/contextualcards/conditional/HotspotConditionController;Z)Z

    :cond_1
    :goto_0
    return-void
.end method
