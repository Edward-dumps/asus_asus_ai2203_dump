.class Lcom/android/settings/deviceinfo/simstatus/SimStatus$SimStatusDialogTelephonyCallback;
.super Landroid/telephony/TelephonyCallback;
.source "SimStatus.java"

# interfaces
.implements Landroid/telephony/TelephonyCallback$DataConnectionStateListener;
.implements Landroid/telephony/TelephonyCallback$SignalStrengthsListener;
.implements Landroid/telephony/TelephonyCallback$ServiceStateListener;
.implements Landroid/telephony/TelephonyCallback$DisplayInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/simstatus/SimStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SimStatusDialogTelephonyCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/simstatus/SimStatus;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/simstatus/SimStatus;)V
    .locals 0

    .line 990
    iput-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus$SimStatusDialogTelephonyCallback;->this$0:Lcom/android/settings/deviceinfo/simstatus/SimStatus;

    invoke-direct {p0}, Landroid/telephony/TelephonyCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataConnectionStateChanged(II)V
    .locals 0

    .line 997
    iget-object p2, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus$SimStatusDialogTelephonyCallback;->this$0:Lcom/android/settings/deviceinfo/simstatus/SimStatus;

    invoke-static {p2, p1}, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->access$1200(Lcom/android/settings/deviceinfo/simstatus/SimStatus;I)V

    .line 998
    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus$SimStatusDialogTelephonyCallback;->this$0:Lcom/android/settings/deviceinfo/simstatus/SimStatus;

    invoke-static {p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->access$1300(Lcom/android/settings/deviceinfo/simstatus/SimStatus;)V

    return-void
.end method

.method public onDisplayInfoChanged(Landroid/telephony/TelephonyDisplayInfo;)V
    .locals 1

    .line 1022
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus$SimStatusDialogTelephonyCallback;->this$0:Lcom/android/settings/deviceinfo/simstatus/SimStatus;

    invoke-static {v0, p1}, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->access$1902(Lcom/android/settings/deviceinfo/simstatus/SimStatus;Landroid/telephony/TelephonyDisplayInfo;)Landroid/telephony/TelephonyDisplayInfo;

    .line 1023
    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus$SimStatusDialogTelephonyCallback;->this$0:Lcom/android/settings/deviceinfo/simstatus/SimStatus;

    invoke-static {p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->access$1300(Lcom/android/settings/deviceinfo/simstatus/SimStatus;)V

    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 2

    .line 1008
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus$SimStatusDialogTelephonyCallback;->this$0:Lcom/android/settings/deviceinfo/simstatus/SimStatus;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->access$1500(Lcom/android/settings/deviceinfo/simstatus/SimStatus;)V

    .line 1009
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus$SimStatusDialogTelephonyCallback;->this$0:Lcom/android/settings/deviceinfo/simstatus/SimStatus;

    invoke-static {v0, p1}, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->access$1600(Lcom/android/settings/deviceinfo/simstatus/SimStatus;Landroid/telephony/ServiceState;)V

    .line 1010
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus$SimStatusDialogTelephonyCallback;->this$0:Lcom/android/settings/deviceinfo/simstatus/SimStatus;

    invoke-static {v0, p1}, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->access$1700(Lcom/android/settings/deviceinfo/simstatus/SimStatus;Landroid/telephony/ServiceState;)V

    .line 1012
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceStateChanged() mTelephonyManager.getSignalStrength() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus$SimStatusDialogTelephonyCallback;->this$0:Lcom/android/settings/deviceinfo/simstatus/SimStatus;

    invoke-static {v1}, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->access$400(Lcom/android/settings/deviceinfo/simstatus/SimStatus;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SimStatus"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1013
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus$SimStatusDialogTelephonyCallback;->this$0:Lcom/android/settings/deviceinfo/simstatus/SimStatus;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->access$400(Lcom/android/settings/deviceinfo/simstatus/SimStatus;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1014
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus$SimStatusDialogTelephonyCallback;->this$0:Lcom/android/settings/deviceinfo/simstatus/SimStatus;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->access$400(Lcom/android/settings/deviceinfo/simstatus/SimStatus;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->access$1400(Lcom/android/settings/deviceinfo/simstatus/SimStatus;Landroid/telephony/SignalStrength;)V

    .line 1017
    :cond_0
    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus$SimStatusDialogTelephonyCallback;->this$0:Lcom/android/settings/deviceinfo/simstatus/SimStatus;

    invoke-static {p0, p1}, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->access$1802(Lcom/android/settings/deviceinfo/simstatus/SimStatus;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;

    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 0

    .line 1003
    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus$SimStatusDialogTelephonyCallback;->this$0:Lcom/android/settings/deviceinfo/simstatus/SimStatus;

    invoke-static {p0, p1}, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->access$1400(Lcom/android/settings/deviceinfo/simstatus/SimStatus;Landroid/telephony/SignalStrength;)V

    return-void
.end method
