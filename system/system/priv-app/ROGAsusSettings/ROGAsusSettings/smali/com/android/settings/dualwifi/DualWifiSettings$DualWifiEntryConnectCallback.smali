.class Lcom/android/settings/dualwifi/DualWifiSettings$DualWifiEntryConnectCallback;
.super Ljava/lang/Object;
.source "DualWifiSettings.java"

# interfaces
.implements Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ConnectCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dualwifi/DualWifiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DualWifiEntryConnectCallback"
.end annotation


# instance fields
.field final mConnectDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

.field final mEditIfNoConfig:Z

.field final mFullScreenEdit:Z

.field final synthetic this$0:Lcom/android/settings/dualwifi/DualWifiSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/dualwifi/DualWifiSettings;Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;ZZ)V
    .locals 0

    .line 1067
    iput-object p1, p0, Lcom/android/settings/dualwifi/DualWifiSettings$DualWifiEntryConnectCallback;->this$0:Lcom/android/settings/dualwifi/DualWifiSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1068
    iput-object p2, p0, Lcom/android/settings/dualwifi/DualWifiSettings$DualWifiEntryConnectCallback;->mConnectDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    .line 1069
    iput-boolean p3, p0, Lcom/android/settings/dualwifi/DualWifiSettings$DualWifiEntryConnectCallback;->mEditIfNoConfig:Z

    .line 1070
    iput-boolean p4, p0, Lcom/android/settings/dualwifi/DualWifiSettings$DualWifiEntryConnectCallback;->mFullScreenEdit:Z

    return-void
.end method


# virtual methods
.method public onConnectResult(I)V
    .locals 1

    .line 1075
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiSettings$DualWifiEntryConnectCallback;->this$0:Lcom/android/settings/dualwifi/DualWifiSettings;

    invoke-static {v0}, Lcom/android/settings/dualwifi/DualWifiSettings;->access$400(Lcom/android/settings/dualwifi/DualWifiSettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 1080
    iget-object p0, p0, Lcom/android/settings/dualwifi/DualWifiSettings$DualWifiEntryConnectCallback;->this$0:Lcom/android/settings/dualwifi/DualWifiSettings;

    invoke-static {p0, v0}, Lcom/android/settings/dualwifi/DualWifiSettings;->access$202(Lcom/android/settings/dualwifi/DualWifiSettings;Z)Z

    goto :goto_0

    :cond_1
    if-ne p1, v0, :cond_3

    .line 1082
    iget-boolean p1, p0, Lcom/android/settings/dualwifi/DualWifiSettings$DualWifiEntryConnectCallback;->mEditIfNoConfig:Z

    if-eqz p1, :cond_4

    .line 1084
    iget-boolean p1, p0, Lcom/android/settings/dualwifi/DualWifiSettings$DualWifiEntryConnectCallback;->mFullScreenEdit:Z

    if-eqz p1, :cond_2

    .line 1085
    iget-object p1, p0, Lcom/android/settings/dualwifi/DualWifiSettings$DualWifiEntryConnectCallback;->this$0:Lcom/android/settings/dualwifi/DualWifiSettings;

    iget-object p0, p0, Lcom/android/settings/dualwifi/DualWifiSettings$DualWifiEntryConnectCallback;->mConnectDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    invoke-static {p1, p0}, Lcom/android/settings/dualwifi/DualWifiSettings;->access$500(Lcom/android/settings/dualwifi/DualWifiSettings;Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;)V

    goto :goto_0

    .line 1087
    :cond_2
    iget-object p1, p0, Lcom/android/settings/dualwifi/DualWifiSettings$DualWifiEntryConnectCallback;->this$0:Lcom/android/settings/dualwifi/DualWifiSettings;

    iget-object p0, p0, Lcom/android/settings/dualwifi/DualWifiSettings$DualWifiEntryConnectCallback;->mConnectDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    invoke-static {p1, p0, v0}, Lcom/android/settings/dualwifi/DualWifiSettings;->access$600(Lcom/android/settings/dualwifi/DualWifiSettings;Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;I)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    .line 1091
    iget-object p0, p0, Lcom/android/settings/dualwifi/DualWifiSettings$DualWifiEntryConnectCallback;->this$0:Lcom/android/settings/dualwifi/DualWifiSettings;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->wifi_failed_connect_message:I

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 1092
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_4
    :goto_0
    return-void
.end method
