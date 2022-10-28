.class Lcom/android/settings/asusadvancedsettings/GloveModePreferenceController$1;
.super Landroid/database/ContentObserver;
.source "GloveModePreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/asusadvancedsettings/GloveModePreferenceController;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/asusadvancedsettings/GloveModePreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/asusadvancedsettings/GloveModePreferenceController;Landroid/os/Handler;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/android/settings/asusadvancedsettings/GloveModePreferenceController$1;->this$0:Lcom/android/settings/asusadvancedsettings/GloveModePreferenceController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    .line 98
    iget-object p1, p0, Lcom/android/settings/asusadvancedsettings/GloveModePreferenceController$1;->this$0:Lcom/android/settings/asusadvancedsettings/GloveModePreferenceController;

    invoke-static {p1}, Lcom/android/settings/asusadvancedsettings/GloveModePreferenceController;->access$000(Lcom/android/settings/asusadvancedsettings/GloveModePreferenceController;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 99
    iget-object p1, p0, Lcom/android/settings/asusadvancedsettings/GloveModePreferenceController$1;->this$0:Lcom/android/settings/asusadvancedsettings/GloveModePreferenceController;

    invoke-static {p1}, Lcom/android/settings/asusadvancedsettings/GloveModePreferenceController;->access$000(Lcom/android/settings/asusadvancedsettings/GloveModePreferenceController;)Landroidx/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/asusadvancedsettings/GloveModePreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 100
    iget-object p0, p0, Lcom/android/settings/asusadvancedsettings/GloveModePreferenceController$1;->this$0:Lcom/android/settings/asusadvancedsettings/GloveModePreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/asusadvancedsettings/GloveModePreferenceController;->isChecked()Z

    move-result p0

    invoke-static {p0}, Lcom/android/settings/asusadvancedsettings/GloveModePreferenceController;->setGloveModeEnable(I)V

    :cond_0
    return-void
.end method
