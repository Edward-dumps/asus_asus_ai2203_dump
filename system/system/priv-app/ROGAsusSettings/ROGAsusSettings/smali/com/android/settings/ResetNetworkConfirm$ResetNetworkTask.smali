.class Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask;
.super Landroid/os/AsyncTask;
.source "ResetNetworkConfirm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ResetNetworkConfirm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResetNetworkTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mPackageName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/settings/ResetNetworkConfirm;


# direct methods
.method constructor <init>(Lcom/android/settings/ResetNetworkConfirm;Landroid/content/Context;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 101
    iput-object p2, p0, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask;->mContext:Landroid/content/Context;

    .line 102
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask;->mPackageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 4

    .line 108
    iget-object p1, p0, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask;->mContext:Landroid/content/Context;

    const-string v0, "connectivity"

    .line 109
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    if-eqz p1, :cond_0

    .line 111
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->factoryReset()V

    .line 114
    :cond_0
    iget-object p1, p0, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask;->mContext:Landroid/content/Context;

    const-class v0, Landroid/net/VpnManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/VpnManager;

    if-eqz p1, :cond_1

    .line 116
    invoke-virtual {p1}, Landroid/net/VpnManager;->factoryReset()V

    .line 119
    :cond_1
    iget-object p1, p0, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "wifi"

    .line 120
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 122
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->factoryReset()V

    .line 123
    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 124
    invoke-virtual {p1, v1}, Landroid/net/wifi/WifiManager;->setAutoWakeupEnabled(Z)V

    .line 126
    :cond_2
    iget-object p1, p0, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v2, "wifi_networks_available_notification_on"

    invoke-static {p1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 129
    iget-object p1, p0, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    iget-object v2, p0, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v2}, Lcom/android/settings/ResetNetworkConfirm;->p2pFactoryReset(Landroid/content/Context;)V

    .line 131
    iget-object p1, p0, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    iget-boolean p1, p1, Lcom/android/settings/ResetNetworkConfirm;->mEraseEsim:Z

    if-eqz p1, :cond_3

    .line 132
    iget-object p1, p0, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask;->mPackageName:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/os/RecoverySystem;->wipeEuiccData(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 135
    :cond_3
    iget-object p1, p0, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask;->mContext:Landroid/content/Context;

    const-class v2, Landroid/telephony/TelephonyManager;

    .line 136
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    .line 137
    invoke-static {v2}, Lcom/android/settings/ResetNetworkConfirm;->access$000(Lcom/android/settings/ResetNetworkConfirm;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 140
    :try_start_0
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->resetSettings()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 142
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 146
    :cond_4
    :goto_0
    iget-object v2, p0, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask;->mContext:Landroid/content/Context;

    const-string v3, "netpolicy"

    .line 147
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkPolicyManager;

    if-eqz v2, :cond_5

    .line 149
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object p1

    .line 151
    :try_start_1
    invoke-virtual {v2, p1}, Landroid/net/NetworkPolicyManager;->factoryReset(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 153
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 157
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask;->mContext:Landroid/content/Context;

    const-string v2, "bluetooth"

    .line 158
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothManager;

    if-eqz p1, :cond_6

    .line 160
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 162
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->factoryReset()Z

    .line 163
    iget-object p1, p0, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    .line 164
    invoke-static {p1, v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 167
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object p1

    .line 168
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->clearAllDevices()V

    .line 174
    :cond_6
    iget-object p1, p0, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lasus/net/vicewifi/WifiViceManager;->getInstance(Landroid/content/Context;)Lasus/net/vicewifi/WifiViceManager;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 176
    invoke-virtual {p1}, Lasus/net/vicewifi/WifiViceManager;->factoryReset()V

    .line 178
    :cond_7
    iget-object p1, p0, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask;->mContext:Landroid/content/Context;

    .line 179
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v2, "dual_wifi_enabled_settings"

    .line 178
    invoke-static {p1, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 180
    iget-object p1, p0, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask;->mContext:Landroid/content/Context;

    .line 181
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v2, "dual_wifi_enabled"

    .line 180
    invoke-static {p1, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 184
    iget-object p1, p0, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v2, "slm_enabled"

    invoke-static {p1, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 186
    const-class p1, Lcom/android/settings/ResetNetworkConfirm;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reset network for subId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    invoke-static {v2}, Lcom/android/settings/ResetNetworkConfirm;->access$000(Lcom/android/settings/ResetNetworkConfirm;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-object p1, p0, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    iget-object p0, p0, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask;->mContext:Landroid/content/Context;

    invoke-static {p1, p0}, Lcom/android/settings/ResetNetworkConfirm;->access$100(Lcom/android/settings/ResetNetworkConfirm;Landroid/content/Context;)V

    .line 188
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "network factoryReset complete. succeeded: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ResetNetworkTask"

    .line 188
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 94
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2

    .line 195
    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    invoke-static {v0}, Lcom/android/settings/ResetNetworkConfirm;->access$200(Lcom/android/settings/ResetNetworkConfirm;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 196
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 197
    iget-object p0, p0, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->reset_network_complete_toast:I

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 198
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 200
    :cond_0
    iget-object p1, p0, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object p0, p0, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget p0, Lcom/android/settings/R$string;->reset_esim_error_title:I

    .line 201
    invoke-virtual {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->reset_esim_error_msg:I

    .line 202
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const v0, 0x104000a

    const/4 v1, 0x0

    .line 203
    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 204
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    .line 200
    invoke-static {p1, p0}, Lcom/android/settings/ResetNetworkConfirm;->access$302(Lcom/android/settings/ResetNetworkConfirm;Landroidx/appcompat/app/AlertDialog;)Landroidx/appcompat/app/AlertDialog;

    :goto_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 94
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
