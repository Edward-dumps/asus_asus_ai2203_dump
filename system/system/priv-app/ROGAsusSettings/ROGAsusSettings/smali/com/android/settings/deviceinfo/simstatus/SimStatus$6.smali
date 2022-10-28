.class Lcom/android/settings/deviceinfo/simstatus/SimStatus$6;
.super Landroid/content/BroadcastReceiver;
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

    .line 1148
    iput-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus$6;->this$0:Lcom/android/settings/deviceinfo/simstatus/SimStatus;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1151
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onReceive(): intent.getAction() = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SimStatus"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.SERVICE_STATE"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1153
    iget-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus$6;->this$0:Lcom/android/settings/deviceinfo/simstatus/SimStatus;

    invoke-static {p1}, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->access$400(Lcom/android/settings/deviceinfo/simstatus/SimStatus;)Landroid/telephony/TelephonyManager;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus$6;->this$0:Lcom/android/settings/deviceinfo/simstatus/SimStatus;

    invoke-static {p1}, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->access$000(Lcom/android/settings/deviceinfo/simstatus/SimStatus;)Landroid/telephony/SubscriptionInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1154
    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus$6;->this$0:Lcom/android/settings/deviceinfo/simstatus/SimStatus;

    invoke-static {p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->access$1300(Lcom/android/settings/deviceinfo/simstatus/SimStatus;)V

    :cond_0
    return-void
.end method
