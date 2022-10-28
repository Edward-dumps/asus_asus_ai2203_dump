.class Lcom/android/settings/asusadvancedsettings/OneHandModePreferenceFragment$1;
.super Landroid/database/ContentObserver;
.source "OneHandModePreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/asusadvancedsettings/OneHandModePreferenceFragment;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/asusadvancedsettings/OneHandModePreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/asusadvancedsettings/OneHandModePreferenceFragment;Landroid/os/Handler;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/android/settings/asusadvancedsettings/OneHandModePreferenceFragment$1;->this$0:Lcom/android/settings/asusadvancedsettings/OneHandModePreferenceFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 104
    iget-object p1, p0, Lcom/android/settings/asusadvancedsettings/OneHandModePreferenceFragment$1;->this$0:Lcom/android/settings/asusadvancedsettings/OneHandModePreferenceFragment;

    invoke-static {p1}, Lcom/android/settings/asusadvancedsettings/OneHandModePreferenceFragment;->access$000(Lcom/android/settings/asusadvancedsettings/OneHandModePreferenceFragment;)Lcom/android/settings/widget/SettingsMainSwitchBar;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 105
    iget-object p1, p0, Lcom/android/settings/asusadvancedsettings/OneHandModePreferenceFragment$1;->this$0:Lcom/android/settings/asusadvancedsettings/OneHandModePreferenceFragment;

    invoke-static {p1}, Lcom/android/settings/asusadvancedsettings/OneHandModePreferenceFragment;->access$000(Lcom/android/settings/asusadvancedsettings/OneHandModePreferenceFragment;)Lcom/android/settings/widget/SettingsMainSwitchBar;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/asusadvancedsettings/OneHandModePreferenceFragment$1;->this$0:Lcom/android/settings/asusadvancedsettings/OneHandModePreferenceFragment;

    invoke-static {p0}, Lcom/android/settings/asusadvancedsettings/OneHandModePreferenceFragment;->access$100(Lcom/android/settings/asusadvancedsettings/OneHandModePreferenceFragment;)Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    :cond_0
    return-void
.end method
