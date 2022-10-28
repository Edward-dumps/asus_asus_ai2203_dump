.class Lcom/android/settings/network/EthernetPreferenceController$1;
.super Ljava/lang/Object;
.source "EthernetPreferenceController.java"

# interfaces
.implements Landroid/net/EthernetManager$Listener;


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
.method public static synthetic $r8$lambda$55cuTrkB6cOHn4-BuBpr5Ha_5lI(Lcom/android/settings/network/EthernetPreferenceController$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/network/EthernetPreferenceController$1;->lambda$onAvailabilityChanged$0()V

    return-void
.end method

.method constructor <init>(Lcom/android/settings/network/EthernetPreferenceController;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/android/settings/network/EthernetPreferenceController$1;->this$0:Lcom/android/settings/network/EthernetPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onAvailabilityChanged$0()V
    .locals 1

    .line 72
    iget-object p0, p0, Lcom/android/settings/network/EthernetPreferenceController$1;->this$0:Lcom/android/settings/network/EthernetPreferenceController;

    invoke-static {p0}, Lcom/android/settings/network/EthernetPreferenceController;->access$000(Lcom/android/settings/network/EthernetPreferenceController;)Landroidx/preference/Preference;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/network/EthernetPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method


# virtual methods
.method public onAvailabilityChanged(Ljava/lang/String;Z)V
    .locals 0

    const-string p1, "EthernetPreferenceController"

    const-string p2, "EthernetManager.Listener.onAvailabilityChanged"

    .line 71
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Lcom/android/settings/network/EthernetPreferenceController$1$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/settings/network/EthernetPreferenceController$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/network/EthernetPreferenceController$1;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
