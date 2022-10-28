.class Lcom/android/settings/TetherSettings$TetherChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TetherSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/TetherSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TetherChangeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/TetherSettings;


# direct methods
.method public static synthetic $r8$lambda$603bXu6_9l9SH4_zG7CrRU7BM9I(Lcom/android/settings/TetherSettings$TetherChangeReceiver;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->lambda$onReceive$0()V

    return-void
.end method

.method private constructor <init>(Lcom/android/settings/TetherSettings;)V
    .locals 0

    .line 323
    iput-object p1, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/TetherSettings;Lcom/android/settings/TetherSettings$1;)V
    .locals 0

    .line 323
    invoke-direct {p0, p1}, Lcom/android/settings/TetherSettings$TetherChangeReceiver;-><init>(Lcom/android/settings/TetherSettings;)V

    return-void
.end method

.method private synthetic lambda$onReceive$0()V
    .locals 0

    .line 352
    iget-object p0, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {p0}, Lcom/android/settings/TetherSettings;->access$400(Lcom/android/settings/TetherSettings;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 326
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 327
    invoke-static {}, Lcom/android/settings/TetherSettings;->access$100()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 328
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive() action : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TetheringSettings"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v1, "android.net.conn.TETHER_STATE_CHANGED"

    .line 332
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p1, "availableArray"

    .line 334
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    const-string v0, "tetherArray"

    .line 336
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p2

    .line 338
    iget-object v0, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v0}, Lcom/android/settings/TetherSettings;->access$200(Lcom/android/settings/TetherSettings;)V

    .line 339
    iget-object p0, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    .line 340
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    .line 339
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/TetherSettings;->updateEthernetState([Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_1
    const-string v1, "android.intent.action.MEDIA_SHARED"

    .line 341
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 342
    iget-object p1, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {p1, v2}, Lcom/android/settings/TetherSettings;->access$302(Lcom/android/settings/TetherSettings;Z)Z

    .line 343
    iget-object p1, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {p1}, Lcom/android/settings/TetherSettings;->access$400(Lcom/android/settings/TetherSettings;)V

    .line 344
    iget-object p0, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {p0}, Lcom/android/settings/TetherSettings;->access$500(Lcom/android/settings/TetherSettings;)V

    goto/16 :goto_6

    :cond_2
    const-string v1, "android.intent.action.MEDIA_UNSHARED"

    .line 345
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    .line 346
    iget-object p1, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {p1, v3}, Lcom/android/settings/TetherSettings;->access$302(Lcom/android/settings/TetherSettings;Z)Z

    .line 347
    iget-object p1, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {p1}, Lcom/android/settings/TetherSettings;->access$400(Lcom/android/settings/TetherSettings;)V

    .line 348
    iget-object p0, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {p0}, Lcom/android/settings/TetherSettings;->access$500(Lcom/android/settings/TetherSettings;)V

    goto/16 :goto_6

    :cond_3
    const-string v1, "android.hardware.usb.action.USB_STATE"

    .line 349
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 350
    iget-object p1, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    const-string v0, "connected"

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    invoke-static {p1, p2}, Lcom/android/settings/TetherSettings;->access$602(Lcom/android/settings/TetherSettings;Z)Z

    .line 352
    iget-object p1, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {p1}, Lcom/android/settings/TetherSettings;->access$700(Lcom/android/settings/TetherSettings;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/android/settings/TetherSettings$TetherChangeReceiver$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/settings/TetherSettings$TetherChangeReceiver$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/TetherSettings$TetherChangeReceiver;)V

    const-wide/16 v0, 0xbb8

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 353
    iget-object p0, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {p0}, Lcom/android/settings/TetherSettings;->access$500(Lcom/android/settings/TetherSettings;)V

    goto/16 :goto_6

    :cond_4
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 354
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string p1, "android.bluetooth.adapter.extra.STATE"

    const/high16 v0, -0x80000000

    .line 356
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 357
    iget-object p2, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {p2}, Lcom/android/settings/TetherSettings;->access$800(Lcom/android/settings/TetherSettings;)Z

    move-result p2

    const/4 v1, 0x5

    const/16 v2, 0xc

    if-eqz p2, :cond_7

    if-eq p1, v0, :cond_6

    const/16 p2, 0xa

    if-eq p1, p2, :cond_6

    if-eq p1, v2, :cond_5

    goto :goto_0

    .line 360
    :cond_5
    iget-object p1, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    const/4 p2, 0x2

    invoke-static {p1, p2}, Lcom/android/settings/TetherSettings;->access$900(Lcom/android/settings/TetherSettings;I)V

    .line 361
    iget-object p1, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {p1, v3}, Lcom/android/settings/TetherSettings;->access$802(Lcom/android/settings/TetherSettings;Z)Z

    .line 362
    iget-object p1, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {p1}, Lcom/android/settings/TetherSettings;->access$1000(Lcom/android/settings/TetherSettings;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_9

    .line 363
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 365
    iget-object p2, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    .line 366
    invoke-static {v0}, Lcom/android/settings/TetherSettings;->access$1100(Lcom/android/settings/TetherSettings;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    .line 365
    invoke-virtual {p1, p2, v0, v1}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    goto :goto_0

    .line 373
    :cond_6
    iget-object p1, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {p1, v3}, Lcom/android/settings/TetherSettings;->access$802(Lcom/android/settings/TetherSettings;Z)Z

    goto :goto_0

    :cond_7
    if-eq p1, v2, :cond_8

    goto :goto_0

    .line 382
    :cond_8
    iget-object p1, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {p1}, Lcom/android/settings/TetherSettings;->access$1000(Lcom/android/settings/TetherSettings;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_9

    .line 383
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 385
    iget-object p2, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    .line 386
    invoke-static {v0}, Lcom/android/settings/TetherSettings;->access$1100(Lcom/android/settings/TetherSettings;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    .line 385
    invoke-virtual {p1, p2, v0, v1}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 393
    :cond_9
    :goto_0
    iget-object p0, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {p0}, Lcom/android/settings/TetherSettings;->access$400(Lcom/android/settings/TetherSettings;)V

    goto/16 :goto_6

    :cond_a
    const-string v1, "android.bluetooth.action.TETHERING_STATE_CHANGED"

    .line 394
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 395
    iget-object p0, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {p0}, Lcom/android/settings/TetherSettings;->access$400(Lcom/android/settings/TetherSettings;)V

    goto/16 :goto_6

    :cond_b
    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    .line 396
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const-string/jumbo v0, "wifi_state"

    .line 397
    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const/16 v0, 0xd

    if-ne p2, v0, :cond_10

    .line 399
    iget-object p2, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {p2}, Lcom/android/settings/TetherSettings;->access$1200(Lcom/android/settings/TetherSettings;)Landroid/net/wifi/WifiManager;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/wifi/WifiManager;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object p2

    .line 400
    iget-object v0, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-virtual {p2}, Landroid/net/wifi/SoftApConfiguration;->isClientControlByUserEnabled()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/TetherSettings;->access$1302(Lcom/android/settings/TetherSettings;Z)Z

    .line 401
    iget-object v0, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v0}, Lcom/android/settings/TetherSettings;->access$1300(Lcom/android/settings/TetherSettings;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 402
    iget-object v0, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v0}, Lcom/android/settings/TetherSettings;->access$1400(Lcom/android/settings/TetherSettings;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 403
    iget-object v0, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v0}, Lcom/android/settings/TetherSettings;->access$1500(Lcom/android/settings/TetherSettings;)Landroidx/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    .line 405
    :cond_c
    iget-object v0, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v0}, Lcom/android/settings/TetherSettings;->access$1600(Lcom/android/settings/TetherSettings;)Landroidx/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 409
    :cond_d
    :goto_1
    iget-object v0, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v0}, Lcom/android/settings/TetherSettings;->access$1700(Lcom/android/settings/TetherSettings;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 410
    iget-object v0, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v0}, Lcom/android/settings/TetherSettings;->access$1800(Lcom/android/settings/TetherSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 412
    iget-object p2, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    .line 413
    invoke-static {p2}, Lcom/android/settings/TetherSettings;->access$1200(Lcom/android/settings/TetherSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    .line 412
    invoke-static {p1, v1, v0}, Lcom/android/settings/wifi/dpp/WifiDppUtils;->getHotspotConfiguratorIntentOrNull(Landroid/content/Context;Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;)Landroid/content/Intent;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/settings/TetherSettings;->access$1902(Lcom/android/settings/TetherSettings;Landroid/content/Intent;)Landroid/content/Intent;

    goto :goto_2

    .line 415
    :cond_e
    iget-object v0, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    .line 416
    invoke-static {v0}, Lcom/android/settings/TetherSettings;->access$1200(Lcom/android/settings/TetherSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    .line 415
    invoke-static {p1, v1, p2}, Lcom/android/settings/wifi/dpp/WifiDppUtils;->getHotspotConfiguratorIntentOrNull(Landroid/content/Context;Landroid/net/wifi/WifiManager;Landroid/net/wifi/SoftApConfiguration;)Landroid/content/Intent;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/settings/TetherSettings;->access$1902(Lcom/android/settings/TetherSettings;Landroid/content/Intent;)Landroid/content/Intent;

    .line 418
    :goto_2
    iget-object p1, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {p1}, Lcom/android/settings/TetherSettings;->access$1700(Lcom/android/settings/TetherSettings;)Landroidx/preference/Preference;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {p2}, Lcom/android/settings/TetherSettings;->access$1900(Lcom/android/settings/TetherSettings;)Landroid/content/Intent;

    move-result-object p2

    if-eqz p2, :cond_f

    goto :goto_3

    :cond_f
    move v2, v3

    :goto_3
    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_4

    .line 421
    :cond_10
    iget-object p1, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {p1}, Lcom/android/settings/TetherSettings;->access$1700(Lcom/android/settings/TetherSettings;)Landroidx/preference/Preference;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 422
    iget-object p1, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/android/settings/TetherSettings;->access$2002(Lcom/android/settings/TetherSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 424
    :cond_11
    :goto_4
    iget-object p1, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {p1}, Lcom/android/settings/TetherSettings;->access$1400(Lcom/android/settings/TetherSettings;)Z

    move-result p2

    iget-object p0, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    if-eqz p2, :cond_12

    invoke-static {p0}, Lcom/android/settings/TetherSettings;->access$1500(Lcom/android/settings/TetherSettings;)Landroidx/preference/Preference;

    move-result-object p0

    goto :goto_5

    :cond_12
    invoke-static {p0}, Lcom/android/settings/TetherSettings;->access$1600(Lcom/android/settings/TetherSettings;)Landroidx/preference/Preference;

    move-result-object p0

    :goto_5
    invoke-static {p1, p0}, Lcom/android/settings/TetherSettings;->access$2100(Lcom/android/settings/TetherSettings;Landroidx/preference/Preference;)V

    :cond_13
    :goto_6
    return-void
.end method
