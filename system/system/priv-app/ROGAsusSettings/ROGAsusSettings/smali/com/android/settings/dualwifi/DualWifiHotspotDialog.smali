.class public Lcom/android/settings/dualwifi/DualWifiHotspotDialog;
.super Landroidx/appcompat/app/AlertDialog;
.source "DualWifiHotspotDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/dualwifi/DualWifiHotspotDialog$DualWifiHotspotDialogListener;
    }
.end annotation


# static fields
.field private static final URI_STATUS:Landroid/net/Uri;


# instance fields
.field private final mContentObserver:Landroid/database/ContentObserver;

.field private final mContext:Landroid/content/Context;

.field private final mListener:Lcom/android/settings/dualwifi/DualWifiHotspotDialog$DualWifiHotspotDialogListener;

.field private mUseDualWifi:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.asus.focusapplistener.game.GameAppProvider/gameAppMap"

    .line 29
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/dualwifi/DualWifiHotspotDialog;->URI_STATUS:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/dualwifi/DualWifiHotspotDialog$DualWifiHotspotDialogListener;)V
    .locals 2

    .line 45
    invoke-direct {p0, p1}, Landroidx/appcompat/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 96
    new-instance v0, Lcom/android/settings/dualwifi/DualWifiHotspotDialog$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/dualwifi/DualWifiHotspotDialog$2;-><init>(Lcom/android/settings/dualwifi/DualWifiHotspotDialog;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/dualwifi/DualWifiHotspotDialog;->mContentObserver:Landroid/database/ContentObserver;

    .line 46
    iput-object p1, p0, Lcom/android/settings/dualwifi/DualWifiHotspotDialog;->mContext:Landroid/content/Context;

    .line 47
    iput-object p2, p0, Lcom/android/settings/dualwifi/DualWifiHotspotDialog;->mListener:Lcom/android/settings/dualwifi/DualWifiHotspotDialog$DualWifiHotspotDialogListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/dualwifi/DualWifiHotspotDialog;)Z
    .locals 0

    .line 21
    iget-boolean p0, p0, Lcom/android/settings/dualwifi/DualWifiHotspotDialog;->mUseDualWifi:Z

    return p0
.end method

.method static synthetic access$100(Lcom/android/settings/dualwifi/DualWifiHotspotDialog;)Lcom/android/settings/dualwifi/DualWifiHotspotDialog$DualWifiHotspotDialogListener;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/android/settings/dualwifi/DualWifiHotspotDialog;->mListener:Lcom/android/settings/dualwifi/DualWifiHotspotDialog$DualWifiHotspotDialogListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/dualwifi/DualWifiHotspotDialog;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/android/settings/dualwifi/DualWifiHotspotDialog;->checkActive()V

    return-void
.end method

.method static synthetic access$300()Landroid/net/Uri;
    .locals 1

    .line 21
    sget-object v0, Lcom/android/settings/dualwifi/DualWifiHotspotDialog;->URI_STATUS:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/dualwifi/DualWifiHotspotDialog;)Landroid/content/Context;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/android/settings/dualwifi/DualWifiHotspotDialog;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private checkActive()V
    .locals 1

    .line 145
    new-instance v0, Lcom/android/settings/dualwifi/DualWifiHotspotDialog$1QueryTask;

    invoke-direct {v0, p0}, Lcom/android/settings/dualwifi/DualWifiHotspotDialog$1QueryTask;-><init>(Lcom/android/settings/dualwifi/DualWifiHotspotDialog;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    .line 146
    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, -0x2

    if-eq p2, p1, :cond_1

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 82
    :cond_0
    iget-object p1, p0, Lcom/android/settings/dualwifi/DualWifiHotspotDialog;->mListener:Lcom/android/settings/dualwifi/DualWifiHotspotDialog$DualWifiHotspotDialogListener;

    invoke-interface {p1}, Lcom/android/settings/dualwifi/DualWifiHotspotDialog$DualWifiHotspotDialogListener;->onTurnOffHotspot()V

    const/4 p1, 0x1

    .line 83
    iput-boolean p1, p0, Lcom/android/settings/dualwifi/DualWifiHotspotDialog;->mUseDualWifi:Z

    .line 85
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    goto :goto_0

    .line 90
    :cond_1
    iget-object p1, p0, Lcom/android/settings/dualwifi/DualWifiHotspotDialog;->mListener:Lcom/android/settings/dualwifi/DualWifiHotspotDialog$DualWifiHotspotDialogListener;

    invoke-interface {p1}, Lcom/android/settings/dualwifi/DualWifiHotspotDialog$DualWifiHotspotDialogListener;->onCancel()V

    .line 91
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiHotspotDialog;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->dual_wifi_hotspot_dialog_title_for_WW:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 53
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiHotspotDialog;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->dual_wifi_hotspot_dialog_message_for_WW:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 54
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiHotspotDialog;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->dual_wifi_hotspot_dialog_positive_btn_for_WW:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0, p0}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 55
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiHotspotDialog;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->dual_wifi_hotspot_dialog_negative_btn_for_WW:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x2

    invoke-virtual {p0, v1, v0, p0}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 56
    invoke-super {p0, p1}, Landroidx/appcompat/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 58
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x7d3

    invoke-virtual {p1, v0}, Landroid/view/Window;->setType(I)V

    const/4 p1, 0x0

    .line 59
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 60
    new-instance p1, Lcom/android/settings/dualwifi/DualWifiHotspotDialog$1;

    invoke-direct {p1, p0}, Lcom/android/settings/dualwifi/DualWifiHotspotDialog$1;-><init>(Lcom/android/settings/dualwifi/DualWifiHotspotDialog;)V

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 70
    invoke-static {}, Lcom/android/settingslib/widget/ThemeUtils;->isDownloadTheme()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 71
    iget-object p1, p0, Lcom/android/settings/dualwifi/DualWifiHotspotDialog;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/android/settings/theme/ThemeUtils;->tintDialog(Landroid/app/Dialog;Landroid/content/Context;)V

    :cond_0
    return-void
.end method
