.class Lcom/android/settings/dualwifi/DualWifiSettings$DualWifiConnectActionListener;
.super Ljava/lang/Object;
.source "DualWifiSettings.java"

# interfaces
.implements Lasus/net/vicewifi/WifiViceManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dualwifi/DualWifiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DualWifiConnectActionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/dualwifi/DualWifiSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/dualwifi/DualWifiSettings;)V
    .locals 0

    .line 1036
    iput-object p1, p0, Lcom/android/settings/dualwifi/DualWifiSettings$DualWifiConnectActionListener;->this$0:Lcom/android/settings/dualwifi/DualWifiSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/dualwifi/DualWifiSettings;Lcom/android/settings/dualwifi/DualWifiSettings$1;)V
    .locals 0

    .line 1036
    invoke-direct {p0, p1}, Lcom/android/settings/dualwifi/DualWifiSettings$DualWifiConnectActionListener;-><init>(Lcom/android/settings/dualwifi/DualWifiSettings;)V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 1

    .line 1044
    iget-object p1, p0, Lcom/android/settings/dualwifi/DualWifiSettings$DualWifiConnectActionListener;->this$0:Lcom/android/settings/dualwifi/DualWifiSettings;

    invoke-static {p1}, Lcom/android/settings/dualwifi/DualWifiSettings;->access$300(Lcom/android/settings/dualwifi/DualWifiSettings;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 1047
    :cond_0
    iget-object p0, p0, Lcom/android/settings/dualwifi/DualWifiSettings$DualWifiConnectActionListener;->this$0:Lcom/android/settings/dualwifi/DualWifiSettings;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->wifi_failed_connect_message:I

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 1048
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onSuccess()V
    .locals 1

    .line 1039
    iget-object p0, p0, Lcom/android/settings/dualwifi/DualWifiSettings$DualWifiConnectActionListener;->this$0:Lcom/android/settings/dualwifi/DualWifiSettings;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/settings/dualwifi/DualWifiSettings;->access$202(Lcom/android/settings/dualwifi/DualWifiSettings;Z)Z

    return-void
.end method
