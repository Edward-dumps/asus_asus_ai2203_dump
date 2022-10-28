.class public Lcom/android/settings/fuelgauge/PowerWhiteListBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PowerWhiteListBroadcastReceiver.java"


# instance fields
.field private final mBackend:Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 33
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerWhiteListBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;->getInstance(Landroid/content/Context;)Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerWhiteListBroadcastReceiver;->mBackend:Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 40
    iput-object p1, p0, Lcom/android/settings/fuelgauge/PowerWhiteListBroadcastReceiver;->mContext:Landroid/content/Context;

    .line 41
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "name"

    .line 42
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "com.asus.settings.POWER_WHITE_LIST_UPDATE"

    .line 43
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive intent= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " , packagename = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PowerWhiteListBroadcastReceiver"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    iget-object p0, p0, Lcom/android/settings/fuelgauge/PowerWhiteListBroadcastReceiver;->mBackend:Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;

    invoke-virtual {p0, p2}, Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;->addApp(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
