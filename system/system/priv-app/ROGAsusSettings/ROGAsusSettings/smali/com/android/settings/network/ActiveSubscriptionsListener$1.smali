.class Lcom/android/settings/network/ActiveSubscriptionsListener$1;
.super Landroid/content/BroadcastReceiver;
.source "ActiveSubscriptionsListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/network/ActiveSubscriptionsListener;->getSubscriptionChangeReceiver()Landroid/content/BroadcastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/network/ActiveSubscriptionsListener;


# direct methods
.method constructor <init>(Lcom/android/settings/network/ActiveSubscriptionsListener;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/android/settings/network/ActiveSubscriptionsListener$1;->this$0:Lcom/android/settings/network/ActiveSubscriptionsListener;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 110
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->isInitialStickyBroadcast()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 113
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 114
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const-string v0, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    .line 117
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, -0x1

    const-string v0, "android.telephony.extra.SUBSCRIPTION_INDEX"

    .line 118
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 121
    iget-object p2, p0, Lcom/android/settings/network/ActiveSubscriptionsListener$1;->this$0:Lcom/android/settings/network/ActiveSubscriptionsListener;

    invoke-static {p2, p1}, Lcom/android/settings/network/ActiveSubscriptionsListener;->access$000(Lcom/android/settings/network/ActiveSubscriptionsListener;I)Z

    move-result p2

    if-nez p2, :cond_2

    return-void

    .line 124
    :cond_2
    iget-object p2, p0, Lcom/android/settings/network/ActiveSubscriptionsListener$1;->this$0:Lcom/android/settings/network/ActiveSubscriptionsListener;

    invoke-static {p2}, Lcom/android/settings/network/ActiveSubscriptionsListener;->access$100(Lcom/android/settings/network/ActiveSubscriptionsListener;)I

    move-result p2

    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 125
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/android/settings/network/ActiveSubscriptionsListener$1;->this$0:Lcom/android/settings/network/ActiveSubscriptionsListener;

    .line 126
    invoke-static {p2}, Lcom/android/settings/network/ActiveSubscriptionsListener;->access$100(Lcom/android/settings/network/ActiveSubscriptionsListener;)I

    move-result p2

    if-eq p2, p1, :cond_3

    return-void

    .line 131
    :cond_3
    iget-object p0, p0, Lcom/android/settings/network/ActiveSubscriptionsListener$1;->this$0:Lcom/android/settings/network/ActiveSubscriptionsListener;

    invoke-virtual {p0}, Lcom/android/settings/network/ActiveSubscriptionsListener;->onSubscriptionsChanged()V

    return-void
.end method
