.class Lcom/android/settings/connecteddevice/CodecPreferenceController$2;
.super Landroid/content/BroadcastReceiver;
.source "CodecPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/connecteddevice/CodecPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/connecteddevice/CodecPreferenceController;


# direct methods
.method public static synthetic $r8$lambda$CBlVS4BbLLLgmLoXiom_56mTL_c(Lcom/android/settings/connecteddevice/CodecPreferenceController$2;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/connecteddevice/CodecPreferenceController$2;->lambda$onReceive$0()V

    return-void
.end method

.method constructor <init>(Lcom/android/settings/connecteddevice/CodecPreferenceController;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/android/settings/connecteddevice/CodecPreferenceController$2;->this$0:Lcom/android/settings/connecteddevice/CodecPreferenceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private synthetic lambda$onReceive$0()V
    .locals 1

    .line 93
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 95
    iget-object p0, p0, Lcom/android/settings/connecteddevice/CodecPreferenceController$2;->this$0:Lcom/android/settings/connecteddevice/CodecPreferenceController;

    invoke-static {p0, v0}, Lcom/android/settings/connecteddevice/CodecPreferenceController;->access$400(Lcom/android/settings/connecteddevice/CodecPreferenceController;Landroid/bluetooth/BluetoothAdapter;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 81
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    .line 82
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "android.bluetooth.profile.extra.STATE"

    const/4 v0, 0x0

    .line 83
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    .line 91
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 92
    new-instance p2, Lcom/android/settings/connecteddevice/CodecPreferenceController$2$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/settings/connecteddevice/CodecPreferenceController$2$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/connecteddevice/CodecPreferenceController$2;)V

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    const/4 p2, 0x3

    if-ne p1, p2, :cond_1

    .line 100
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 102
    iget-object p0, p0, Lcom/android/settings/connecteddevice/CodecPreferenceController$2;->this$0:Lcom/android/settings/connecteddevice/CodecPreferenceController;

    invoke-static {p0, p1}, Lcom/android/settings/connecteddevice/CodecPreferenceController;->access$200(Lcom/android/settings/connecteddevice/CodecPreferenceController;Landroid/bluetooth/BluetoothAdapter;)V

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    .line 105
    iget-object p0, p0, Lcom/android/settings/connecteddevice/CodecPreferenceController$2;->this$0:Lcom/android/settings/connecteddevice/CodecPreferenceController;

    invoke-static {p0, v0}, Lcom/android/settings/connecteddevice/CodecPreferenceController;->access$300(Lcom/android/settings/connecteddevice/CodecPreferenceController;Z)V

    :cond_2
    :goto_0
    return-void
.end method
