.class public Lcom/android/settings/asusadvancedsettings/AsusDoubleTapSuggestionActivity;
.super Landroid/app/Activity;
.source "AsusDoubleTapSuggestionActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static isSuggestionComplete(Landroid/content/Context;)Z
    .locals 3

    .line 50
    invoke-static {}, Lcom/android/settings/Utils;->isZenfone9()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isRog6()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 52
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 54
    new-instance v0, Landroid/content/Intent;

    const-string v2, "asus.intent.action.BACKTAP_SETTINGS"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.asus.asusbacktap"

    .line 55
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x0

    .line 57
    invoke-virtual {p0, v0, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    return v1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 36
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 39
    new-instance v0, Landroid/content/Intent;

    const-string v1, "asus.intent.action.BACKTAP_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.asus.asusbacktap"

    .line 40
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    .line 42
    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 43
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 45
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
