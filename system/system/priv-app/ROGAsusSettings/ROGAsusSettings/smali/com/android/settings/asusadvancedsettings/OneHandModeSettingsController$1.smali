.class Lcom/android/settings/asusadvancedsettings/OneHandModeSettingsController$1;
.super Landroid/database/ContentObserver;
.source "OneHandModeSettingsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/asusadvancedsettings/OneHandModeSettingsController;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/asusadvancedsettings/OneHandModeSettingsController;


# direct methods
.method constructor <init>(Lcom/android/settings/asusadvancedsettings/OneHandModeSettingsController;Landroid/os/Handler;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/android/settings/asusadvancedsettings/OneHandModeSettingsController$1;->this$0:Lcom/android/settings/asusadvancedsettings/OneHandModeSettingsController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 106
    iget-object p1, p0, Lcom/android/settings/asusadvancedsettings/OneHandModeSettingsController$1;->this$0:Lcom/android/settings/asusadvancedsettings/OneHandModeSettingsController;

    invoke-static {p1}, Lcom/android/settings/asusadvancedsettings/OneHandModeSettingsController;->access$000(Lcom/android/settings/asusadvancedsettings/OneHandModeSettingsController;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 107
    iget-object p0, p0, Lcom/android/settings/asusadvancedsettings/OneHandModeSettingsController$1;->this$0:Lcom/android/settings/asusadvancedsettings/OneHandModeSettingsController;

    invoke-static {p0}, Lcom/android/settings/asusadvancedsettings/OneHandModeSettingsController;->access$000(Lcom/android/settings/asusadvancedsettings/OneHandModeSettingsController;)Landroidx/preference/Preference;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->updateState(Landroidx/preference/Preference;)V

    :cond_0
    return-void
.end method
