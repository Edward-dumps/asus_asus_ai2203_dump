.class Lcom/android/settings/network/EthernetPreferenceController$2;
.super Landroid/content/BroadcastReceiver;
.source "EthernetPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/network/EthernetPreferenceController;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/network/EthernetPreferenceController;


# direct methods
.method public static synthetic $r8$lambda$H7Xvjo68HVRQqm8r5vp1CvIIxAs(Lcom/android/settings/network/EthernetPreferenceController$2;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/network/EthernetPreferenceController$2;->lambda$onReceive$0()V

    return-void
.end method

.method constructor <init>(Lcom/android/settings/network/EthernetPreferenceController;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/android/settings/network/EthernetPreferenceController$2;->this$0:Lcom/android/settings/network/EthernetPreferenceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private synthetic lambda$onReceive$0()V
    .locals 1

    .line 84
    iget-object p0, p0, Lcom/android/settings/network/EthernetPreferenceController$2;->this$0:Lcom/android/settings/network/EthernetPreferenceController;

    invoke-static {p0}, Lcom/android/settings/network/EthernetPreferenceController;->access$000(Lcom/android/settings/network/EthernetPreferenceController;)Landroidx/preference/Preference;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/network/EthernetPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 82
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ACTION_USB_STATE, mUsbConnected = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "connected"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "EthernetPreferenceController"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object p1, p0, Lcom/android/settings/network/EthernetPreferenceController$2;->this$0:Lcom/android/settings/network/EthernetPreferenceController;

    invoke-static {p1}, Lcom/android/settings/network/EthernetPreferenceController;->access$000(Lcom/android/settings/network/EthernetPreferenceController;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 84
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Lcom/android/settings/network/EthernetPreferenceController$2$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/settings/network/EthernetPreferenceController$2$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/network/EthernetPreferenceController$2;)V

    const-wide/16 v0, 0x7d0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
