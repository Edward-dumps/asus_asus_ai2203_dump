.class public Lcom/android/settings/dualwifi/DualWifiConnectListener;
.super Ljava/lang/Object;
.source "DualWifiConnectListener.java"

# interfaces
.implements Lasus/net/vicewifi/WifiViceManager$ActionListener;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/android/settings/dualwifi/DualWifiConnectListener;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 1

    .line 27
    iget-object p0, p0, Lcom/android/settings/dualwifi/DualWifiConnectListener;->mContext:Landroid/content/Context;

    if-eqz p0, :cond_0

    .line 28
    sget p1, Lcom/android/settings/R$string;->wifi_failed_connect_message:I

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 30
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public onSuccess()V
    .locals 0

    return-void
.end method
