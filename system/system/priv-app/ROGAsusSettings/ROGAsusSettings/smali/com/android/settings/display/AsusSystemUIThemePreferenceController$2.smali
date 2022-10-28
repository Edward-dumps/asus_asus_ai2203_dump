.class Lcom/android/settings/display/AsusSystemUIThemePreferenceController$2;
.super Landroid/content/BroadcastReceiver;
.source "AsusSystemUIThemePreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/display/AsusSystemUIThemePreferenceController;->onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/display/AsusSystemUIThemePreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/display/AsusSystemUIThemePreferenceController;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/android/settings/display/AsusSystemUIThemePreferenceController$2;->this$0:Lcom/android/settings/display/AsusSystemUIThemePreferenceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 129
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "Theme"

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 130
    iget-object p2, p0, Lcom/android/settings/display/AsusSystemUIThemePreferenceController$2;->this$0:Lcom/android/settings/display/AsusSystemUIThemePreferenceController;

    invoke-static {p2}, Lcom/android/settings/display/AsusSystemUIThemePreferenceController;->access$000(Lcom/android/settings/display/AsusSystemUIThemePreferenceController;)Lcom/android/settings/widget/AsusSystemUIThemePreference;

    move-result-object p2

    if-eqz p2, :cond_1

    const/4 p2, 0x2

    const/4 v1, 0x1

    if-ne p2, p1, :cond_0

    .line 132
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/android/settings/display/AsusSystemUIThemePreferenceController$2;->this$0:Lcom/android/settings/display/AsusSystemUIThemePreferenceController;

    invoke-static {p2}, Lcom/android/settings/display/AsusSystemUIThemePreferenceController;->access$100(Lcom/android/settings/display/AsusSystemUIThemePreferenceController;)Landroid/content/Context;

    move-result-object p2

    sget v2, Lcom/android/settings/R$string;->asus_dark_ui_summary_on:I

    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, ""

    aput-object v4, v3, v0

    invoke-virtual {p2, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/settings/display/AsusSystemUIThemePreferenceController$2;->this$0:Lcom/android/settings/display/AsusSystemUIThemePreferenceController;

    .line 133
    invoke-static {p2}, Lcom/android/settings/display/AsusSystemUIThemePreferenceController;->access$300(Lcom/android/settings/display/AsusSystemUIThemePreferenceController;)Landroid/content/Context;

    move-result-object p2

    sget v2, Lcom/android/settings/R$string;->asus_system_mode_managed:I

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/settings/display/AsusSystemUIThemePreferenceController$2;->this$0:Lcom/android/settings/display/AsusSystemUIThemePreferenceController;

    invoke-static {v3}, Lcom/android/settings/display/AsusSystemUIThemePreferenceController;->access$200(Lcom/android/settings/display/AsusSystemUIThemePreferenceController;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->getSystemModeName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    invoke-virtual {p2, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "/"

    .line 134
    invoke-virtual {p1, p2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 135
    iget-object p0, p0, Lcom/android/settings/display/AsusSystemUIThemePreferenceController$2;->this$0:Lcom/android/settings/display/AsusSystemUIThemePreferenceController;

    invoke-static {p0}, Lcom/android/settings/display/AsusSystemUIThemePreferenceController;->access$000(Lcom/android/settings/display/AsusSystemUIThemePreferenceController;)Lcom/android/settings/widget/AsusSystemUIThemePreference;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 137
    :cond_0
    iget-object p1, p0, Lcom/android/settings/display/AsusSystemUIThemePreferenceController$2;->this$0:Lcom/android/settings/display/AsusSystemUIThemePreferenceController;

    invoke-static {p1, v1}, Lcom/android/settings/display/AsusSystemUIThemePreferenceController;->access$402(Lcom/android/settings/display/AsusSystemUIThemePreferenceController;Z)Z

    .line 138
    iget-object p1, p0, Lcom/android/settings/display/AsusSystemUIThemePreferenceController$2;->this$0:Lcom/android/settings/display/AsusSystemUIThemePreferenceController;

    invoke-static {p1}, Lcom/android/settings/display/AsusSystemUIThemePreferenceController;->access$000(Lcom/android/settings/display/AsusSystemUIThemePreferenceController;)Lcom/android/settings/widget/AsusSystemUIThemePreference;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/display/AsusSystemUIThemePreferenceController$2;->this$0:Lcom/android/settings/display/AsusSystemUIThemePreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/display/AsusSystemUIThemePreferenceController;->getSummary()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method
