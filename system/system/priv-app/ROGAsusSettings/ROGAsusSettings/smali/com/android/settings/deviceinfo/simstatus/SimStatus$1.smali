.class Lcom/android/settings/deviceinfo/simstatus/SimStatus$1;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.source "SimStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/simstatus/SimStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/simstatus/SimStatus;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/simstatus/SimStatus;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus$1;->this$0:Lcom/android/settings/deviceinfo/simstatus/SimStatus;

    invoke-direct {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSubscriptionsChanged()V
    .locals 4

    .line 145
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus$1;->this$0:Lcom/android/settings/deviceinfo/simstatus/SimStatus;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->access$000(Lcom/android/settings/deviceinfo/simstatus/SimStatus;)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus$1;->this$0:Lcom/android/settings/deviceinfo/simstatus/SimStatus;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->access$000(Lcom/android/settings/deviceinfo/simstatus/SimStatus;)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 149
    :goto_0
    iget-object v2, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus$1;->this$0:Lcom/android/settings/deviceinfo/simstatus/SimStatus;

    invoke-static {v2}, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->access$100(Lcom/android/settings/deviceinfo/simstatus/SimStatus;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->access$200(Lcom/android/settings/deviceinfo/simstatus/SimStatus;I)Landroid/telephony/SubscriptionInfo;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->access$002(Lcom/android/settings/deviceinfo/simstatus/SimStatus;Landroid/telephony/SubscriptionInfo;)Landroid/telephony/SubscriptionInfo;

    .line 151
    iget-object v2, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus$1;->this$0:Lcom/android/settings/deviceinfo/simstatus/SimStatus;

    invoke-static {v2}, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->access$000(Lcom/android/settings/deviceinfo/simstatus/SimStatus;)Landroid/telephony/SubscriptionInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 152
    iget-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus$1;->this$0:Lcom/android/settings/deviceinfo/simstatus/SimStatus;

    invoke-static {v1}, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->access$000(Lcom/android/settings/deviceinfo/simstatus/SimStatus;)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    :cond_1
    if-eq v0, v1, :cond_3

    .line 156
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 157
    iget-object v2, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus$1;->this$0:Lcom/android/settings/deviceinfo/simstatus/SimStatus;

    invoke-static {v2, v0}, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->access$300(Lcom/android/settings/deviceinfo/simstatus/SimStatus;I)V

    .line 159
    :cond_2
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 160
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus$1;->this$0:Lcom/android/settings/deviceinfo/simstatus/SimStatus;

    .line 161
    invoke-static {v0}, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->access$400(Lcom/android/settings/deviceinfo/simstatus/SimStatus;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v2

    .line 160
    invoke-static {v0, v2}, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->access$402(Lcom/android/settings/deviceinfo/simstatus/SimStatus;Landroid/telephony/TelephonyManager;)Landroid/telephony/TelephonyManager;

    .line 162
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus$1;->this$0:Lcom/android/settings/deviceinfo/simstatus/SimStatus;

    invoke-static {v0, v1}, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->access$500(Lcom/android/settings/deviceinfo/simstatus/SimStatus;I)V

    .line 165
    :cond_3
    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus$1;->this$0:Lcom/android/settings/deviceinfo/simstatus/SimStatus;

    invoke-static {p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->access$600(Lcom/android/settings/deviceinfo/simstatus/SimStatus;)V

    return-void
.end method
