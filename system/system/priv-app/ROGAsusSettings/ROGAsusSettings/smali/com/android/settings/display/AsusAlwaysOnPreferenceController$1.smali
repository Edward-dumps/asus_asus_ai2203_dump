.class Lcom/android/settings/display/AsusAlwaysOnPreferenceController$1;
.super Landroid/content/BroadcastReceiver;
.source "AsusAlwaysOnPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/display/AsusAlwaysOnPreferenceController;->onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/display/AsusAlwaysOnPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/display/AsusAlwaysOnPreferenceController;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/android/settings/display/AsusAlwaysOnPreferenceController$1;->this$0:Lcom/android/settings/display/AsusAlwaysOnPreferenceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 179
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "AlwaysOn"

    const/4 v0, -0x1

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 180
    iget-object p2, p0, Lcom/android/settings/display/AsusAlwaysOnPreferenceController$1;->this$0:Lcom/android/settings/display/AsusAlwaysOnPreferenceController;

    invoke-static {p2}, Lcom/android/settings/display/AsusAlwaysOnPreferenceController;->access$000(Lcom/android/settings/display/AsusAlwaysOnPreferenceController;)Lcom/android/settings/widget/PrimarySwitchPreference;

    move-result-object p2

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    if-ne v0, p1, :cond_0

    .line 182
    iget-object p1, p0, Lcom/android/settings/display/AsusAlwaysOnPreferenceController$1;->this$0:Lcom/android/settings/display/AsusAlwaysOnPreferenceController;

    invoke-static {p1, p2}, Lcom/android/settings/display/AsusAlwaysOnPreferenceController;->access$102(Lcom/android/settings/display/AsusAlwaysOnPreferenceController;Z)Z

    .line 183
    iget-object p1, p0, Lcom/android/settings/display/AsusAlwaysOnPreferenceController$1;->this$0:Lcom/android/settings/display/AsusAlwaysOnPreferenceController;

    invoke-static {p1}, Lcom/android/settings/display/AsusAlwaysOnPreferenceController;->access$000(Lcom/android/settings/display/AsusAlwaysOnPreferenceController;)Lcom/android/settings/widget/PrimarySwitchPreference;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/display/AsusAlwaysOnPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 184
    iget-object p1, p0, Lcom/android/settings/display/AsusAlwaysOnPreferenceController$1;->this$0:Lcom/android/settings/display/AsusAlwaysOnPreferenceController;

    invoke-static {p1}, Lcom/android/settings/display/AsusAlwaysOnPreferenceController;->access$000(Lcom/android/settings/display/AsusAlwaysOnPreferenceController;)Lcom/android/settings/widget/PrimarySwitchPreference;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    .line 185
    iget-object p0, p0, Lcom/android/settings/display/AsusAlwaysOnPreferenceController$1;->this$0:Lcom/android/settings/display/AsusAlwaysOnPreferenceController;

    invoke-static {p0}, Lcom/android/settings/display/AsusAlwaysOnPreferenceController;->access$000(Lcom/android/settings/display/AsusAlwaysOnPreferenceController;)Lcom/android/settings/widget/PrimarySwitchPreference;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/settings/widget/PrimarySwitchPreference;->setSwitchEnabled(Z)V

    goto :goto_0

    .line 187
    :cond_0
    iget-object p1, p0, Lcom/android/settings/display/AsusAlwaysOnPreferenceController$1;->this$0:Lcom/android/settings/display/AsusAlwaysOnPreferenceController;

    invoke-static {p1}, Lcom/android/settings/display/AsusAlwaysOnPreferenceController;->access$000(Lcom/android/settings/display/AsusAlwaysOnPreferenceController;)Lcom/android/settings/widget/PrimarySwitchPreference;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/settings/display/AsusAlwaysOnPreferenceController$1;->this$0:Lcom/android/settings/display/AsusAlwaysOnPreferenceController;

    invoke-static {v1}, Lcom/android/settings/display/AsusAlwaysOnPreferenceController;->access$200(Lcom/android/settings/display/AsusAlwaysOnPreferenceController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->settings_enable_alwayson_title_off:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/display/AsusAlwaysOnPreferenceController$1;->this$0:Lcom/android/settings/display/AsusAlwaysOnPreferenceController;

    .line 188
    invoke-static {v1}, Lcom/android/settings/display/AsusAlwaysOnPreferenceController;->access$400(Lcom/android/settings/display/AsusAlwaysOnPreferenceController;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->asus_system_mode_managed:I

    new-array p2, p2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/settings/display/AsusAlwaysOnPreferenceController$1;->this$0:Lcom/android/settings/display/AsusAlwaysOnPreferenceController;

    invoke-static {v3}, Lcom/android/settings/display/AsusAlwaysOnPreferenceController;->access$300(Lcom/android/settings/display/AsusAlwaysOnPreferenceController;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->getSystemModeName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, p2, v4

    invoke-virtual {v1, v2, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 187
    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 189
    iget-object p1, p0, Lcom/android/settings/display/AsusAlwaysOnPreferenceController$1;->this$0:Lcom/android/settings/display/AsusAlwaysOnPreferenceController;

    invoke-static {p1}, Lcom/android/settings/display/AsusAlwaysOnPreferenceController;->access$000(Lcom/android/settings/display/AsusAlwaysOnPreferenceController;)Lcom/android/settings/widget/PrimarySwitchPreference;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    .line 190
    iget-object p0, p0, Lcom/android/settings/display/AsusAlwaysOnPreferenceController$1;->this$0:Lcom/android/settings/display/AsusAlwaysOnPreferenceController;

    invoke-static {p0}, Lcom/android/settings/display/AsusAlwaysOnPreferenceController;->access$000(Lcom/android/settings/display/AsusAlwaysOnPreferenceController;)Lcom/android/settings/widget/PrimarySwitchPreference;

    move-result-object p0

    invoke-virtual {p0, v4}, Lcom/android/settings/widget/PrimarySwitchPreference;->setSwitchEnabled(Z)V

    :cond_1
    :goto_0
    return-void
.end method
