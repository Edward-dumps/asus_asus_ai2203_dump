.class Lcom/android/settings/display/AsusSystemUIThemePreferenceController$1;
.super Landroid/content/BroadcastReceiver;
.source "AsusSystemUIThemePreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/display/AsusSystemUIThemePreferenceController;
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

    .line 65
    iput-object p1, p0, Lcom/android/settings/display/AsusSystemUIThemePreferenceController$1;->this$0:Lcom/android/settings/display/AsusSystemUIThemePreferenceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 68
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 69
    sget-object p2, Landroid/app/UiModeManager;->ACTION_ENTER_CAR_MODE:Ljava/lang/String;

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    sget-object p2, Landroid/app/UiModeManager;->ACTION_ENTER_DESK_MODE:Ljava/lang/String;

    .line 70
    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 72
    :cond_0
    sget-object p2, Landroid/app/UiModeManager;->ACTION_EXIT_CAR_MODE:Ljava/lang/String;

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    sget-object p2, Landroid/app/UiModeManager;->ACTION_EXIT_DESK_MODE:Ljava/lang/String;

    .line 73
    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 74
    :cond_1
    iget-object p0, p0, Lcom/android/settings/display/AsusSystemUIThemePreferenceController$1;->this$0:Lcom/android/settings/display/AsusSystemUIThemePreferenceController;

    invoke-static {p0}, Lcom/android/settings/display/AsusSystemUIThemePreferenceController;->access$000(Lcom/android/settings/display/AsusSystemUIThemePreferenceController;)Lcom/android/settings/widget/AsusSystemUIThemePreference;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/AsusSystemUIThemePreference;->setEnabledAppearance(Z)V

    goto :goto_1

    .line 71
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/settings/display/AsusSystemUIThemePreferenceController$1;->this$0:Lcom/android/settings/display/AsusSystemUIThemePreferenceController;

    invoke-static {p0}, Lcom/android/settings/display/AsusSystemUIThemePreferenceController;->access$000(Lcom/android/settings/display/AsusSystemUIThemePreferenceController;)Lcom/android/settings/widget/AsusSystemUIThemePreference;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/AsusSystemUIThemePreference;->setEnabledAppearance(Z)V

    :cond_3
    :goto_1
    return-void
.end method
