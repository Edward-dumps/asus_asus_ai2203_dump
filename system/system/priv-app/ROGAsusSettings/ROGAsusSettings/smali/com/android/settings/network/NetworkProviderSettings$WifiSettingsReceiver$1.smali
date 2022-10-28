.class Lcom/android/settings/network/NetworkProviderSettings$WifiSettingsReceiver$1;
.super Landroid/net/ConnectivityManager$OnStartTetheringCallback;
.source "NetworkProviderSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/network/NetworkProviderSettings$WifiSettingsReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/network/NetworkProviderSettings$WifiSettingsReceiver;


# direct methods
.method constructor <init>(Lcom/android/settings/network/NetworkProviderSettings$WifiSettingsReceiver;)V
    .locals 0

    .line 1531
    iput-object p1, p0, Lcom/android/settings/network/NetworkProviderSettings$WifiSettingsReceiver$1;->this$1:Lcom/android/settings/network/NetworkProviderSettings$WifiSettingsReceiver;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$OnStartTetheringCallback;-><init>()V

    return-void
.end method
