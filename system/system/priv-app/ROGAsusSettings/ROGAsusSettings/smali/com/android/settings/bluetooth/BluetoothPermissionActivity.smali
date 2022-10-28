.class public Lcom/android/settings/bluetooth/BluetoothPermissionActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "BluetoothPermissionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mOkButton:Landroid/widget/Button;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mReceiverRegistered:Z

.field private mRequestType:I

.field private mView:Landroid/view/View;

.field private messageView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 47
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    const/4 v0, 0x0

    .line 57
    iput v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mRequestType:I

    .line 58
    new-instance v1, Lcom/android/settings/bluetooth/BluetoothPermissionActivity$1;

    invoke-direct {v1, p0}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity$1;-><init>(Lcom/android/settings/bluetooth/BluetoothPermissionActivity;)V

    iput-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 71
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mReceiverRegistered:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/bluetooth/BluetoothPermissionActivity;)I
    .locals 0

    .line 47
    iget p0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mRequestType:I

    return p0
.end method

.method static synthetic access$100(Lcom/android/settings/bluetooth/BluetoothPermissionActivity;)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/bluetooth/BluetoothPermissionActivity;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->dismissDialog()V

    return-void
.end method

.method private createConnectionDialogView()Landroid/view/View;
    .locals 5

    .line 162
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-static {p0, v0}, Lcom/android/settings/bluetooth/Utils;->createRemoteName(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v0

    .line 163
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/android/settings/R$layout;->bluetooth_access:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mView:Landroid/view/View;

    .line 164
    sget v2, Lcom/android/settings/R$id;->message:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->messageView:Landroid/widget/TextView;

    .line 165
    sget v2, Lcom/android/settings/R$string;->bluetooth_connect_access_dialog_content:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/app/AlertActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mView:Landroid/view/View;

    return-object p0
.end method

.method private createMapDialogView()Landroid/view/View;
    .locals 5

    .line 180
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-static {p0, v0}, Lcom/android/settings/bluetooth/Utils;->createRemoteName(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v0

    .line 181
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/android/settings/R$layout;->bluetooth_access:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mView:Landroid/view/View;

    .line 182
    sget v2, Lcom/android/settings/R$id;->message:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->messageView:Landroid/widget/TextView;

    .line 183
    sget v2, Lcom/android/settings/R$string;->bluetooth_message_access_dialog_content:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/app/AlertActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mView:Landroid/view/View;

    return-object p0
.end method

.method private createPhonebookDialogView()Landroid/view/View;
    .locals 5

    .line 171
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-static {p0, v0}, Lcom/android/settings/bluetooth/Utils;->createRemoteName(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v0

    .line 172
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/android/settings/R$layout;->bluetooth_access:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mView:Landroid/view/View;

    .line 173
    sget v2, Lcom/android/settings/R$id;->message:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->messageView:Landroid/widget/TextView;

    .line 174
    sget v2, Lcom/android/settings/R$string;->bluetooth_phonebook_access_dialog_content:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/app/AlertActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mView:Landroid/view/View;

    return-object p0
.end method

.method private createSapDialogView()Landroid/view/View;
    .locals 6

    .line 189
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-static {p0, v0}, Lcom/android/settings/bluetooth/Utils;->createRemoteName(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v0

    .line 190
    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v1}, Lcom/android/internal/app/AlertActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 191
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/android/settings/R$layout;->bluetooth_access:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mView:Landroid/view/View;

    .line 192
    sget v3, Lcom/android/settings/R$id;->message:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->messageView:Landroid/widget/TextView;

    .line 193
    sget v3, Lcom/android/settings/R$string;->bluetooth_sim_card_access_dialog_content:I

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    .line 194
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, v4, v1

    .line 193
    invoke-virtual {p0, v3, v4}, Lcom/android/internal/app/AlertActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mView:Landroid/view/View;

    return-object p0
.end method

.method private dismissDialog()V
    .locals 0

    .line 74
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->dismiss()V

    return-void
.end method

.method private onNegative()V
    .locals 2

    const-string v0, "BluetoothPermissionActivity"

    const-string v1, "onNegative"

    .line 205
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 206
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->sendReplyIntentToReceiver(ZZ)V

    return-void
.end method

.method private onPositive()V
    .locals 2

    const-string v0, "BluetoothPermissionActivity"

    const-string v1, "onPositive"

    .line 199
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 200
    invoke-virtual {p0, v0, v0}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->sendReplyIntentToReceiver(ZZ)V

    .line 201
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    return-void
.end method

.method private showDialog(Ljava/lang/String;I)V
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 120
    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 121
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showDialog() Request type: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mRequestType:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " this: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "BluetoothPermissionActivity"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    if-eq p2, p1, :cond_3

    const/4 v1, 0x2

    if-eq p2, v1, :cond_2

    const/4 v1, 0x3

    if-eq p2, v1, :cond_1

    const/4 v1, 0x4

    if-eq p2, v1, :cond_0

    goto :goto_0

    .line 134
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->createSapDialogView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    goto :goto_0

    .line 131
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->createMapDialogView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    goto :goto_0

    .line 128
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->createPhonebookDialogView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    goto :goto_0

    .line 125
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->createConnectionDialogView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    :goto_0
    if-ne p2, p1, :cond_4

    .line 139
    sget v1, Lcom/android/settings/R$string;->bluetooth_connect_access_dialog_positive:I

    goto :goto_1

    :cond_4
    sget v1, Lcom/android/settings/R$string;->allow:I

    .line 137
    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 140
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    if-ne p2, p1, :cond_5

    .line 143
    sget p1, Lcom/android/settings/R$string;->bluetooth_connect_access_dialog_negative:I

    goto :goto_2

    .line 144
    :cond_5
    sget p1, Lcom/android/settings/R$string;->request_manage_bluetooth_permission_dont_allow:I

    .line 141
    :goto_2
    invoke-virtual {p0, p1}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 145
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 146
    iget-object p1, p0, Lcom/android/internal/app/AlertActivity;->mAlert:Lcom/android/internal/app/AlertController;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mOkButton:Landroid/widget/Button;

    .line 147
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->setupAlert()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    const-string p0, "BluetoothPermissionActivity"

    const-string v0, "Back button pressed! ignoring"

    .line 153
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, -0x2

    if-eq p2, p1, :cond_1

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 230
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->onPositive()V

    goto :goto_0

    .line 234
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->onNegative()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 79
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 81
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, 0x80000

    invoke-virtual {p1, v0}, Landroid/view/Window;->addPrivateFlags(I)V

    .line 82
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 83
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.bluetooth.device.action.CONNECTION_ACCESS_REQUEST"

    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "BluetoothPermissionActivity"

    if-nez v0, :cond_0

    const-string p1, "Error: this activity may be started only with intent ACTION_CONNECTION_ACCESS_REQUEST"

    .line 85
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    return-void

    :cond_0
    const-string v0, "android.bluetooth.device.extra.DEVICE"

    .line 91
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const-string v0, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    const/4 v2, 0x2

    .line 92
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mRequestType:I

    .line 95
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCreate() Request type: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mRequestType:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget p1, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mRequestType:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 98
    sget p1, Lcom/android/settings/R$string;->bluetooth_connect_access_dialog_title:I

    invoke-virtual {p0, p1}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget v1, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mRequestType:I

    invoke-direct {p0, p1, v1}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->showDialog(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    if-ne p1, v2, :cond_2

    .line 100
    sget p1, Lcom/android/settings/R$string;->bluetooth_phonebook_access_dialog_title:I

    invoke-virtual {p0, p1}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget v1, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mRequestType:I

    invoke-direct {p0, p1, v1}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->showDialog(Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x3

    if-ne p1, v2, :cond_3

    .line 102
    sget p1, Lcom/android/settings/R$string;->bluetooth_message_access_dialog_title:I

    invoke-virtual {p0, p1}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget v1, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mRequestType:I

    invoke-direct {p0, p1, v1}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->showDialog(Ljava/lang/String;I)V

    goto :goto_0

    :cond_3
    const/4 v2, 0x4

    if-ne p1, v2, :cond_4

    .line 104
    sget p1, Lcom/android/settings/R$string;->bluetooth_sim_card_access_dialog_title:I

    invoke-virtual {p0, p1}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget v1, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mRequestType:I

    invoke-direct {p0, p1, v1}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->showDialog(Ljava/lang/String;I)V

    .line 111
    :goto_0
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.bluetooth.device.action.CONNECTION_ACCESS_CANCEL"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v1}, Lcom/android/internal/app/AlertActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 113
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mReceiverRegistered:Z

    return-void

    .line 107
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error: bad request type: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mRequestType:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 243
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    .line 244
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mReceiverRegistered:Z

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/internal/app/AlertActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 246
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mReceiverRegistered:Z

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method sendReplyIntentToReceiver(ZZ)V
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 211
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.device.action.CONNECTION_ACCESS_REPLY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 214
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendReplyIntentToReceiver() Request type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mRequestType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mReturnPackage"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BluetoothPermissionActivity"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    const-string v1, "android.bluetooth.device.extra.CONNECTION_ACCESS_RESULT"

    .line 218
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "android.bluetooth.device.extra.ALWAYS_ALLOWED"

    .line 221
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 222
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const-string p2, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 223
    iget p1, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mRequestType:I

    const-string p2, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "android.permission.BLUETOOTH_CONNECT"

    .line 224
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/app/AlertActivity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method
