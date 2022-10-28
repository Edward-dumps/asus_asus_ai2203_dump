.class public Lcom/android/settings/network/NetworkProviderSettings$FirstWifiEntryPreference;
.super Lcom/android/settings/wifi/ConnectedWifiEntryPreference;
.source "NetworkProviderSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/NetworkProviderSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FirstWifiEntryPreference"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/network/NetworkProviderSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/network/NetworkProviderSettings;Landroid/content/Context;Lcom/android/wifitrackerlib/WifiEntry;Landroidx/fragment/app/Fragment;)V
    .locals 0

    .line 1476
    iput-object p1, p0, Lcom/android/settings/network/NetworkProviderSettings$FirstWifiEntryPreference;->this$0:Lcom/android/settings/network/NetworkProviderSettings;

    .line 1477
    invoke-direct {p0, p2, p3, p4}, Lcom/android/settings/wifi/ConnectedWifiEntryPreference;-><init>(Landroid/content/Context;Lcom/android/wifitrackerlib/WifiEntry;Landroidx/fragment/app/Fragment;)V

    return-void
.end method
