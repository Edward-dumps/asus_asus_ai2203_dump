.class public Lcom/android/settings/SettingsPreferenceFragment$DockBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SettingsPreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SettingsPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DockBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SettingsPreferenceFragment;


# direct methods
.method public constructor <init>(Lcom/android/settings/SettingsPreferenceFragment;)V
    .locals 0

    .line 899
    iput-object p1, p0, Lcom/android/settings/SettingsPreferenceFragment$DockBroadcastReceiver;->this$0:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 902
    iget-object p0, p0, Lcom/android/settings/SettingsPreferenceFragment$DockBroadcastReceiver;->this$0:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->tryCatchDockingRefresh()V

    return-void
.end method
