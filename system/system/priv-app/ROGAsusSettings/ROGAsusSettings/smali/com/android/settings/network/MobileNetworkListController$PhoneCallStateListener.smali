.class Lcom/android/settings/network/MobileNetworkListController$PhoneCallStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "MobileNetworkListController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/MobileNetworkListController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhoneCallStateListener"
.end annotation


# instance fields
.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field final synthetic this$0:Lcom/android/settings/network/MobileNetworkListController;


# direct methods
.method constructor <init>(Lcom/android/settings/network/MobileNetworkListController;)V
    .locals 0

    .line 238
    iput-object p1, p0, Lcom/android/settings/network/MobileNetworkListController$PhoneCallStateListener;->this$0:Lcom/android/settings/network/MobileNetworkListController;

    .line 239
    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 1

    .line 246
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCallStateChanged state = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "MobileNetworkListCtlr"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 247
    iget-object p1, p0, Lcom/android/settings/network/MobileNetworkListController$PhoneCallStateListener;->this$0:Lcom/android/settings/network/MobileNetworkListController;

    iget-object p1, p1, Lcom/android/settings/network/MobileNetworkListController;->mFragment:Landroidx/fragment/app/Fragment;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 248
    iget-object p0, p0, Lcom/android/settings/network/MobileNetworkListController$PhoneCallStateListener;->this$0:Lcom/android/settings/network/MobileNetworkListController;

    iget-object p0, p0, Lcom/android/settings/network/MobileNetworkListController;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public register(Landroid/content/Context;)V
    .locals 1

    .line 253
    invoke-static {p1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/MobileNetworkListController$PhoneCallStateListener;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/16 v0, 0x20

    .line 254
    invoke-virtual {p1, p0, v0}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method public unregister()V
    .locals 2

    .line 258
    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkListController$PhoneCallStateListener;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method
