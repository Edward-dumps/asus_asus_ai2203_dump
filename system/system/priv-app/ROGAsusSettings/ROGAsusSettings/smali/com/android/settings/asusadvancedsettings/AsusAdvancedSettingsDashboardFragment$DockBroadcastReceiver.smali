.class public Lcom/android/settings/asusadvancedsettings/AsusAdvancedSettingsDashboardFragment$DockBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AsusAdvancedSettingsDashboardFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/asusadvancedsettings/AsusAdvancedSettingsDashboardFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DockBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/asusadvancedsettings/AsusAdvancedSettingsDashboardFragment;


# direct methods
.method public constructor <init>(Lcom/android/settings/asusadvancedsettings/AsusAdvancedSettingsDashboardFragment;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/android/settings/asusadvancedsettings/AsusAdvancedSettingsDashboardFragment$DockBroadcastReceiver;->this$0:Lcom/android/settings/asusadvancedsettings/AsusAdvancedSettingsDashboardFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 155
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    const-string v0, "android.intent.extra.DOCK_STATE"

    .line 156
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/16 p2, 0x1a

    if-eq p1, p2, :cond_0

    if-nez p1, :cond_1

    .line 159
    :cond_0
    iget-object p0, p0, Lcom/android/settings/asusadvancedsettings/AsusAdvancedSettingsDashboardFragment$DockBroadcastReceiver;->this$0:Lcom/android/settings/asusadvancedsettings/AsusAdvancedSettingsDashboardFragment;

    invoke-static {p0}, Lcom/android/settings/asusadvancedsettings/AsusAdvancedSettingsDashboardFragment;->access$100(Lcom/android/settings/asusadvancedsettings/AsusAdvancedSettingsDashboardFragment;)V

    :cond_1
    return-void
.end method
