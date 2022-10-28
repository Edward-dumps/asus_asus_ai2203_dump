.class Lcom/android/settings/network/MobileNetworkSummaryController$PhoneTelephonyCallback;
.super Landroid/telephony/TelephonyCallback;
.source "MobileNetworkSummaryController.java"

# interfaces
.implements Landroid/telephony/TelephonyCallback$CallStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/MobileNetworkSummaryController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhoneTelephonyCallback"
.end annotation


# instance fields
.field slotId:I

.field final synthetic this$0:Lcom/android/settings/network/MobileNetworkSummaryController;


# direct methods
.method public constructor <init>(Lcom/android/settings/network/MobileNetworkSummaryController;I)V
    .locals 0

    .line 313
    iput-object p1, p0, Lcom/android/settings/network/MobileNetworkSummaryController$PhoneTelephonyCallback;->this$0:Lcom/android/settings/network/MobileNetworkSummaryController;

    invoke-direct {p0}, Landroid/telephony/TelephonyCallback;-><init>()V

    .line 314
    iput p2, p0, Lcom/android/settings/network/MobileNetworkSummaryController$PhoneTelephonyCallback;->slotId:I

    return-void
.end method


# virtual methods
.method public onCallStateChanged(I)V
    .locals 2

    .line 319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCallStateChanged.onCallStateChanged: slotId  = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settings/network/MobileNetworkSummaryController$PhoneTelephonyCallback;->slotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ,state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MobileNetSummaryCtlr"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkSummaryController$PhoneTelephonyCallback;->this$0:Lcom/android/settings/network/MobileNetworkSummaryController;

    invoke-static {v0}, Lcom/android/settings/network/MobileNetworkSummaryController;->access$000(Lcom/android/settings/network/MobileNetworkSummaryController;)[I

    move-result-object v0

    iget v1, p0, Lcom/android/settings/network/MobileNetworkSummaryController$PhoneTelephonyCallback;->slotId:I

    aput p1, v0, v1

    .line 321
    iget-object p0, p0, Lcom/android/settings/network/MobileNetworkSummaryController$PhoneTelephonyCallback;->this$0:Lcom/android/settings/network/MobileNetworkSummaryController;

    invoke-static {p0}, Lcom/android/settings/network/MobileNetworkSummaryController;->access$100(Lcom/android/settings/network/MobileNetworkSummaryController;)V

    return-void
.end method
