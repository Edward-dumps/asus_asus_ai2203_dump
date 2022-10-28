.class Lcom/android/settings/bluetooth/BluetoothCodecSwitchController$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothCodecSwitchController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/BluetoothCodecSwitchController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/BluetoothCodecSwitchController;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/BluetoothCodecSwitchController;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothCodecSwitchController$1;->this$0:Lcom/android/settings/bluetooth/BluetoothCodecSwitchController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .line 142
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "BluetoothCodecSwitchController"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, -0x1

    sparse-switch v0, :sswitch_data_0

    :goto_0
    move p1, v5

    goto :goto_1

    :sswitch_0
    const-string v0, "ACTION_SERVICE_START"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    goto :goto_1

    :sswitch_1
    const-string v0, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x3

    goto :goto_1

    :sswitch_2
    const-string v0, "ACTION_SERVICE_END"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move p1, v3

    goto :goto_1

    :sswitch_3
    const-string v0, "ACTION_SERVICE_CODEC_CHANGE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    move p1, v4

    goto :goto_1

    :sswitch_4
    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    move p1, v1

    :goto_1
    packed-switch p1, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    const-string p1, "android.bluetooth.profile.extra.STATE"

    .line 160
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 161
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "connectState:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p1, v3, :cond_5

    .line 162
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothCodecSwitchController$1;->this$0:Lcom/android/settings/bluetooth/BluetoothCodecSwitchController;

    iget-object p1, p1, Lcom/android/settings/bluetooth/BluetoothCodecSwitchController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz p1, :cond_5

    .line 163
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 164
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothCodecSwitchController$1;->this$0:Lcom/android/settings/bluetooth/BluetoothCodecSwitchController;

    invoke-static {p1}, Lcom/android/settings/bluetooth/BluetoothCodecSwitchController;->access$000(Lcom/android/settings/bluetooth/BluetoothCodecSwitchController;)Landroidx/preference/SwitchPreference;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 165
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothCodecSwitchController$1;->this$0:Lcom/android/settings/bluetooth/BluetoothCodecSwitchController;

    invoke-static {p0}, Lcom/android/settings/bluetooth/BluetoothCodecSwitchController;->access$000(Lcom/android/settings/bluetooth/BluetoothCodecSwitchController;)Landroidx/preference/SwitchPreference;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->updateState(Landroidx/preference/Preference;)V

    goto :goto_2

    .line 168
    :cond_5
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothCodecSwitchController$1;->this$0:Lcom/android/settings/bluetooth/BluetoothCodecSwitchController;

    invoke-static {p1}, Lcom/android/settings/bluetooth/BluetoothCodecSwitchController;->access$000(Lcom/android/settings/bluetooth/BluetoothCodecSwitchController;)Landroidx/preference/SwitchPreference;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 169
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothCodecSwitchController$1;->this$0:Lcom/android/settings/bluetooth/BluetoothCodecSwitchController;

    invoke-static {p0}, Lcom/android/settings/bluetooth/BluetoothCodecSwitchController;->access$000(Lcom/android/settings/bluetooth/BluetoothCodecSwitchController;)Landroidx/preference/SwitchPreference;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->updateState(Landroidx/preference/Preference;)V

    goto :goto_2

    .line 149
    :pswitch_1
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothCodecSwitchController$1;->this$0:Lcom/android/settings/bluetooth/BluetoothCodecSwitchController;

    invoke-static {p0}, Lcom/android/settings/bluetooth/BluetoothCodecSwitchController;->access$000(Lcom/android/settings/bluetooth/BluetoothCodecSwitchController;)Landroidx/preference/SwitchPreference;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->updateState(Landroidx/preference/Preference;)V

    goto :goto_2

    :pswitch_2
    const-string p1, "android.bluetooth.adapter.extra.STATE"

    .line 153
    invoke-virtual {p2, p1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/16 p2, 0xc

    if-eq p1, p2, :cond_6

    .line 154
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothCodecSwitchController$1;->this$0:Lcom/android/settings/bluetooth/BluetoothCodecSwitchController;

    invoke-static {p1}, Lcom/android/settings/bluetooth/BluetoothCodecSwitchController;->access$000(Lcom/android/settings/bluetooth/BluetoothCodecSwitchController;)Landroidx/preference/SwitchPreference;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 156
    :cond_6
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothCodecSwitchController$1;->this$0:Lcom/android/settings/bluetooth/BluetoothCodecSwitchController;

    invoke-static {p0}, Lcom/android/settings/bluetooth/BluetoothCodecSwitchController;->access$000(Lcom/android/settings/bluetooth/BluetoothCodecSwitchController;)Landroidx/preference/SwitchPreference;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->updateState(Landroidx/preference/Preference;)V

    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x5b36f014 -> :sswitch_4
        -0x4104dc14 -> :sswitch_3
        -0xf529478 -> :sswitch_2
        0x4a286686 -> :sswitch_1
        0x7bc8abcf -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
