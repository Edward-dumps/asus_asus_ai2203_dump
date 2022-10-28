.class Lcom/android/settings/display/AutoBrightnessPreferenceController$1;
.super Landroid/database/ContentObserver;
.source "AutoBrightnessPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/display/AutoBrightnessPreferenceController;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/display/AutoBrightnessPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/display/AutoBrightnessPreferenceController;Landroid/os/Handler;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/android/settings/display/AutoBrightnessPreferenceController$1;->this$0:Lcom/android/settings/display/AutoBrightnessPreferenceController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 76
    iget-object p1, p0, Lcom/android/settings/display/AutoBrightnessPreferenceController$1;->this$0:Lcom/android/settings/display/AutoBrightnessPreferenceController;

    invoke-static {p1}, Lcom/android/settings/display/AutoBrightnessPreferenceController;->access$000(Lcom/android/settings/display/AutoBrightnessPreferenceController;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 77
    iget-object p0, p0, Lcom/android/settings/display/AutoBrightnessPreferenceController$1;->this$0:Lcom/android/settings/display/AutoBrightnessPreferenceController;

    invoke-static {p0}, Lcom/android/settings/display/AutoBrightnessPreferenceController;->access$000(Lcom/android/settings/display/AutoBrightnessPreferenceController;)Landroidx/preference/Preference;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/display/AutoBrightnessPreferenceController;->updateState(Landroidx/preference/Preference;)V

    :cond_0
    return-void
.end method
