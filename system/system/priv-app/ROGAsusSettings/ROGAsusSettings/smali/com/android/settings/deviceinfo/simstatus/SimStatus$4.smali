.class Lcom/android/settings/deviceinfo/simstatus/SimStatus$4;
.super Ljava/lang/Object;
.source "SimStatus.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


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

    .line 1081
    iput-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus$4;->this$0:Lcom/android/settings/deviceinfo/simstatus/SimStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabChanged(Ljava/lang/String;)V
    .locals 3

    const-string v0, "SimStatus"

    const-string v1, "onTabChanged"

    .line 1084
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1085
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 1087
    iget-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus$4;->this$0:Lcom/android/settings/deviceinfo/simstatus/SimStatus;

    invoke-static {v1, p1}, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->access$102(Lcom/android/settings/deviceinfo/simstatus/SimStatus;I)I

    .line 1088
    iget-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus$4;->this$0:Lcom/android/settings/deviceinfo/simstatus/SimStatus;

    invoke-static {v1}, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->access$000(Lcom/android/settings/deviceinfo/simstatus/SimStatus;)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 1093
    :cond_0
    iget-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus$4;->this$0:Lcom/android/settings/deviceinfo/simstatus/SimStatus;

    iget-object v2, v1, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mTelephonyCallback:Lcom/android/settings/deviceinfo/simstatus/SimStatus$SimStatusDialogTelephonyCallback;

    if-eqz v2, :cond_1

    .line 1094
    invoke-static {v1}, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->access$400(Lcom/android/settings/deviceinfo/simstatus/SimStatus;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus$4;->this$0:Lcom/android/settings/deviceinfo/simstatus/SimStatus;

    iget-object v2, v2, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mTelephonyCallback:Lcom/android/settings/deviceinfo/simstatus/SimStatus$SimStatusDialogTelephonyCallback;

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->unregisterTelephonyCallback(Landroid/telephony/TelephonyCallback;)V

    .line 1097
    :cond_1
    iget-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus$4;->this$0:Lcom/android/settings/deviceinfo/simstatus/SimStatus;

    invoke-static {v1, p1}, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->access$200(Lcom/android/settings/deviceinfo/simstatus/SimStatus;I)Landroid/telephony/SubscriptionInfo;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->access$002(Lcom/android/settings/deviceinfo/simstatus/SimStatus;Landroid/telephony/SubscriptionInfo;)Landroid/telephony/SubscriptionInfo;

    .line 1099
    iget-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus$4;->this$0:Lcom/android/settings/deviceinfo/simstatus/SimStatus;

    invoke-static {p1}, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->access$400(Lcom/android/settings/deviceinfo/simstatus/SimStatus;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus$4;->this$0:Lcom/android/settings/deviceinfo/simstatus/SimStatus;

    .line 1100
    invoke-static {v2}, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->access$000(Lcom/android/settings/deviceinfo/simstatus/SimStatus;)Landroid/telephony/SubscriptionInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    .line 1099
    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->access$402(Lcom/android/settings/deviceinfo/simstatus/SimStatus;Landroid/telephony/TelephonyManager;)Landroid/telephony/TelephonyManager;

    .line 1102
    iget-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus$4;->this$0:Lcom/android/settings/deviceinfo/simstatus/SimStatus;

    invoke-virtual {p1}, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->initialize()V

    .line 1104
    iget-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus$4;->this$0:Lcom/android/settings/deviceinfo/simstatus/SimStatus;

    invoke-static {p1}, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->access$400(Lcom/android/settings/deviceinfo/simstatus/SimStatus;)Landroid/telephony/TelephonyManager;

    move-result-object p1

    iget-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus$4;->this$0:Lcom/android/settings/deviceinfo/simstatus/SimStatus;

    invoke-static {v1}, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->access$2000(Lcom/android/settings/deviceinfo/simstatus/SimStatus;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus$4;->this$0:Lcom/android/settings/deviceinfo/simstatus/SimStatus;

    iget-object v2, v2, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mTelephonyCallback:Lcom/android/settings/deviceinfo/simstatus/SimStatus$SimStatusDialogTelephonyCallback;

    invoke-virtual {p1, v1, v2}, Landroid/telephony/TelephonyManager;->registerTelephonyCallback(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    .line 1107
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTabChanged(): mShowLatestAreaInfo = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus$4;->this$0:Lcom/android/settings/deviceinfo/simstatus/SimStatus;

    invoke-static {v1}, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->access$2100(Lcom/android/settings/deviceinfo/simstatus/SimStatus;)Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mSlotIndex = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus$4;->this$0:Lcom/android/settings/deviceinfo/simstatus/SimStatus;

    .line 1108
    invoke-static {v1}, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->access$100(Lcom/android/settings/deviceinfo/simstatus/SimStatus;)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1107
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1109
    iget-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus$4;->this$0:Lcom/android/settings/deviceinfo/simstatus/SimStatus;

    invoke-static {p1}, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->access$2100(Lcom/android/settings/deviceinfo/simstatus/SimStatus;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1110
    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus$4;->this$0:Lcom/android/settings/deviceinfo/simstatus/SimStatus;

    invoke-static {p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->access$700(Lcom/android/settings/deviceinfo/simstatus/SimStatus;)V

    :cond_2
    return-void
.end method
