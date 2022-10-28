.class Lcom/android/settings/display/BrightnessBoosterPreferenceController$BrightnessBoosterSettingsObserver;
.super Landroid/database/ContentObserver;
.source "BrightnessBoosterPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/display/BrightnessBoosterPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BrightnessBoosterSettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/display/BrightnessBoosterPreferenceController;


# direct methods
.method public constructor <init>(Lcom/android/settings/display/BrightnessBoosterPreferenceController;Landroid/os/Handler;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/android/settings/display/BrightnessBoosterPreferenceController$BrightnessBoosterSettingsObserver;->this$0:Lcom/android/settings/display/BrightnessBoosterPreferenceController;

    .line 148
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 153
    iget-object p1, p0, Lcom/android/settings/display/BrightnessBoosterPreferenceController$BrightnessBoosterSettingsObserver;->this$0:Lcom/android/settings/display/BrightnessBoosterPreferenceController;

    invoke-static {p1}, Lcom/android/settings/display/BrightnessBoosterPreferenceController;->access$200(Lcom/android/settings/display/BrightnessBoosterPreferenceController;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 154
    iget-object p0, p0, Lcom/android/settings/display/BrightnessBoosterPreferenceController$BrightnessBoosterSettingsObserver;->this$0:Lcom/android/settings/display/BrightnessBoosterPreferenceController;

    invoke-static {p0}, Lcom/android/settings/display/BrightnessBoosterPreferenceController;->access$200(Lcom/android/settings/display/BrightnessBoosterPreferenceController;)Landroidx/preference/Preference;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/display/BrightnessBoosterPreferenceController;->updateState(Landroidx/preference/Preference;)V

    :cond_0
    return-void
.end method
