.class Lcom/android/settings/connecteddevice/CodecPreferenceController$1;
.super Ljava/lang/Object;
.source "CodecPreferenceController.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


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
.method constructor <init>(Lcom/android/settings/connecteddevice/CodecPreferenceController;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/android/settings/connecteddevice/CodecPreferenceController$1;->this$0:Lcom/android/settings/connecteddevice/CodecPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const-string p1, "CodecPreferenceController"

    const-string v0, "onServiceConnected"

    .line 62
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget-object p1, p0, Lcom/android/settings/connecteddevice/CodecPreferenceController$1;->this$0:Lcom/android/settings/connecteddevice/CodecPreferenceController;

    check-cast p2, Landroid/bluetooth/BluetoothA2dp;

    invoke-static {p1, p2}, Lcom/android/settings/connecteddevice/CodecPreferenceController;->access$002(Lcom/android/settings/connecteddevice/CodecPreferenceController;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;

    .line 64
    iget-object p0, p0, Lcom/android/settings/connecteddevice/CodecPreferenceController$1;->this$0:Lcom/android/settings/connecteddevice/CodecPreferenceController;

    invoke-static {p0}, Lcom/android/settings/connecteddevice/CodecPreferenceController;->access$100(Lcom/android/settings/connecteddevice/CodecPreferenceController;)V

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 2

    const-string v0, "CodecPreferenceController"

    const-string v1, "onServiceDisconnected"

    .line 70
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 72
    iget-object p1, p0, Lcom/android/settings/connecteddevice/CodecPreferenceController$1;->this$0:Lcom/android/settings/connecteddevice/CodecPreferenceController;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/settings/connecteddevice/CodecPreferenceController;->access$200(Lcom/android/settings/connecteddevice/CodecPreferenceController;Landroid/bluetooth/BluetoothAdapter;)V

    .line 73
    iget-object p0, p0, Lcom/android/settings/connecteddevice/CodecPreferenceController$1;->this$0:Lcom/android/settings/connecteddevice/CodecPreferenceController;

    invoke-static {p0}, Lcom/android/settings/connecteddevice/CodecPreferenceController;->access$100(Lcom/android/settings/connecteddevice/CodecPreferenceController;)V

    :cond_0
    return-void
.end method
