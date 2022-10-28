.class public Lcom/android/settings/bluetooth/BluetoothPairingDialog;
.super Landroidx/fragment/app/FragmentActivity;
.source "BluetoothPairingDialog.java"


# instance fields
.field private mBluetoothPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mReceiverRegistered:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mReceiverRegistered:Z

    .line 47
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothPairingDialog$1;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog$1;-><init>(Lcom/android/settings/bluetooth/BluetoothPairingDialog;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/bluetooth/BluetoothPairingDialog;)Lcom/android/settings/bluetooth/BluetoothPairingController;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mBluetoothPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    return-object p0
.end method


# virtual methods
.method dismiss()V
    .locals 1

    .line 125
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 69
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, 0x80000

    invoke-virtual {p1, v0}, Landroid/view/Window;->addSystemFlags(I)V

    .line 72
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "android.bluetooth.device.extra.DEVICE"

    .line 73
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    if-nez v1, :cond_0

    .line 75
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 78
    :cond_0
    new-instance v1, Lcom/android/settings/bluetooth/BluetoothPairingController;

    invoke-direct {v1, p1, p0}, Lcom/android/settings/bluetooth/BluetoothPairingController;-><init>(Landroid/content/Intent;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mBluetoothPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    .line 83
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string v1, "bluetooth.pairing.fragment"

    .line 84
    invoke-virtual {p1, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;

    if-eqz p1, :cond_2

    .line 86
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->isPairingControllerSet()Z

    move-result v2

    if-nez v2, :cond_1

    .line 87
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->isPairingDialogActivitySet()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 88
    :cond_1
    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    const/4 p1, 0x0

    :cond_2
    const/4 v2, 0x1

    if-nez p1, :cond_3

    const/4 p1, 0x0

    .line 94
    new-instance v3, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;

    invoke-direct {v3}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;-><init>()V

    move-object v5, v3

    move v3, p1

    move-object p1, v5

    goto :goto_0

    :cond_3
    move v3, v2

    .line 96
    :goto_0
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mBluetoothPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    invoke-virtual {p1, v4}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->setPairingController(Lcom/android/settings/bluetooth/BluetoothPairingController;)V

    .line 97
    invoke-virtual {p1, p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->setPairingDialogActivity(Lcom/android/settings/bluetooth/BluetoothPairingDialog;)V

    if-nez v3, :cond_4

    .line 100
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v3

    invoke-virtual {p1, v3, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 106
    :cond_4
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "android.bluetooth.device.action.PAIRING_CANCEL"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 107
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 108
    iput-boolean v2, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mReceiverRegistered:Z

    .line 111
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Window;->addFlags(I)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 116
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onDestroy()V

    .line 117
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mReceiverRegistered:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 118
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mReceiverRegistered:Z

    .line 119
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method
