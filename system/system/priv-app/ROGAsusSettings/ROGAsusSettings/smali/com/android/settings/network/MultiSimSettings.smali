.class public Lcom/android/settings/network/MultiSimSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "MultiSimSettings.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 42
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "MultiSimSettings"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x2ea

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 37
    sget p0, Lcom/android/settings/R$xml;->multi_sim_settings:I

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 48
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 51
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    const-string v0, "MultiSimSettings"

    if-eqz p1, :cond_0

    .line 52
    invoke-virtual {p1}, Landroid/app/ActivityManager;->getLockTaskModeState()I

    move-result p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    const-string p1, "onCreate(): screen pinning , display message to user"

    .line 53
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->asus_screen_pinning_not_support_description:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 55
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    goto :goto_0

    .line 57
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const/4 v1, 0x0

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {p1, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "asus_who_call_teleservice"

    const-string v2, "Settings"

    .line 58
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.MultiSimSettings"

    .line 59
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate(): startActivity on Phone for intent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " when CallFeaturesSetting is not on top"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "MultiSimSettings"

    const-string v1, "onDestroy()"

    .line 75
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 2

    const-string v0, "MultiSimSettings"

    const-string v1, "onPause()"

    .line 68
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    .line 70
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void
.end method
