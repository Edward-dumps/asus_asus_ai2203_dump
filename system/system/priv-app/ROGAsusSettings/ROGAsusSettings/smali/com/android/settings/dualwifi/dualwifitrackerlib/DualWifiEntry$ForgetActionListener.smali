.class public Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ForgetActionListener;
.super Ljava/lang/Object;
.source "DualWifiEntry.java"

# interfaces
.implements Lasus/net/vicewifi/WifiViceManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ForgetActionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;


# direct methods
.method public static synthetic $r8$lambda$UmboT2pp1pr2MfZUOrN--gI5Og8(Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ForgetActionListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ForgetActionListener;->lambda$onFailure$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$brpajnTQ4W_eHxfB2Py2b-eU-SY(Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ForgetActionListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ForgetActionListener;->lambda$onSuccess$0()V

    return-void
.end method

.method protected constructor <init>(Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;)V
    .locals 0

    .line 999
    iput-object p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ForgetActionListener;->this$0:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onFailure$1()V
    .locals 1

    .line 1013
    iget-object p0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ForgetActionListener;->this$0:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    iget-object p0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mForgetCallback:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ForgetCallback;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 1015
    invoke-interface {p0, v0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ForgetCallback;->onForgetResult(I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onSuccess$0()V
    .locals 1

    .line 1003
    iget-object p0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ForgetActionListener;->this$0:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    iget-object p0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mForgetCallback:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ForgetCallback;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 1005
    invoke-interface {p0, v0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ForgetCallback;->onForgetResult(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 1

    .line 1012
    iget-object p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ForgetActionListener;->this$0:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    iget-object p1, p1, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mCallbackHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ForgetActionListener$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ForgetActionListener$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ForgetActionListener;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSuccess()V
    .locals 2

    .line 1002
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ForgetActionListener;->this$0:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    iget-object v0, v0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mCallbackHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ForgetActionListener$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ForgetActionListener$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ForgetActionListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
