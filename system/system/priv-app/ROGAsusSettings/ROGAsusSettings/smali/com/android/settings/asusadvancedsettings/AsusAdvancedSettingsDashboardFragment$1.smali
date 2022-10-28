.class Lcom/android/settings/asusadvancedsettings/AsusAdvancedSettingsDashboardFragment$1;
.super Lcom/android/settings/gestures/OneHandedSettings$AppBarStateChangeListener;
.source "AsusAdvancedSettingsDashboardFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/asusadvancedsettings/AsusAdvancedSettingsDashboardFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/asusadvancedsettings/AsusAdvancedSettingsDashboardFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/asusadvancedsettings/AsusAdvancedSettingsDashboardFragment;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/android/settings/asusadvancedsettings/AsusAdvancedSettingsDashboardFragment$1;->this$0:Lcom/android/settings/asusadvancedsettings/AsusAdvancedSettingsDashboardFragment;

    invoke-direct {p0}, Lcom/android/settings/gestures/OneHandedSettings$AppBarStateChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(Lcom/google/android/material/appbar/AppBarLayout;Lcom/android/settings/gestures/OneHandedSettings$AppBarStateChangeListener$State;)V
    .locals 0

    .line 128
    iget-object p0, p0, Lcom/android/settings/asusadvancedsettings/AsusAdvancedSettingsDashboardFragment$1;->this$0:Lcom/android/settings/asusadvancedsettings/AsusAdvancedSettingsDashboardFragment;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/settings/asusadvancedsettings/AsusAdvancedSettingsDashboardFragment;->access$002(Lcom/android/settings/asusadvancedsettings/AsusAdvancedSettingsDashboardFragment;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
